/*
 * @file Cpu0_Main.c
 * @date 26.11.2020
 * @version v0.1
 * @author Siedler Lorenz
 *
 * @brief This application configures the UART Interface Module #3 to 115200,8N1.
 *        Within the main-loop the UART RX-FIFO is checked if any bytes are
 *        received. If a determined start-byte '#' is received the trailing bytes
 *        are received until a dedicated end-byte '$' is received. If there is a
 *        mismatch with the start-byte an error-message is sent via the UART TX-
 *        FIFO. If the correct command is recognized Core 1 get signaled. As soon
 *        as the Core gets back the timer_value, it get transformed to a string
 *        and get transmit to the PC via UART.
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "SysSe/Bsp/Bsp.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include <main.h>
#include <aurix_tc27x_uart_app.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define LED_toggle_P33(Col_LED) IfxPort_togglePin(&MODULE_P33,Col_LED)
#define LED_on_P33(Col_LED) IfxPort_setPinHigh(&MODULE_P33,Col_LED)
#define LED_off_P33(Col_LED) IfxPort_setPinLow(&MODULE_P33,Col_LED)
#define DBG_LED 2

#define UPDATE_RATE_MS 100
#define MS_SCALE 1000

#define TX_BUFFER_SIZE 26
#define TX_TIMEOUT 10000

#define RX_BUFFER_SIZE 26
#define RX_TIMEOUT 10000

#define RX_START_BYTE 0x23 /* '#' */
#define RX_END_BYTE 0x24   /* '$' */

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
/* Event and timeout for initial core synchronization */
/* Synchonization of the Cores */
IfxCpu_syncEvent event;
uint32 syncTimeout_ms = 1000;

/* Semaphore and buffers for communication between core0 and core1 */
IfxCpu_mutexLock time_command_mutex_C0_C1;
IfxCpu_mutexLock time_command_mutex_C1_C0;
uint8 buffer_C0_C1[SM_BUFFER_SIZE_C0_C1] = {0, 0, 0, 0, 0, 0, 0, 0};
uint8 buffer_C1_C0[SM_BUFFER_SIZE_C0_C1] = {0, 0, 0, 0, 0, 0, 0, 0};

/******************************************************************************/
/*------------------------Inline/Private Function Prototypes------------------*/
/******************************************************************************/

