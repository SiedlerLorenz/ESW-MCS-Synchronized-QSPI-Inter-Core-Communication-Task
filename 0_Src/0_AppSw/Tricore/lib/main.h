/*
 * main.h
 *
 *  Created on: 27.03.2019
 *      Author: roman
 */

#ifndef _MAIN_H_
#define _MAIN_H_

#include <Ifx_Types.h>
#include <Dma/Dma/IfxDma_Dma.h>
#include <Cpu/Std/IfxCpu.h>
#include <ConfigurationIsr.h>


#include <string.h>
#include <stdbool.h>
#include <stdint.h>
#include <ctype.h>

extern IfxCpu_syncEvent event;
extern uint32 syncTimeout_ms;

#define SM_BUFFER_SIZE_C0_C1 8

extern IfxCpu_mutexLock time_command_mutex_C0_C1;
extern IfxCpu_mutexLock time_command_mutex_C1_C0;
extern IfxCpu_mutexLock tim_ms_mutex;
extern uint8 buffer_C0_C1[SM_BUFFER_SIZE_C0_C1];
extern uint8 buffer_C1_C0[SM_BUFFER_SIZE_C0_C1];

#endif /* _MAIN_H_ */
