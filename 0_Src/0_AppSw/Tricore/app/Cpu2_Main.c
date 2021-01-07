/*
 * @file Cpu2_Main.c
 * @date 26.11.2020
 * @version v0.1
 * @author Siedler Lorenz
 *
 * @brief Initialize a Timer, which increments a value every 100 ms. If the Core 2
 * which is a SPI Slave receives a Message via QSPI and the Message is correct,
 * the Slave transmit the current value of the Timer.
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "SysSe/Bsp/Bsp.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <Qspi/SpiSlave/IfxQspi_SpiSlave.h>
#include <IfxGtm_reg.h>
#include <IfxGtm_Tom_Timer.h>

#include <main.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define UPDATE_RATE_MS 100 //every 100ms
#define MS_SCALE 1000

#define SPI_BUFFER_SIZE 8

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
IfxQspi_SpiSlave spi_slave;

uint8 spiTxBuffer_C2[SPI_BUFFER_SIZE] = {1, 2, 3, 4, 5, 6, 7, 8};
uint8 spiRxBuffer_C2[SPI_BUFFER_SIZE] = {0, 0, 0, 0, 0, 0, 0, 0};

uint64 timer;

typedef struct
{
  struct
  {
    float32 gtmFreq;
    float32 gtmGclkFreq;
  }info;
  struct
  {
    IfxGtm_Tom_Timer timerOneMs;
  }drivers;
  struct
  {
    uint32 slotOneMs;
  }isrCounter;
}App_GtmTomTimer;

App_GtmTomTimer GtmTomTimer;
IfxCpu_mutexLock tim_ms_mutex;

/******************************************************************************/

/******************************************************************************/
/*------------------------Inline/Private Function Prototypes------------------*/
IFX_INTERRUPT(qspi2TxISR, 0, IFX_INTPRIO_QSPI2_TX)
{
    IfxQspi_SpiSlave_isrTransmit(&spi_slave);
}
IFX_INTERRUPT(qspi2RxISR, 0, IFX_INTPRIO_QSPI2_RX)
{
    IfxQspi_SpiSlave_isrReceive(&spi_slave);
}
IFX_INTERRUPT(qspi2ErISR, 0, IFX_INTPRIO_QSPI2_ER)
{
    IfxQspi_SpiSlave_isrError(&spi_slave);
}

static void timer_enable_clocks(void)
{
  /** - GTM clocks */
  Ifx_GTM *gtm = &MODULE_GTM;
  GtmTomTimer.info.gtmFreq = IfxGtm_Cmu_getModuleFrequency(gtm);
  IfxGtm_enable(gtm);

  /* Set the global clock frequencies */
  IfxGtm_Cmu_setGclkFrequency(gtm, GtmTomTimer.info.gtmFreq);
  GtmTomTimer.info.gtmGclkFreq = IfxGtm_Cmu_getGclkFrequency(gtm);

  IfxGtm_Cmu_enableClocks(gtm, IFXGTM_CMU_CLKEN_FXCLK | IFXGTM_CMU_CLKEN_CLK0);
}

static void timer_init_struct(IfxGtm_Tom_Timer_Config *timer_struct)
{
  IfxGtm_Tom_Timer_initConfig(timer_struct, &MODULE_GTM);
  timer_struct->base.frequency       = 1000; //1 ms
  timer_struct->base.isrPriority     = ISR_PRIORITY(INTERRUPT_TIMER_1MS);
  timer_struct->base.isrProvider     = ISR_PROVIDER(INTERRUPT_TIMER_1MS);
  timer_struct->base.minResolution   = (1.0 / timer_struct->base.frequency) / 1000;
  timer_struct->base.trigger.enabled = FALSE;
  timer_struct->tom                  = IfxGtm_Tom_2;
  timer_struct->timerChannel         = IfxGtm_Tom_Ch_3;
  timer_struct->clock                = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk1;
  IfxGtm_Tom_Timer_init(&GtmTomTimer.drivers.timerOneMs, timer_struct);

  IfxGtm_Tom_Timer_run(&GtmTomTimer.drivers.timerOneMs);
}

IFX_INTERRUPT(ISR_TIM_MS, 0, ISR_PRIORITY_TIMER_1MS);

