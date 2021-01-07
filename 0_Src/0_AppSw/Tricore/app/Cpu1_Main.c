/*
 * @file Cpu1_Main.c
 * @date 26.11.2020
 * @version v0.1
 * @author Siedler Lorenz
 *
 * @brief This core handles the communication between Core 0 and Core 2. As soon
 * as the Core gets signaled by Core 0, it sends a command to Core 2 via QSPI.
 * It waits until Core 2 transmits the Timer value back. Afterwards the value
 * will be stored into a buffer for Core 0.
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "SysSe/Bsp/Bsp.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <Qspi/SpiMaster/IfxQspi_SpiMaster.h>

#include <main.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define SPI_BUFFER_SIZE 8

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

IfxQspi_SpiMaster spi_master;
IfxQspi_SpiMaster_Channel spiChannel_master;

/* Declare global transmit and receive buffers for the data transfers */
uint8 spiTxBuffer_C1[SPI_BUFFER_SIZE] = {1, 2, 3, 4, 5, 6, 7, 8};
uint8 spiRxBuffer_C1[SPI_BUFFER_SIZE] = {0, 0, 0, 0, 0, 0, 0, 0};

/******************************************************************************/
/*------------------------Inline/Private Function Prototypes------------------*/
/******************************************************************************/

IFX_INTERRUPT(qspi1TxISR, 0, IFX_INTPRIO_QSPI1_TX)
{
    IfxQspi_SpiMaster_isrTransmit(&spi_master);
}
IFX_INTERRUPT(qspi1RxISR, 0, IFX_INTPRIO_QSPI1_RX)
{
    IfxQspi_SpiMaster_isrReceive(&spi_master);
}
IFX_INTERRUPT(qspi1ErISR, 0, IFX_INTPRIO_QSPI1_ER)
{
    IfxQspi_SpiMaster_isrError(&spi_master);
}

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \brief Main CPU1 entry point after CPU0 boot-up.
 */
int core1_main(void)
{
  /*
   * !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
   * Enable the watchdog in the demo if it is required and also service the watchdog periodically
   * */
  IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
  IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());

  /* Enable the global interrupts of this CPU */
  IfxCpu_enableInterrupts();

  // create module config
  IfxQspi_SpiMaster_Config spiMasterConfig;
  IfxQspi_SpiMaster_initModuleConfig(&spiMasterConfig, &MODULE_QSPI1);

  // set the desired mode and maximum baudrate
  spiMasterConfig.base.mode             = SpiIf_Mode_master;
  spiMasterConfig.base.maximumBaudrate  = 10000000;

  // ISR priorities and interrupt target
  spiMasterConfig.base.txPriority       = IFX_INTPRIO_QSPI1_TX;
  spiMasterConfig.base.rxPriority       = IFX_INTPRIO_QSPI1_RX;
  spiMasterConfig.base.erPriority       = IFX_INTPRIO_QSPI1_ER;
  spiMasterConfig.base.isrProvider      = IfxCpu_Irq_getTos(IfxCpu_getCoreIndex());

  // pin configuration
  const IfxQspi_SpiMaster_Pins pins = {
  &IfxQspi1_SCLK_P10_2_OUT, IfxPort_OutputMode_pushPull, // SCLK
  &IfxQspi1_MTSR_P10_3_OUT, IfxPort_OutputMode_pushPull, // MTSR
  &IfxQspi1_MRSTA_P10_1_IN, IfxPort_InputMode_pullDown,  // MRST
  IfxPort_PadDriver_cmosAutomotiveSpeed3 // pad driver mode
  };
  spiMasterConfig.pins = &pins;

  // initialize module
  IfxQspi_SpiMaster_initModule(&spi_master, &spiMasterConfig);


  // create channel config
  IfxQspi_SpiMaster_ChannelConfig spiMasterChannelConfig;
  IfxQspi_SpiMaster_initChannelConfig(&spiMasterChannelConfig, &spi_master);

  // set the baudrate for this channel
  spiMasterChannelConfig.base.baudrate = 5000000;

  // select pin configuration
  const IfxQspi_SpiMaster_Output slsOutput = {
        &IfxQspi1_SLSO9_P10_5_OUT,
        IfxPort_OutputMode_pushPull,
        IfxPort_PadDriver_cmosAutomotiveSpeed1
  };
  spiMasterChannelConfig.sls.output = (IfxQspi_SpiMaster_Output)slsOutput;

  // initialize channel
  IfxQspi_SpiMaster_initChannel(&spiChannel_master, &spiMasterChannelConfig);

  IfxCpu_emitEvent(&event);
  IfxCpu_waitEvent(&event, syncTimeout_ms);

  while (TRUE){
	/* wait until the mutex is aquired */
	if (IfxCpu_getMutexStatus(&time_command_mutex_C0_C1)) {
	  /* release the mutex */
	  IfxCpu_releaseMutex(&time_command_mutex_C0_C1);

	  int i = 0;
	  /* Waits until the channel is clear to transmit */
	  while (IfxQspi_SpiMaster_getStatus(&spiChannel_master) == SpiIf_Status_busy);

	  /* Load the spiTxBuffer */
	  spiTxBuffer_C1[0] = 0x3F;

	  /* send/receive new stream */
	  IfxQspi_SpiMaster_exchange(&spiChannel_master, &spiTxBuffer_C1[i], &spiRxBuffer_C1[i], SPI_BUFFER_SIZE);

	  /* Waits until the channel is clear to transmit */
	  while (IfxQspi_SpiMaster_getStatus(&spiChannel_master) == SpiIf_Status_busy);

	  /* send/receive new stream */
	  IfxQspi_SpiMaster_exchange(&spiChannel_master, &spiTxBuffer_C1[i], &spiRxBuffer_C1[i], SPI_BUFFER_SIZE);

	  /* Waits until the channel is clear to transmit */
	  while (IfxQspi_SpiMaster_getStatus(&spiChannel_master) == SpiIf_Status_busy);

	  /* Copy Timer Value to the shared memory */
	  memcpy(buffer_C1_C0, spiRxBuffer_C1, SPI_BUFFER_SIZE);

	  /* Aquire Mutex */
	  IfxCpu_acquireMutex(&time_command_mutex_C1_C0);
	}
	/* Clear spiTxBuffer and spiRxBuffer */
	memset(&spiTxBuffer_C1, 0, SPI_BUFFER_SIZE);
	memset(&spiRxBuffer_C1, 0, SPI_BUFFER_SIZE);

  };
}