static void uart_init_struct(_aurix_tc27x_app_uart_t *uart_struct)
{
  uart_struct->uart_baudrate.prescaler    = 1;
  uart_struct->uart_baudrate.baudrate     = 115200;
  uart_struct->uart_baudrate.oversampling = IfxAsclin_OversamplingFactor_16;
  uart_struct->uart_interrupt.txPriority    = ISR_PRIORITY_ASCLIN3_TX;
  uart_struct->uart_interrupt.rxPriority    = ISR_PRIORITY_ASCLIN3_RX;
  uart_struct->uart_interrupt.erPriority    = ISR_PRIORITY_ASCLIN3_ER;
  uart_struct->uart_interrupt.typeOfService = (IfxSrc_Tos)IfxCpu_getCoreIndex();
  uart_struct->uart_module_id = 3;
  uart_struct->uart_Pins.uart_rx_pin.uart_module_3_rxpins = P32_2_IN;
  uart_struct->uart_pinmode_rx = IfxPort_InputMode_pullUp;
  uart_struct->uart_Pins.uart_tx_pin.uart_module_3_txpins = P15_7_OUT;
  uart_struct->uart_pinmode_tx = IfxPort_OutputMode_pushPull;
}

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \brief Main entry point for CPU0  */
int core0_main (void)
{
  _aurix_tc27x_app_uart_t uart_struct;
  uint16 idx = 0;
  uint8 tx_buffer[TX_BUFFER_SIZE] = {0};
  uint8 rx_buffer[RX_BUFFER_SIZE] = {0};
  uint8 rx_error[RX_BUFFER_SIZE] = {"Wrong Start Byte\n"};
  uint16 tx_buffer_size = TX_BUFFER_SIZE-1;
  uint16 rx_buffer_size = RX_BUFFER_SIZE-1;
  sint32 rx_fifo_bytes_available = 0;

  uint8 Correct_Command[TX_BUFFER_SIZE] = {"Correct Command!\n"};
  uint8 Wrong_Command[TX_BUFFER_SIZE] = {"Wrong Command!\n"};
  uint8 String_Delimiter[2] = {'\n'};

  /*
   * !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
   * Enable the watchdog in the demo if it is required and also service the watchdog periodically
   * */
  IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
  IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());

  /* Enable the global interrupts of this CPU */
  IfxCpu_enableInterrupts();

  /* Init Debug DBG_LED and turn off */
  IfxPort_setPinMode (&MODULE_P33, 2u, IfxPort_Mode_outputPushPullGeneral);
  IfxPort_setPinPadDriver(&MODULE_P33, 2u, IfxPort_PadDriver_ttlSpeed1);
  IfxPort_setPinLow(&MODULE_P33, 2u);

  /* fill the struct "uart_struct" with the desired settings */
  uart_init_struct(&uart_struct);

  /* initialize the UART interface with settings defined by "uart_struct" */
  uart_init(&uart_struct);

  /* Synchronize the Cores */
  IfxCpu_emitEvent(&event);
  IfxCpu_waitEvent(&event, syncTimeout_ms);

  while (TRUE){
    /* check if UART-FIFO received any symbols */
    rx_fifo_bytes_available = uart_app_getread_count();
    /* if UART-FIFO has received any symbols */
    if(rx_fifo_bytes_available != 0)
    {
      /* receive one byte from UART-FIFO */
      uart_app_receive_byte(&uart_struct,&rx_buffer[0],RX_TIMEOUT);
      /* check if received byte is # otherwise jump the else-statement */
      if(rx_buffer[0] == RX_START_BYTE)
      {
        /* if start byte was correct */
        idx=0;
        do{
          /* receive other bytes until end-byte $ was received */
          /* increment index to save new byte */
          idx++;
          /* if not byte $ was send this loop would got through unprotected memory
           thus break out of the loop if end of rx buffer was reached */
          if(idx == RX_BUFFER_SIZE) break;
          /* receive other bytes until end-byte $ was received */
          uart_app_receive_byte(&uart_struct,&rx_buffer[idx],RX_TIMEOUT);
        }while((rx_buffer[idx] != RX_END_BYTE));

        if((rx_buffer[0] == RX_START_BYTE) && (rx_buffer[1] == 't') && (rx_buffer[2] == 'i') && (rx_buffer[3] == 'm') && (rx_buffer[4] == 'e') && (rx_buffer[5] == RX_END_BYTE)){
        	/* "Time" command was received */

        	/* Copy correct Message to tx_buffer */
        	memcpy(&tx_buffer[0],&Correct_Command[0],strlen((char *)&Correct_Command));
            /* Length of the String */
        	tx_buffer_size = strlen((char *)&tx_buffer);
            /* UART Transfer to PC */
    		uart_app_send_nbyte(&uart_struct,tx_buffer,(Ifx_SizeT *)&tx_buffer_size,TX_TIMEOUT);

    		/* Signaling Core 1, that the "time" command was received */
    		IfxCpu_acquireMutex(&time_command_mutex_C0_C1);

    		/* Clear tx_buffer */
            memset(&tx_buffer,0,tx_buffer_size);

        	/* Copy received Message to tx_buffer */
    		memcpy(&tx_buffer[0],&rx_buffer[0],strlen((char *)&rx_buffer));
            /* Length of the String */
    		tx_buffer_size = strlen((char *)&tx_buffer);
            /* UART Transfer to PC */
    		uart_app_send_nbyte(&uart_struct,(uint8 *)&tx_buffer,(Ifx_SizeT *)&tx_buffer_size,TX_TIMEOUT);
            /* UART Transfer to PC - String Delimiter */
    		uart_app_send_byte(&uart_struct,&String_Delimiter[0], TX_TIMEOUT);
        }
        else {     	/* Send to PC - Wrong Command */
        	/* Copy Error Message to tx_buffer */
    		memcpy(&tx_buffer[0],&Wrong_Command[0],strlen((char *)&Wrong_Command));
            /* Length of the String */
        	tx_buffer_size = strlen((char *)&tx_buffer);
            /* UART Transfer to PC */
    		uart_app_send_nbyte(&uart_struct,(uint8 *)&tx_buffer,(Ifx_SizeT *)&tx_buffer_size,TX_TIMEOUT);

        }

        /* Clear tx_buffer and rx_buffer */
        memset(&rx_buffer,0,rx_buffer_size);
        memset(&tx_buffer,0,tx_buffer_size);
      }
    	/* Send to PC - Wrong Start Byte */
      else{
    	/* Copy Error Message to tx_buffer */
  		memcpy(&tx_buffer[0],&rx_error[0],strlen((char *)&rx_error));
        /* Length of the String */
      	tx_buffer_size = strlen((char *)&tx_buffer);
        /* UART Transfer to PC */
  		uart_app_send_nbyte(&uart_struct,(uint8 *)&tx_buffer,(Ifx_SizeT *)&tx_buffer_size,TX_TIMEOUT);

        /* Clear tx_buffer and rx_buffer */
        memset(&rx_buffer,0,rx_buffer_size);
        memset(&tx_buffer,0,tx_buffer_size);
      }
    }
    /*
    if (IfxCpu_getMutexStatus(&tim_ms_mutex)) {
      IfxCpu_releaseMutex(&tim_ms_mutex);
      LED_toggle_P33(DBG_LED);
    }
	*/

    /* Data Transfer from Core 1 */
    if (IfxCpu_getMutexStatus(&time_command_mutex_C1_C0)) {
      uint64 time = (buffer_C1_C0[3] << 24) | (buffer_C1_C0[2] << 16) | (buffer_C1_C0[1] << 8) | (buffer_C1_C0[0]);

      /* Convert Data to String */
      sprintf((char *)tx_buffer, "CPU Timer: %.1f s\n", (float)time / 10.0F);
      /* Length of the String */
      tx_buffer_size = strlen((char *)&tx_buffer);
      /* UART Transfer to PC */
      uart_app_send_nbyte(&uart_struct, (uint8 *)&tx_buffer, (Ifx_SizeT *)&tx_buffer_size, TX_TIMEOUT);
      /* Clear tx_buffer */
      memset(&tx_buffer, 0, tx_buffer_size);
      /* Release Mutex */
      IfxCpu_releaseMutex(&time_command_mutex_C1_C0);
    }
  }
}