void ISR_TIM_MS(void)
{
  IfxGtm_Tom_Timer_acknowledgeTimerIrq(&GtmTomTimer.drivers.timerOneMs);
  GtmTomTimer.isrCounter.slotOneMs++;

  if (GtmTomTimer.isrCounter.slotOneMs % UPDATE_RATE_MS == 0)
  {
    /* UPDATE_RATE_MS declares how often various debug-values are retrieved */
	timer += 1;
    IfxCpu_acquireMutex(&tim_ms_mutex);
  }
}
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \brief Main CPU2 entry point after CPU0 boot-up.
 */
void core2_main(void)
{
  IfxGtm_Tom_Timer_Config timer_struct;
  /*
   * !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
   * Enable the watchdog in the demo if it is required and also service the watchdog periodically
   * */
  IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
  IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());

  /* Enable the global interrupts of this CPU */
  IfxCpu_enableInterrupts();

  // create module config
  IfxQspi_SpiSlave_Config spiSlaveConfig;
  IfxQspi_SpiSlave_initModuleConfig(&spiSlaveConfig, &MODULE_QSPI2);

  // set the maximum baudrate
  spiSlaveConfig.base.maximumBaudrate  = 500000;

  // ISR priorities and interrupt target
  spiSlaveConfig.base.txPriority       = IFX_INTPRIO_QSPI2_TX;
  spiSlaveConfig.base.rxPriority       = IFX_INTPRIO_QSPI2_RX;
  spiSlaveConfig.base.erPriority       = IFX_INTPRIO_QSPI2_ER;
  spiSlaveConfig.base.isrProvider      = IfxCpu_Irq_getTos(IfxCpu_getCoreIndex());

  // pin configuration
  const IfxQspi_SpiSlave_Pins slavePins = {
       &IfxQspi2_SCLKA_P15_3_IN, IfxPort_InputMode_pullDown,   // SCLK Pin
       &IfxQspi2_MTSRA_P15_5_IN, IfxPort_InputMode_pullDown,   // MTSR Pin //Slave in
       &IfxQspi2_MRST_P15_4_OUT, IfxPort_OutputMode_pushPull,  // MRST Pin //Slave out
       &IfxQspi2_SLSIA_P15_2_IN, IfxPort_InputMode_pullDown,   // SLSI Pin
       IfxPort_PadDriver_cmosAutomotiveSpeed3 // pad driver mode
  };
  spiSlaveConfig.pins = &slavePins;

  // initialize module
  IfxQspi_SpiSlave_initModule(&spi_slave, &spiSlaveConfig);

  /** - Background loop */
  /* enable clock sources for GTM module */
  timer_enable_clocks();

  /* initialize the Timer interface with settings defined by "timer_struct" */
  timer_init_struct(&timer_struct);

  IfxCpu_emitEvent(&event);
  IfxCpu_waitEvent(&event, syncTimeout_ms);
  while (TRUE){

	    int i = 0;
		/* Waits until the channel is clear to transmit */
	    while (IfxQspi_SpiSlave_getStatus(&spi_slave) == SpiIf_Status_busy);

	    /* send/receive new stream */
	    IfxQspi_SpiSlave_exchange(&spi_slave, &spiTxBuffer_C2[i],&spiRxBuffer_C2[i], SPI_BUFFER_SIZE);

		/* Waits until the channel is clear to transmit */
	    while (IfxQspi_SpiSlave_getStatus(&spi_slave) == SpiIf_Status_busy);

	    /* If the received message was correct, the current value of the timer get sent back */
	    if (spiRxBuffer_C2[0] == 0x3F) {
	    	spiTxBuffer_C2[0] = timer & 0xFF;
	    	spiTxBuffer_C2[1] = (timer >> 8) & 0xFF;
	    	spiTxBuffer_C2[2] = (timer >> 16) & 0xFF;
	    	spiTxBuffer_C2[3] = (timer >> 24) & 0xFF;

		    /* send/receive new stream */
	    	IfxQspi_SpiSlave_exchange(&spi_slave, &spiTxBuffer_C2[i],&spiRxBuffer_C2[i], SPI_BUFFER_SIZE);

	    	/* Clear spiTxBuffer and spiRxBuffer */
	    	memset(&spiTxBuffer_C2, 0, SPI_BUFFER_SIZE);
	    	memset(&spiRxBuffer_C2, 0, SPI_BUFFER_SIZE);

	    } else {
		    /* send/receive new stream - send 0x00 */
	    	IfxQspi_SpiSlave_exchange(&spi_slave, &spiTxBuffer_C2[i], NULL_PTR, SPI_BUFFER_SIZE);
	    }
  };
}
