	.file	"Cpu0_Main.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	event
.section .bss,"aw",@nobits
	.align 2
	.type	event, @object
	.size	event, 4
event:
	.zero	4
	.global	syncTimeout_ms
.section .data,"aw",@progbits
	.align 2
	.type	syncTimeout_ms, @object
	.size	syncTimeout_ms, 4
syncTimeout_ms:
	.word	1000
	.global	time_command_mutex_C0_C1
.section .bss,"aw",@nobits
	.align 2
	.type	time_command_mutex_C0_C1, @object
	.size	time_command_mutex_C0_C1, 4
time_command_mutex_C0_C1:
	.zero	4
	.global	time_command_mutex_C1_C0
	.align 2
	.type	time_command_mutex_C1_C0, @object
	.size	time_command_mutex_C1_C0, 4
time_command_mutex_C1_C0:
	.zero	4
	.global	buffer_C0_C1
	.type	buffer_C0_C1, @object
	.size	buffer_C0_C1, 8
buffer_C0_C1:
	.zero	8
	.global	buffer_C1_C0
	.type	buffer_C1_C0, @object
	.size	buffer_C1_C0, 8
buffer_C1_C0:
	.zero	8
.section .text,"ax",@progbits
	.align 1
	.type	uart_init_struct, @function
uart_init_struct:
.LFB494:
	.file 1 "0_Src/0_AppSw/Tricore/app/Cpu0_Main.c"
	.loc 1 71 0
	mov.aa	%a14, %SP
.LCFI0:
	sub.a	%SP, 16
	st.a	[%a14] -12, %a4
	.loc 1 72 0
	ld.w	%d15, [%a14] -12
	mov	%d2, 1
	mov.a	%a15, %d15
	st.h	[%a15] 1212, %d2
	.loc 1 73 0
	ld.w	%d15, [%a14] -12
	movh	%d2, 18401
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 1208, %d3
	.loc 1 74 0
	ld.w	%d15, [%a14] -12
	mov	%d2, 15
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 1216, %d3
	.loc 1 75 0
	ld.w	%d15, [%a14] -12
	mov	%d2, 4
	mov.a	%a15, %d15
	st.h	[%a15] 1220, %d2
	.loc 1 76 0
	ld.w	%d15, [%a14] -12
	mov	%d2, 8
	mov.a	%a15, %d15
	st.h	[%a15] 1222, %d2
	.loc 1 77 0
	ld.w	%d15, [%a14] -12
	mov	%d2, 12
	mov.a	%a15, %d15
	st.h	[%a15] 1224, %d2
.LBB14:
.LBB15:
.LBB16:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
	.loc 2 768 0
#APP
	# 768 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
#NO_APP
	st.w	[%a14] -4, %d15
	ld.w	%d15, [%a14] -4
.LBE16:
	st.w	[%a14] -8, %d15
	.loc 2 769 0
	ld.w	%d15, [%a14] -8
	and	%d15, %d15, 7
	and	%d15, 255
	mov	%d2, %d15
.LBE15:
.LBE14:
	.loc 1 78 0
	ld.w	%d15, [%a14] -12
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 1228, %d3
	.loc 1 79 0
	ld.w	%d15, [%a14] -12
	mov	%d2, 3
	mov.a	%a15, %d15
	st.b	[%a15]0, %d2
	.loc 1 80 0
	ld.w	%d15, [%a14] -12
	mov	%d2, 3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 16, %d3
	.loc 1 81 0
	ld.w	%d15, [%a14] -12
	mov	%d2, 16
	mov.a	%a15, %d15
	st.b	[%a15] 36, %d2
	.loc 1 82 0
	ld.w	%d15, [%a14] -12
	mov	%d2, 5
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 32, %d3
	.loc 1 83 0
	ld.w	%d15, [%a14] -12
	mov	%d2, -128
	mov.a	%a15, %d15
	st.b	[%a15] 37, %d2
	.loc 1 84 0
	ret
.LFE494:
	.size	uart_init_struct, .-uart_init_struct
	.global	__floatundisf
	.global	__extendsfdf2
.section .rodata,"a",@progbits
.LC3:
	.string	"CPU Timer: %.1f s\n"
.LC0:
	.string	"Wrong Start Byte\n"
	.zero	8
.LC1:
	.string	"Correct Command!\n"
	.zero	8
.LC2:
	.string	"Wrong Command!\n"
	.zero	10
.section .text,"ax",@progbits
	.align 1
	.global	core0_main
	.type	core0_main, @function
core0_main:
.LFB495:
	.loc 1 92 0
	mov.aa	%a14, %SP
.LCFI1:
	lea	%SP, [%SP] -1416
	.loc 1 94 0
	mov	%d15, 0
	st.h	[%a14] -2, %d15
	.loc 1 95 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1294
	mov.a	%a2, %d15
	mov	%d3, 0
	lea	%a3, 13-1
	0:
	st.h	[%a2+]2, %d3
	loop	%a3, 0b
	.loc 1 96 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1320
	mov.a	%a2, %d15
	mov	%e2, 0
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
	st.h	[%a2+]2, %d2
	.loc 1 97 0
	mov.d	%d2, %a14
	addi	%d3, %d2, -1346
	movh	%d15, hi:.LC0
	addi	%d2, %d15, lo:.LC0
	mov	%d15, %d3
	mov.a	%a2, %d15
	mov.a	%a3, %d2
		# #chunks=18, chunksize=1, remains=0
	lea	%a15, 18-1
	0:
	ld.bu	%d4, [%a3+]1
	st.b	[%a2+]1, %d4
	loop	%a15, 0b
	addi	%d15, %d3, 18
	mov.a	%a2, %d15
	mov	%d2, 0
	lea	%a3, 4-1
	0:
	st.h	[%a2+]2, %d2
	loop	%a3, 0b
	.loc 1 98 0
	mov	%d15, 25
	st.h	[%a14] -1348, %d15
	.loc 1 99 0
	mov	%d15, 25
	st.h	[%a14] -4, %d15
	.loc 1 100 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
	.loc 1 102 0
	mov.d	%d2, %a14
	addi	%d3, %d2, -1374
	movh	%d15, hi:.LC1
	addi	%d2, %d15, lo:.LC1
	mov	%d15, %d3
	mov.a	%a2, %d15
	mov.a	%a3, %d2
		# #chunks=18, chunksize=1, remains=0
	lea	%a15, 18-1
	0:
	ld.bu	%d4, [%a3+]1
	st.b	[%a2+]1, %d4
	loop	%a15, 0b
	addi	%d15, %d3, 18
	mov.a	%a2, %d15
	mov	%d2, 0
	lea	%a3, 4-1
	0:
	st.h	[%a2+]2, %d2
	loop	%a3, 0b
	.loc 1 103 0
	mov.d	%d2, %a14
	addi	%d3, %d2, -1400
	movh	%d15, hi:.LC2
	addi	%d2, %d15, lo:.LC2
	mov	%d15, %d3
	mov.a	%a2, %d15
	mov.a	%a3, %d2
		# #chunks=16, chunksize=1, remains=0
	lea	%a15, 16-1
	0:
	ld.bu	%d4, [%a3+]1
	st.b	[%a2+]1, %d4
	loop	%a15, 0b
	addi	%d15, %d3, 16
	mov	%d2, 0
	mov.a	%a2, %d15
	st.w	[%a2]0, %d2
	add	%d15, 4
	mov	%d2, 0
	mov.a	%a3, %d15
	st.w	[%a3]0, %d2
	add	%d15, 4
	mov	%d2, 0
	mov.a	%a15, %d15
	st.h	[%a15]0, %d2
	add	%d15, 2
	.loc 1 104 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1402
	mov	%d2, 0
	mov.a	%a2, %d15
	st.h	[%a2]0, %d2
	mov.d	%d2, %a14
	addi	%d15, %d2, -1402
	mov	%d2, 10
	mov.a	%a2, %d15
	st.b	[%a2]0, %d2
	.loc 1 110 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d15, %d2
	mov	%d4, %d15
	call	IfxScuWdt_disableCpuWatchdog
	.loc 1 111 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	mov	%d15, %d2
	mov	%d4, %d15
	call	IfxScuWdt_disableSafetyWatchdog
.LBB17:
.LBB18:
	.loc 2 655 0
#APP
	# 655 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE18:
.LBE17:
	.loc 1 117 0
	movh.a	%a4, 61444
	lea	%a4, [%a4] -11520
	mov	%d4, 2
	mov	%d5, 128
	call	IfxPort_setPinMode
	.loc 1 118 0
	movh.a	%a4, 61444
	lea	%a4, [%a4] -11520
	mov	%d4, 2
	mov	%d5, 8
	call	IfxPort_setPinPadDriver
	movh	%d15, 61444
	addi	%d15, %d15, -11520
	st.w	[%a14] -20, %d15
	mov	%d15, 2
	st.b	[%a14] -21, %d15
	ld.w	%d15, [%a14] -20
	st.w	[%a14] -28, %d15
	ld.b	%d15, [%a14] -21
	st.b	[%a14] -29, %d15
	movh	%d15, 1
	st.w	[%a14] -36, %d15
.LBB19:
.LBB20:
.LBB21:
.LBB22:
	.file 3 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
	.loc 3 574 0
	ld.bu	%d15, [%a14] -29
	ld.w	%d2, [%a14] -36
	sh	%d15, %d2, %d15
	ld.w	%d2, [%a14] -28
	mov	%d3, %d15
	mov.a	%a2, %d2
	st.w	[%a2] 4, %d3
.LBE22:
.LBE21:
.LBE20:
.LBE19:
	.loc 1 122 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1268
	mov.a	%a4, %d15
	call	uart_init_struct
	.loc 1 125 0
	mov.d	%d3, %a14
	addi	%d15, %d3, -1268
	mov.a	%a4, %d15
	call	uart_init
	.loc 1 128 0
	movh	%d15, hi:event
	mov.a	%a2, %d15
	lea	%a4, [%a2] lo:event
	call	IfxCpu_emitEvent
	.loc 1 129 0
	movh	%d15, hi:syncTimeout_ms
	addi	%d15, %d15, lo:syncTimeout_ms
	mov.a	%a3, %d15
	ld.w	%d15, [%a3]0
	movh	%d2, hi:event
	mov.a	%a15, %d2
	lea	%a4, [%a15] lo:event
	mov	%d4, %d15
	call	IfxCpu_waitEvent
.L12:
	.loc 1 133 0
	call	uart_app_getread_count
	st.w	[%a14] -8, %d2
	.loc 1 135 0
	ld.w	%d15, [%a14] -8
	jz	%d15, .L4
	.loc 1 138 0
	mov.d	%d3, %a14
	addi	%d2, %d3, -1268
	mov.d	%d4, %a14
	addi	%d15, %d4, -1320
	mov.a	%a4, %d2
	mov.a	%a5, %d15
	mov	%e4, 10000
	call	uart_app_receive_byte
	.loc 1 140 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1320
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2]0
	ne	%d15, %d15, 35
	jnz	%d15, .L5
	.loc 1 143 0
	mov	%d15, 0
	st.h	[%a14] -2, %d15
.L8:
	.loc 1 147 0
	ld.hu	%d15, [%a14] -2
	add	%d15, 1
	st.h	[%a14] -2, %d15
	.loc 1 150 0
	ld.hu	%d15, [%a14] -2
	ne	%d15, %d15, 26
	jnz	%d15, .L6
	j	.L7
.L6:
	.loc 1 152 0
	ld.hu	%d15, [%a14] -2
	mov.d	%d3, %a14
	addi	%d2, %d3, -1320
	add	%d2, %d15
	mov.d	%d4, %a14
	addi	%d15, %d4, -1268
	mov.a	%a4, %d15
	mov.a	%a5, %d2
	mov	%e4, 10000
	call	uart_app_receive_byte
	.loc 1 153 0
	ld.hu	%d15, [%a14] -2
	mov.d	%d3, %a14
	addi	%d2, %d3, -1320
	add	%d15, %d2
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2]0
	ne	%d15, %d15, 36
	jnz	%d15, .L8
.L7:
	.loc 1 155 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1320
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2]0
	ne	%d15, %d15, 35
	jnz	%d15, .L9
	.loc 1 155 0 is_stmt 0 discriminator 1
	mov.d	%d2, %a14
	addi	%d15, %d2, -1320
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2] 1
	ne	%d15, %d15, 116
	jnz	%d15, .L9
	.loc 1 155 0 discriminator 2
	mov.d	%d2, %a14
	addi	%d15, %d2, -1320
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2] 2
	ne	%d15, %d15, 105
	jnz	%d15, .L9
	.loc 1 155 0 discriminator 3
	mov.d	%d2, %a14
	addi	%d15, %d2, -1320
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2] 3
	ne	%d15, %d15, 109
	jnz	%d15, .L9
	.loc 1 155 0 discriminator 4
	mov.d	%d2, %a14
	addi	%d15, %d2, -1320
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2] 4
	ne	%d15, %d15, 101
	jnz	%d15, .L9
	.loc 1 155 0 discriminator 5
	mov.d	%d2, %a14
	addi	%d15, %d2, -1320
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2] 5
	ne	%d15, %d15, 36
	jnz	%d15, .L9
	.loc 1 159 0 is_stmt 1
	mov.d	%d2, %a14
	addi	%d15, %d2, -1374
	mov.a	%a4, %d15
	call	strlen
	mov	%d3, %d2
	mov.d	%d4, %a14
	addi	%d2, %d4, -1294
	mov.d	%d4, %a14
	addi	%d15, %d4, -1374
	mov.a	%a4, %d2
	mov.a	%a5, %d15
	mov	%d4, %d3
	call	memcpy
	.loc 1 161 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1294
	mov.a	%a4, %d15
	call	strlen
	mov	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	st.h	[%a14] -1348, %d15
	.loc 1 163 0
	mov.d	%d4, %a14
	addi	%d3, %d4, -1268
	mov.d	%d15, %a14
	addi	%d2, %d15, -1294
	mov.d	%d4, %a14
	addi	%d15, %d4, -1348
	mov.a	%a4, %d3
	mov.a	%a5, %d2
	mov.a	%a6, %d15
	mov	%e4, 10000
	call	uart_app_send_nbyte
	.loc 1 166 0
	movh	%d15, hi:time_command_mutex_C0_C1
	mov.a	%a2, %d15
	lea	%a4, [%a2] lo:time_command_mutex_C0_C1
	call	IfxCpu_acquireMutex
	.loc 1 169 0
	ld.hu	%d15, [%a14] -1348
	mov	%d2, %d15
	mov.d	%d3, %a14
	addi	%d15, %d3, -1294
	mov.a	%a4, %d15
	mov	%d4, 0
	mov	%d5, %d2
	call	memset
	.loc 1 172 0
	mov.d	%d4, %a14
	addi	%d15, %d4, -1320
	mov.a	%a4, %d15
	call	strlen
	mov	%d3, %d2
	mov.d	%d15, %a14
	addi	%d2, %d15, -1294
	mov.d	%d4, %a14
	addi	%d15, %d4, -1320
	mov.a	%a4, %d2
	mov.a	%a5, %d15
	mov	%d4, %d3
	call	memcpy
	.loc 1 174 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1294
	mov.a	%a4, %d15
	call	strlen
	mov	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	st.h	[%a14] -1348, %d15
	.loc 1 176 0
	mov.d	%d4, %a14
	addi	%d3, %d4, -1268
	mov.d	%d15, %a14
	addi	%d2, %d15, -1294
	mov.d	%d4, %a14
	addi	%d15, %d4, -1348
	mov.a	%a4, %d3
	mov.a	%a5, %d2
	mov.a	%a6, %d15
	mov	%e4, 10000
	call	uart_app_send_nbyte
	.loc 1 178 0
	mov.d	%d15, %a14
	addi	%d2, %d15, -1268
	mov.d	%d3, %a14
	addi	%d15, %d3, -1402
	mov.a	%a4, %d2
	mov.a	%a5, %d15
	mov	%e4, 10000
	call	uart_app_send_byte
	j	.L10
.L9:
	.loc 1 182 0
	mov.d	%d4, %a14
	addi	%d15, %d4, -1400
	mov.a	%a4, %d15
	call	strlen
	mov	%d3, %d2
	mov.d	%d15, %a14
	addi	%d2, %d15, -1294
	mov.d	%d4, %a14
	addi	%d15, %d4, -1400
	mov.a	%a4, %d2
	mov.a	%a5, %d15
	mov	%d4, %d3
	call	memcpy
	.loc 1 184 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1294
	mov.a	%a4, %d15
	call	strlen
	mov	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	st.h	[%a14] -1348, %d15
	.loc 1 186 0
	mov.d	%d4, %a14
	addi	%d3, %d4, -1268
	mov.d	%d15, %a14
	addi	%d2, %d15, -1294
	mov.d	%d4, %a14
	addi	%d15, %d4, -1348
	mov.a	%a4, %d3
	mov.a	%a5, %d2
	mov.a	%a6, %d15
	mov	%e4, 10000
	call	uart_app_send_nbyte
.L10:
	.loc 1 191 0
	ld.hu	%d15, [%a14] -4
	mov.d	%d3, %a14
	addi	%d2, %d3, -1320
	mov.a	%a4, %d2
	mov	%d4, 0
	mov	%d5, %d15
	call	memset
	.loc 1 192 0
	ld.hu	%d15, [%a14] -1348
	mov	%d2, %d15
	mov.d	%d4, %a14
	addi	%d15, %d4, -1294
	mov.a	%a4, %d15
	mov	%d4, 0
	mov	%d5, %d2
	call	memset
	j	.L4
.L5:
	.loc 1 197 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1346
	mov.a	%a4, %d15
	call	strlen
	mov	%d3, %d2
	mov.d	%d4, %a14
	addi	%d2, %d4, -1294
	mov.d	%d4, %a14
	addi	%d15, %d4, -1346
	mov.a	%a4, %d2
	mov.a	%a5, %d15
	mov	%d4, %d3
	call	memcpy
	.loc 1 199 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1294
	mov.a	%a4, %d15
	call	strlen
	mov	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	st.h	[%a14] -1348, %d15
	.loc 1 201 0
	mov.d	%d4, %a14
	addi	%d3, %d4, -1268
	mov.d	%d15, %a14
	addi	%d2, %d15, -1294
	mov.d	%d4, %a14
	addi	%d15, %d4, -1348
	mov.a	%a4, %d3
	mov.a	%a5, %d2
	mov.a	%a6, %d15
	mov	%e4, 10000
	call	uart_app_send_nbyte
	.loc 1 204 0
	ld.hu	%d15, [%a14] -4
	mov.d	%d3, %a14
	addi	%d2, %d3, -1320
	mov.a	%a4, %d2
	mov	%d4, 0
	mov	%d5, %d15
	call	memset
	.loc 1 205 0
	ld.hu	%d15, [%a14] -1348
	mov	%d2, %d15
	mov.d	%d4, %a14
	addi	%d15, %d4, -1294
	mov.a	%a4, %d15
	mov	%d4, 0
	mov	%d5, %d2
	call	memset
.L4:
	.loc 1 216 0
	movh	%d15, hi:time_command_mutex_C1_C0
	mov.a	%a2, %d15
	lea	%a4, [%a2] lo:time_command_mutex_C1_C0
	call	IfxCpu_getMutexStatus
	mov	%d15, %d2
	jz	%d15, .L11
.LBB23:
	.loc 1 217 0
	movh	%d15, hi:buffer_C1_C0
	addi	%d15, %d15, lo:buffer_C1_C0
	mov.a	%a3, %d15
	ld.bu	%d15, [%a3] 3
	sh	%d2, %d15, 24
	movh	%d15, hi:buffer_C1_C0
	addi	%d15, %d15, lo:buffer_C1_C0
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d2, %d15
	movh	%d15, hi:buffer_C1_C0
	addi	%d15, %d15, lo:buffer_C1_C0
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2] 1
	sh	%d15, %d15, 8
	or	%d15, %d2
	movh	%d2, hi:buffer_C1_C0
	addi	%d2, %d2, lo:buffer_C1_C0
	mov.a	%a3, %d2
	ld.bu	%d2, [%a3]0
	or	%d15, %d2
	mov	%e2, %d15
	st.d	[%a14] -16, %e2
	.loc 1 220 0
	ld.d	%e4, [%a14] -16
	call	__floatundisf
	movh	%d15, 16672
	div.f	%d15, %d2, %d15
	mov	%d4, %d15
	call	__extendsfdf2
	mov.d	%d4, %a14
	addi	%d15, %d4, -1294
	st.d	[%SP]0, %e2
	mov.a	%a4, %d15
	movh	%d15, hi:.LC3
	mov.a	%a2, %d15
	lea	%a5, [%a2] lo:.LC3
	call	sprintf
	.loc 1 222 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -1294
	mov.a	%a4, %d15
	call	strlen
	mov	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	st.h	[%a14] -1348, %d15
	.loc 1 224 0
	mov.d	%d4, %a14
	addi	%d3, %d4, -1268
	mov.d	%d15, %a14
	addi	%d2, %d15, -1294
	mov.d	%d4, %a14
	addi	%d15, %d4, -1348
	mov.a	%a4, %d3
	mov.a	%a5, %d2
	mov.a	%a6, %d15
	mov	%e4, 10000
	call	uart_app_send_nbyte
	.loc 1 226 0
	ld.hu	%d15, [%a14] -1348
	mov	%d2, %d15
	mov.d	%d3, %a14
	addi	%d15, %d3, -1294
	mov.a	%a4, %d15
	mov	%d4, 0
	mov	%d5, %d2
	call	memset
	.loc 1 228 0
	movh	%d15, hi:time_command_mutex_C1_C0
	mov.a	%a2, %d15
	lea	%a4, [%a2] lo:time_command_mutex_C1_C0
	call	IfxCpu_releaseMutex
.L11:
.LBE23:
	.loc 1 230 0
	j	.L12
.LFE495:
	.size	core0_main, .-core0_main
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB494
	.uaword	.LFE494-.LFB494
	.byte	0x4
	.uaword	.LCFI0-.LFB494
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB495
	.uaword	.LFE495-.LFB495
	.byte	0x4
	.uaword	.LCFI1-.LFB495
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
	.file 8 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
	.file 9 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h"
	.file 10 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
	.file 11 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
	.file 12 "./0_Src/0_AppSw/Tricore/lib/aurix_tc27x_uart_app.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3b82
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on "
	.string	"2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O0 -std=gnu11 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/app/Cpu0_Main.c"
	.string	"C:\\\\workspace\\\\esw_mcs_hightec"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"long double"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x59
	.uaword	0x1d8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x4
	.byte	0x5a
	.uaword	0x1f7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x212
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x174
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x180
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0x5e
	.uaword	0x253
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"uint64"
	.byte	0x5
	.byte	0x25
	.uaword	0x274
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29c
	.uleb128 0x5
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x5
	.byte	0x4a
	.uaword	0x1e9
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x7d
	.uaword	0x2d4
	.uleb128 0x7
	.string	"module"
	.byte	0x5
	.byte	0x7f
	.uaword	0x296
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x5
	.byte	0x80
	.uaword	0x228
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x81
	.uaword	0x2ae
	.uleb128 0x8
	.uaword	0x2f3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x9
	.string	"_Ifx_CPU_CORE_ID_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x5c
	.uaword	0x34b
	.uleb128 0xa
	.string	"CORE_ID"
	.byte	0x6
	.byte	0x5e
	.uaword	0x2ee
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"reserved_3"
	.byte	0x6
	.byte	0x5f
	.uaword	0x2ee
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CPU_CORE_ID_Bits"
	.byte	0x6
	.byte	0x60
	.uaword	0x303
	.uleb128 0xb
	.byte	0x4
	.byte	0x6
	.uahalf	0x2f1
	.uaword	0x38f
	.uleb128 0xc
	.string	"U"
	.byte	0x6
	.uahalf	0x2f4
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x6
	.uahalf	0x2f6
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x6
	.uahalf	0x2f8
	.uaword	0x34b
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CPU_CORE_ID"
	.byte	0x6
	.uahalf	0x2f9
	.uaword	0x367
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xe
	.uaword	0x1d8
	.uaword	0x3c3
	.uleb128 0xf
	.uaword	0x3a7
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.uaword	0x1d8
	.uaword	0x3d3
	.uleb128 0xf
	.uaword	0x3a7
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.uaword	0x1d8
	.uaword	0x3e3
	.uleb128 0xf
	.uaword	0x3a7
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.uaword	0x1d8
	.uaword	0x3f3
	.uleb128 0xf
	.uaword	0x3a7
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x76
	.uaword	0x443
	.uleb128 0x11
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x11
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x11
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x11
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x8b
	.uaword	0x4ab
	.uleb128 0x11
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x11
	.string	"IfxCpu_ResourceCpu_1"
	.sleb128 1
	.uleb128 0x11
	.string	"IfxCpu_ResourceCpu_2"
	.sleb128 2
	.uleb128 0x11
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu"
	.byte	0x7
	.byte	0x90
	.uaword	0x443
	.uleb128 0x9
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x6d7
	.uleb128 0xa
	.string	"EN0"
	.byte	0x8
	.byte	0x2f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"EN1"
	.byte	0x8
	.byte	0x30
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"EN2"
	.byte	0x8
	.byte	0x31
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"EN3"
	.byte	0x8
	.byte	0x32
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"EN4"
	.byte	0x8
	.byte	0x33
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"EN5"
	.byte	0x8
	.byte	0x34
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"EN6"
	.byte	0x8
	.byte	0x35
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"EN7"
	.byte	0x8
	.byte	0x36
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"EN8"
	.byte	0x8
	.byte	0x37
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"EN9"
	.byte	0x8
	.byte	0x38
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"EN10"
	.byte	0x8
	.byte	0x39
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"EN11"
	.byte	0x8
	.byte	0x3a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"EN12"
	.byte	0x8
	.byte	0x3b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"EN13"
	.byte	0x8
	.byte	0x3c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"EN14"
	.byte	0x8
	.byte	0x3d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"EN15"
	.byte	0x8
	.byte	0x3e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"EN16"
	.byte	0x8
	.byte	0x3f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"EN17"
	.byte	0x8
	.byte	0x40
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.string	"EN18"
	.byte	0x8
	.byte	0x41
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"EN19"
	.byte	0x8
	.byte	0x42
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"EN20"
	.byte	0x8
	.byte	0x43
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"EN21"
	.byte	0x8
	.byte	0x44
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"EN22"
	.byte	0x8
	.byte	0x45
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"EN23"
	.byte	0x8
	.byte	0x46
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"EN24"
	.byte	0x8
	.byte	0x47
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"EN25"
	.byte	0x8
	.byte	0x48
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"EN26"
	.byte	0x8
	.byte	0x49
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"EN27"
	.byte	0x8
	.byte	0x4a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"EN28"
	.byte	0x8
	.byte	0x4b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"EN29"
	.byte	0x8
	.byte	0x4c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"EN30"
	.byte	0x8
	.byte	0x4d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"EN31"
	.byte	0x8
	.byte	0x4e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x8
	.byte	0x4f
	.uaword	0x4c5
	.uleb128 0x9
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x52
	.uaword	0x71b
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0x54
	.uaword	0x2f3
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x8
	.byte	0x55
	.uaword	0x6f0
	.uleb128 0x9
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x58
	.uaword	0x852
	.uleb128 0xa
	.string	"EN0"
	.byte	0x8
	.byte	0x5a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"EN1"
	.byte	0x8
	.byte	0x5b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"EN2"
	.byte	0x8
	.byte	0x5c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"EN3"
	.byte	0x8
	.byte	0x5d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"EN4"
	.byte	0x8
	.byte	0x5e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"EN5"
	.byte	0x8
	.byte	0x5f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"EN6"
	.byte	0x8
	.byte	0x60
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"EN7"
	.byte	0x8
	.byte	0x61
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"EN8"
	.byte	0x8
	.byte	0x62
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"EN9"
	.byte	0x8
	.byte	0x63
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"EN10"
	.byte	0x8
	.byte	0x64
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"EN11"
	.byte	0x8
	.byte	0x65
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"EN12"
	.byte	0x8
	.byte	0x66
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"EN13"
	.byte	0x8
	.byte	0x67
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"EN14"
	.byte	0x8
	.byte	0x68
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"EN15"
	.byte	0x8
	.byte	0x69
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.byte	0x6a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x8
	.byte	0x6b
	.uaword	0x734
	.uleb128 0x9
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x6e
	.uaword	0x8ba
	.uleb128 0xa
	.string	"MODREV"
	.byte	0x8
	.byte	0x70
	.uaword	0x2f3
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"MODTYPE"
	.byte	0x8
	.byte	0x71
	.uaword	0x2f3
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"MODNUMBER"
	.byte	0x8
	.byte	0x72
	.uaword	0x2f3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x8
	.byte	0x73
	.uaword	0x868
	.uleb128 0x9
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x76
	.uaword	0x9dc
	.uleb128 0xa
	.string	"P0"
	.byte	0x8
	.byte	0x78
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"P1"
	.byte	0x8
	.byte	0x79
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"P2"
	.byte	0x8
	.byte	0x7a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"P3"
	.byte	0x8
	.byte	0x7b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"P4"
	.byte	0x8
	.byte	0x7c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"P5"
	.byte	0x8
	.byte	0x7d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"P6"
	.byte	0x8
	.byte	0x7e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"P7"
	.byte	0x8
	.byte	0x7f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"P8"
	.byte	0x8
	.byte	0x80
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"P9"
	.byte	0x8
	.byte	0x81
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"P10"
	.byte	0x8
	.byte	0x82
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"P11"
	.byte	0x8
	.byte	0x83
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"P12"
	.byte	0x8
	.byte	0x84
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"P13"
	.byte	0x8
	.byte	0x85
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"P14"
	.byte	0x8
	.byte	0x86
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"P15"
	.byte	0x8
	.byte	0x87
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.byte	0x88
	.uaword	0x2f3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x8
	.byte	0x89
	.uaword	0x8cf
	.uleb128 0x9
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x8c
	.uaword	0xa84
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0x8e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PC0"
	.byte	0x8
	.byte	0x8f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x8
	.byte	0x90
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PC1"
	.byte	0x8
	.byte	0x91
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.byte	0x92
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PC2"
	.byte	0x8
	.byte	0x93
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x8
	.byte	0x94
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PC3"
	.byte	0x8
	.byte	0x95
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x8
	.byte	0x96
	.uaword	0x9f1
	.uleb128 0x9
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x99
	.uaword	0xb34
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0x9b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PC12"
	.byte	0x8
	.byte	0x9c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x8
	.byte	0x9d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PC13"
	.byte	0x8
	.byte	0x9e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.byte	0x9f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PC14"
	.byte	0x8
	.byte	0xa0
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x8
	.byte	0xa1
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PC15"
	.byte	0x8
	.byte	0xa2
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x8
	.byte	0xa3
	.uaword	0xa9c
	.uleb128 0x9
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xa6
	.uaword	0xbe0
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0xa8
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PC4"
	.byte	0x8
	.byte	0xa9
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x8
	.byte	0xaa
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PC5"
	.byte	0x8
	.byte	0xab
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.byte	0xac
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PC6"
	.byte	0x8
	.byte	0xad
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x8
	.byte	0xae
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PC7"
	.byte	0x8
	.byte	0xaf
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x8
	.byte	0xb0
	.uaword	0xb4d
	.uleb128 0x9
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xb3
	.uaword	0xc8d
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0xb5
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PC8"
	.byte	0x8
	.byte	0xb6
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x8
	.byte	0xb7
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PC9"
	.byte	0x8
	.byte	0xb8
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.byte	0xb9
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PC10"
	.byte	0x8
	.byte	0xba
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x8
	.byte	0xbb
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PC11"
	.byte	0x8
	.byte	0xbc
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x8
	.byte	0xbd
	.uaword	0xbf8
	.uleb128 0x9
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xc0
	.uaword	0xced
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0xc2
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"PS1"
	.byte	0x8
	.byte	0xc3
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x8
	.byte	0xc4
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x8
	.byte	0xc5
	.uaword	0xca5
	.uleb128 0x9
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xc8
	.uaword	0xd4d
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0xca
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"PS1"
	.byte	0x8
	.byte	0xcb
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x8
	.byte	0xcc
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x8
	.byte	0xcd
	.uaword	0xd05
	.uleb128 0x9
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xd0
	.uaword	0xddd
	.uleb128 0xa
	.string	"RDIS_CTRL"
	.byte	0x8
	.byte	0xd2
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"RX_DIS"
	.byte	0x8
	.byte	0xd3
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"TERM"
	.byte	0x8
	.byte	0xd4
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"LRXTERM"
	.byte	0x8
	.byte	0xd5
	.uaword	0x2f3
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x8
	.byte	0xd6
	.uaword	0x2f3
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x8
	.byte	0xd7
	.uaword	0xd65
	.uleb128 0x9
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xda
	.uaword	0xeb8
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0xdc
	.uaword	0x2f3
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"LVDSR"
	.byte	0x8
	.byte	0xdd
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"LVDSRL"
	.byte	0x8
	.byte	0xde
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"reserved_10"
	.byte	0x8
	.byte	0xdf
	.uaword	0x2f3
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"TDIS_CTRL"
	.byte	0x8
	.byte	0xe0
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"TX_DIS"
	.byte	0x8
	.byte	0xe1
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"TX_PD"
	.byte	0x8
	.byte	0xe2
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"TX_PWDPD"
	.byte	0x8
	.byte	0xe3
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.byte	0xe4
	.uaword	0x2f3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x8
	.byte	0xe5
	.uaword	0xdf9
	.uleb128 0x9
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xe8
	.uaword	0xf49
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0xea
	.uaword	0x2f3
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PCL0"
	.byte	0x8
	.byte	0xeb
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"PCL1"
	.byte	0x8
	.byte	0xec
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.string	"PCL2"
	.byte	0x8
	.byte	0xed
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PCL3"
	.byte	0x8
	.byte	0xee
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x8
	.byte	0xef
	.uaword	0x2f3
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x8
	.byte	0xf0
	.uaword	0xed0
	.uleb128 0x9
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xf3
	.uaword	0xfd0
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0xf5
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"PCL12"
	.byte	0x8
	.byte	0xf6
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"PCL13"
	.byte	0x8
	.byte	0xf7
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"PCL14"
	.byte	0x8
	.byte	0xf8
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"PCL15"
	.byte	0x8
	.byte	0xf9
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x8
	.byte	0xfa
	.uaword	0xf61
	.uleb128 0x9
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xfd
	.uaword	0x1067
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0xff
	.uaword	0x2f3
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.string	"PCL4"
	.byte	0x8
	.uahalf	0x100
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.string	"PCL5"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x13
	.string	"PCL6"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.string	"PCL7"
	.byte	0x8
	.uahalf	0x103
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x104
	.uaword	0x2f3
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x8
	.uahalf	0x105
	.uaword	0xfe9
	.uleb128 0x15
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x108
	.uaword	0x1102
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x10a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.string	"PCL8"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.string	"PCL9"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.string	"PCL10"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.string	"PCL11"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x1080
	.uleb128 0x15
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x113
	.uaword	0x125c
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x115
	.uaword	0x2f3
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.string	"PCL0"
	.byte	0x8
	.uahalf	0x116
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.string	"PCL1"
	.byte	0x8
	.uahalf	0x117
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.string	"PCL2"
	.byte	0x8
	.uahalf	0x118
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x13
	.string	"PCL3"
	.byte	0x8
	.uahalf	0x119
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.string	"PCL4"
	.byte	0x8
	.uahalf	0x11a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.string	"PCL5"
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x13
	.string	"PCL6"
	.byte	0x8
	.uahalf	0x11c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.string	"PCL7"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.string	"PCL8"
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.string	"PCL9"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.string	"PCL10"
	.byte	0x8
	.uahalf	0x120
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.string	"PCL11"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.string	"PCL12"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.string	"PCL13"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.string	"PCL14"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.string	"PCL15"
	.byte	0x8
	.uahalf	0x125
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x8
	.uahalf	0x126
	.uaword	0x111b
	.uleb128 0x15
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x129
	.uaword	0x14aa
	.uleb128 0x13
	.string	"PS0"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.string	"PS1"
	.byte	0x8
	.uahalf	0x12c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.string	"PS2"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.string	"PS3"
	.byte	0x8
	.uahalf	0x12e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.string	"PS4"
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.string	"PS5"
	.byte	0x8
	.uahalf	0x130
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.string	"PS6"
	.byte	0x8
	.uahalf	0x131
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.string	"PS7"
	.byte	0x8
	.uahalf	0x132
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.string	"PS8"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.string	"PS9"
	.byte	0x8
	.uahalf	0x134
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x13
	.string	"PS10"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.string	"PS11"
	.byte	0x8
	.uahalf	0x136
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.string	"PS12"
	.byte	0x8
	.uahalf	0x137
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.string	"PS13"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x13
	.string	"PS14"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x13
	.string	"PS15"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.string	"PCL0"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.string	"PCL1"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.string	"PCL2"
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x13
	.string	"PCL3"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.string	"PCL4"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.string	"PCL5"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x13
	.string	"PCL6"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.string	"PCL7"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.string	"PCL8"
	.byte	0x8
	.uahalf	0x143
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.string	"PCL9"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.string	"PCL10"
	.byte	0x8
	.uahalf	0x145
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.string	"PCL11"
	.byte	0x8
	.uahalf	0x146
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.string	"PCL12"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.string	"PCL13"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.string	"PCL14"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.string	"PCL15"
	.byte	0x8
	.uahalf	0x14a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMR_Bits"
	.byte	0x8
	.uahalf	0x14b
	.uaword	0x1274
	.uleb128 0x15
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x14e
	.uaword	0x1534
	.uleb128 0x13
	.string	"PS0"
	.byte	0x8
	.uahalf	0x150
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.string	"PS1"
	.byte	0x8
	.uahalf	0x151
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.string	"PS2"
	.byte	0x8
	.uahalf	0x152
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.string	"PS3"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.string	"reserved_4"
	.byte	0x8
	.uahalf	0x154
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x8
	.uahalf	0x155
	.uaword	0x14c1
	.uleb128 0x15
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x158
	.uaword	0x15ce
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x2f3
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.string	"PS12"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.string	"PS13"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x13
	.string	"PS14"
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x13
	.string	"PS15"
	.byte	0x8
	.uahalf	0x15e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x8
	.uahalf	0x160
	.uaword	0x154d
	.uleb128 0x15
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x163
	.uaword	0x1664
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x165
	.uaword	0x2f3
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.string	"PS4"
	.byte	0x8
	.uahalf	0x166
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.string	"PS5"
	.byte	0x8
	.uahalf	0x167
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.string	"PS6"
	.byte	0x8
	.uahalf	0x168
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.string	"PS7"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x8
	.uahalf	0x16b
	.uaword	0x15e8
	.uleb128 0x15
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x16e
	.uaword	0x16fb
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x170
	.uaword	0x2f3
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.string	"PS8"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.string	"PS9"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x13
	.string	"PS10"
	.byte	0x8
	.uahalf	0x173
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.string	"PS11"
	.byte	0x8
	.uahalf	0x174
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x175
	.uaword	0x2f3
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x167d
	.uleb128 0x15
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x179
	.uaword	0x1845
	.uleb128 0x13
	.string	"PS0"
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.string	"PS1"
	.byte	0x8
	.uahalf	0x17c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.string	"PS2"
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.string	"PS3"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.string	"PS4"
	.byte	0x8
	.uahalf	0x17f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.string	"PS5"
	.byte	0x8
	.uahalf	0x180
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.string	"PS6"
	.byte	0x8
	.uahalf	0x181
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.string	"PS7"
	.byte	0x8
	.uahalf	0x182
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.string	"PS8"
	.byte	0x8
	.uahalf	0x183
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.string	"PS9"
	.byte	0x8
	.uahalf	0x184
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x13
	.string	"PS10"
	.byte	0x8
	.uahalf	0x185
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.string	"PS11"
	.byte	0x8
	.uahalf	0x186
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.string	"PS12"
	.byte	0x8
	.uahalf	0x187
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.string	"PS13"
	.byte	0x8
	.uahalf	0x188
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x13
	.string	"PS14"
	.byte	0x8
	.uahalf	0x189
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x13
	.string	"PS15"
	.byte	0x8
	.uahalf	0x18a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x18b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x8
	.uahalf	0x18c
	.uaword	0x1714
	.uleb128 0x15
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x197d
	.uleb128 0x13
	.string	"P0"
	.byte	0x8
	.uahalf	0x191
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.string	"P1"
	.byte	0x8
	.uahalf	0x192
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.string	"P2"
	.byte	0x8
	.uahalf	0x193
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.string	"P3"
	.byte	0x8
	.uahalf	0x194
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.string	"P4"
	.byte	0x8
	.uahalf	0x195
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.string	"P5"
	.byte	0x8
	.uahalf	0x196
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.string	"P6"
	.byte	0x8
	.uahalf	0x197
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.string	"P7"
	.byte	0x8
	.uahalf	0x198
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.string	"P8"
	.byte	0x8
	.uahalf	0x199
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.string	"P9"
	.byte	0x8
	.uahalf	0x19a
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x13
	.string	"P10"
	.byte	0x8
	.uahalf	0x19b
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.string	"P11"
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.string	"P12"
	.byte	0x8
	.uahalf	0x19d
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.string	"P13"
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x13
	.string	"P14"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x13
	.string	"P15"
	.byte	0x8
	.uahalf	0x1a0
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x1a1
	.uaword	0x2f3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OUT_Bits"
	.byte	0x8
	.uahalf	0x1a2
	.uaword	0x185d
	.uleb128 0x15
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x1a81
	.uleb128 0x13
	.string	"SEL0"
	.byte	0x8
	.uahalf	0x1a7
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.string	"SEL1"
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.string	"SEL2"
	.byte	0x8
	.uahalf	0x1a9
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.string	"SEL3"
	.byte	0x8
	.uahalf	0x1aa
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.string	"SEL4"
	.byte	0x8
	.uahalf	0x1ab
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.string	"SEL5"
	.byte	0x8
	.uahalf	0x1ac
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.string	"SEL6"
	.byte	0x8
	.uahalf	0x1ad
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.string	"reserved_7"
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x13
	.string	"SEL10"
	.byte	0x8
	.uahalf	0x1af
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.string	"SEL11"
	.byte	0x8
	.uahalf	0x1b0
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x2f3
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.string	"LCK"
	.byte	0x8
	.uahalf	0x1b2
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x8
	.uahalf	0x1b3
	.uaword	0x1994
	.uleb128 0x15
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1b6
	.uaword	0x1beb
	.uleb128 0x13
	.string	"PDIS0"
	.byte	0x8
	.uahalf	0x1b8
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.string	"PDIS1"
	.byte	0x8
	.uahalf	0x1b9
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.string	"PDIS2"
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.string	"PDIS3"
	.byte	0x8
	.uahalf	0x1bb
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.string	"PDIS4"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.string	"PDIS5"
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.string	"PDIS6"
	.byte	0x8
	.uahalf	0x1be
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.string	"PDIS7"
	.byte	0x8
	.uahalf	0x1bf
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.string	"PDIS8"
	.byte	0x8
	.uahalf	0x1c0
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.string	"PDIS9"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x13
	.string	"PDIS10"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.string	"PDIS11"
	.byte	0x8
	.uahalf	0x1c3
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.string	"PDIS12"
	.byte	0x8
	.uahalf	0x1c4
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.string	"PDIS13"
	.byte	0x8
	.uahalf	0x1c5
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x13
	.string	"PDIS14"
	.byte	0x8
	.uahalf	0x1c6
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x13
	.string	"PDIS15"
	.byte	0x8
	.uahalf	0x1c7
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x1c8
	.uaword	0x2f3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x8
	.uahalf	0x1c9
	.uaword	0x1a99
	.uleb128 0x15
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1cc
	.uaword	0x1d1f
	.uleb128 0x13
	.string	"PD0"
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.string	"PL0"
	.byte	0x8
	.uahalf	0x1cf
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.string	"PD1"
	.byte	0x8
	.uahalf	0x1d0
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.string	"PL1"
	.byte	0x8
	.uahalf	0x1d1
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.string	"PD2"
	.byte	0x8
	.uahalf	0x1d2
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.string	"PL2"
	.byte	0x8
	.uahalf	0x1d3
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.string	"PD3"
	.byte	0x8
	.uahalf	0x1d4
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x13
	.string	"PL3"
	.byte	0x8
	.uahalf	0x1d5
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.string	"PD4"
	.byte	0x8
	.uahalf	0x1d6
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x13
	.string	"PL4"
	.byte	0x8
	.uahalf	0x1d7
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.string	"PD5"
	.byte	0x8
	.uahalf	0x1d8
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.string	"PL5"
	.byte	0x8
	.uahalf	0x1d9
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.string	"PD6"
	.byte	0x8
	.uahalf	0x1da
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.string	"PL6"
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.string	"PD7"
	.byte	0x8
	.uahalf	0x1dc
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.string	"PL7"
	.byte	0x8
	.uahalf	0x1dd
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x8
	.uahalf	0x1de
	.uaword	0x1c04
	.uleb128 0x15
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1e1
	.uaword	0x1e5e
	.uleb128 0x13
	.string	"PD8"
	.byte	0x8
	.uahalf	0x1e3
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.string	"PL8"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.string	"PD9"
	.byte	0x8
	.uahalf	0x1e5
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.string	"PL9"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.string	"PD10"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.string	"PL10"
	.byte	0x8
	.uahalf	0x1e8
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.string	"PD11"
	.byte	0x8
	.uahalf	0x1e9
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x13
	.string	"PL11"
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.string	"PD12"
	.byte	0x8
	.uahalf	0x1eb
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x13
	.string	"PL12"
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.string	"PD13"
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.string	"PL13"
	.byte	0x8
	.uahalf	0x1ee
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.string	"PD14"
	.byte	0x8
	.uahalf	0x1ef
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.string	"PL14"
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.string	"PD15"
	.byte	0x8
	.uahalf	0x1f1
	.uaword	0x2f3
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.string	"PL15"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x2f3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x1d37
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x1fb
	.uaword	0x1e9e
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x1fe
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x200
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x202
	.uaword	0x6d7
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_ACCEN0"
	.byte	0x8
	.uahalf	0x203
	.uaword	0x1e76
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x206
	.uaword	0x1edb
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x209
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x20b
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x20d
	.uaword	0x71b
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_ACCEN1"
	.byte	0x8
	.uahalf	0x20e
	.uaword	0x1eb3
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x211
	.uaword	0x1f18
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x214
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x216
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x218
	.uaword	0x852
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_ESR"
	.byte	0x8
	.uahalf	0x219
	.uaword	0x1ef0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x21c
	.uaword	0x1f52
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x21f
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x221
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x8ba
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_ID"
	.byte	0x8
	.uahalf	0x224
	.uaword	0x1f2a
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x227
	.uaword	0x1f8b
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x22c
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x22e
	.uaword	0x9dc
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_IN"
	.byte	0x8
	.uahalf	0x22f
	.uaword	0x1f63
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x232
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x235
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x239
	.uaword	0xa84
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_IOCR0"
	.byte	0x8
	.uahalf	0x23a
	.uaword	0x1f9c
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x2000
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x240
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x244
	.uaword	0xb34
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_IOCR12"
	.byte	0x8
	.uahalf	0x245
	.uaword	0x1fd8
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x248
	.uaword	0x203d
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x24b
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x24d
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x24f
	.uaword	0xbe0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_IOCR4"
	.byte	0x8
	.uahalf	0x250
	.uaword	0x2015
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x253
	.uaword	0x2079
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x256
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x258
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x25a
	.uaword	0xc8d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_IOCR8"
	.byte	0x8
	.uahalf	0x25b
	.uaword	0x2051
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x25e
	.uaword	0x20b5
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x261
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x263
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x265
	.uaword	0xced
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_LPCR0"
	.byte	0x8
	.uahalf	0x266
	.uaword	0x208d
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x269
	.uaword	0x20ff
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x26c
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x26e
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x270
	.uaword	0xd4d
	.uleb128 0xc
	.string	"B_P21"
	.byte	0x8
	.uahalf	0x272
	.uaword	0xddd
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_LPCR1"
	.byte	0x8
	.uahalf	0x273
	.uaword	0x20c9
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x276
	.uaword	0x213b
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x279
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x27b
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x27d
	.uaword	0xeb8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_LPCR2"
	.byte	0x8
	.uahalf	0x27e
	.uaword	0x2113
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x281
	.uaword	0x2177
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x284
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x286
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x288
	.uaword	0x125c
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMCR"
	.byte	0x8
	.uahalf	0x289
	.uaword	0x214f
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x28c
	.uaword	0x21b2
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x28f
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x291
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x293
	.uaword	0xf49
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMCR0"
	.byte	0x8
	.uahalf	0x294
	.uaword	0x218a
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x297
	.uaword	0x21ee
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x29a
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x29c
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x29e
	.uaword	0xfd0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMCR12"
	.byte	0x8
	.uahalf	0x29f
	.uaword	0x21c6
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x2a2
	.uaword	0x222b
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x2a5
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x2a7
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x2a9
	.uaword	0x1067
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMCR4"
	.byte	0x8
	.uahalf	0x2aa
	.uaword	0x2203
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ad
	.uaword	0x2267
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x2b0
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x2b2
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x2b4
	.uaword	0x1102
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMCR8"
	.byte	0x8
	.uahalf	0x2b5
	.uaword	0x223f
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x2b8
	.uaword	0x22a3
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x2bb
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x2bd
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x2bf
	.uaword	0x14aa
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMR"
	.byte	0x8
	.uahalf	0x2c0
	.uaword	0x227b
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x2c3
	.uaword	0x22dd
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x2c6
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x2c8
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x2ca
	.uaword	0x1845
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMSR"
	.byte	0x8
	.uahalf	0x2cb
	.uaword	0x22b5
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ce
	.uaword	0x2318
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x2d1
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x2d3
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x2d5
	.uaword	0x1534
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMSR0"
	.byte	0x8
	.uahalf	0x2d6
	.uaword	0x22f0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x2354
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x2dc
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x2de
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x2e0
	.uaword	0x15ce
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMSR12"
	.byte	0x8
	.uahalf	0x2e1
	.uaword	0x232c
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x2e4
	.uaword	0x2391
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x2e7
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x2e9
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x2eb
	.uaword	0x1664
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMSR4"
	.byte	0x8
	.uahalf	0x2ec
	.uaword	0x2369
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ef
	.uaword	0x23cd
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x2f2
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x2f4
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x2f6
	.uaword	0x16fb
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OMSR8"
	.byte	0x8
	.uahalf	0x2f7
	.uaword	0x23a5
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x2fa
	.uaword	0x2409
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x2fd
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x2ff
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x301
	.uaword	0x197d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_OUT"
	.byte	0x8
	.uahalf	0x302
	.uaword	0x23e1
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x305
	.uaword	0x2443
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x308
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x30a
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x30c
	.uaword	0x1a81
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_PCSR"
	.byte	0x8
	.uahalf	0x30d
	.uaword	0x241b
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x310
	.uaword	0x247e
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x313
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x315
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x317
	.uaword	0x1beb
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_PDISC"
	.byte	0x8
	.uahalf	0x318
	.uaword	0x2456
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x31b
	.uaword	0x24ba
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x31e
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x320
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x322
	.uaword	0x1d1f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_PDR0"
	.byte	0x8
	.uahalf	0x323
	.uaword	0x2492
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x326
	.uaword	0x24f5
	.uleb128 0xc
	.string	"U"
	.byte	0x8
	.uahalf	0x329
	.uaword	0x2f3
	.uleb128 0xc
	.string	"I"
	.byte	0x8
	.uahalf	0x32b
	.uaword	0x195
	.uleb128 0xc
	.string	"B"
	.byte	0x8
	.uahalf	0x32d
	.uaword	0x1e5e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P_PDR1"
	.byte	0x8
	.uahalf	0x32e
	.uaword	0x24cd
	.uleb128 0x16
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x8
	.uahalf	0x339
	.uaword	0x2749
	.uleb128 0x17
	.string	"OUT"
	.byte	0x8
	.uahalf	0x33b
	.uaword	0x2409
	.byte	0
	.uleb128 0x17
	.string	"OMR"
	.byte	0x8
	.uahalf	0x33c
	.uaword	0x22a3
	.byte	0x4
	.uleb128 0x17
	.string	"ID"
	.byte	0x8
	.uahalf	0x33d
	.uaword	0x1f52
	.byte	0x8
	.uleb128 0x17
	.string	"reserved_C"
	.byte	0x8
	.uahalf	0x33e
	.uaword	0x3c3
	.byte	0xc
	.uleb128 0x17
	.string	"IOCR0"
	.byte	0x8
	.uahalf	0x33f
	.uaword	0x1fc4
	.byte	0x10
	.uleb128 0x17
	.string	"IOCR4"
	.byte	0x8
	.uahalf	0x340
	.uaword	0x203d
	.byte	0x14
	.uleb128 0x17
	.string	"IOCR8"
	.byte	0x8
	.uahalf	0x341
	.uaword	0x2079
	.byte	0x18
	.uleb128 0x17
	.string	"IOCR12"
	.byte	0x8
	.uahalf	0x342
	.uaword	0x2000
	.byte	0x1c
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x343
	.uaword	0x3c3
	.byte	0x20
	.uleb128 0x17
	.string	"IN"
	.byte	0x8
	.uahalf	0x344
	.uaword	0x1f8b
	.byte	0x24
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x345
	.uaword	0x3d3
	.byte	0x28
	.uleb128 0x17
	.string	"PDR0"
	.byte	0x8
	.uahalf	0x346
	.uaword	0x24ba
	.byte	0x40
	.uleb128 0x17
	.string	"PDR1"
	.byte	0x8
	.uahalf	0x347
	.uaword	0x24f5
	.byte	0x44
	.uleb128 0x17
	.string	"reserved_48"
	.byte	0x8
	.uahalf	0x348
	.uaword	0x3b3
	.byte	0x48
	.uleb128 0x17
	.string	"ESR"
	.byte	0x8
	.uahalf	0x349
	.uaword	0x1f18
	.byte	0x50
	.uleb128 0x17
	.string	"reserved_54"
	.byte	0x8
	.uahalf	0x34a
	.uaword	0x3e3
	.byte	0x54
	.uleb128 0x17
	.string	"PDISC"
	.byte	0x8
	.uahalf	0x34b
	.uaword	0x247e
	.byte	0x60
	.uleb128 0x17
	.string	"PCSR"
	.byte	0x8
	.uahalf	0x34c
	.uaword	0x2443
	.byte	0x64
	.uleb128 0x17
	.string	"reserved_68"
	.byte	0x8
	.uahalf	0x34d
	.uaword	0x3b3
	.byte	0x68
	.uleb128 0x17
	.string	"OMSR0"
	.byte	0x8
	.uahalf	0x34e
	.uaword	0x2318
	.byte	0x70
	.uleb128 0x17
	.string	"OMSR4"
	.byte	0x8
	.uahalf	0x34f
	.uaword	0x2391
	.byte	0x74
	.uleb128 0x17
	.string	"OMSR8"
	.byte	0x8
	.uahalf	0x350
	.uaword	0x23cd
	.byte	0x78
	.uleb128 0x17
	.string	"OMSR12"
	.byte	0x8
	.uahalf	0x351
	.uaword	0x2354
	.byte	0x7c
	.uleb128 0x17
	.string	"OMCR0"
	.byte	0x8
	.uahalf	0x352
	.uaword	0x21b2
	.byte	0x80
	.uleb128 0x17
	.string	"OMCR4"
	.byte	0x8
	.uahalf	0x353
	.uaword	0x222b
	.byte	0x84
	.uleb128 0x17
	.string	"OMCR8"
	.byte	0x8
	.uahalf	0x354
	.uaword	0x2267
	.byte	0x88
	.uleb128 0x17
	.string	"OMCR12"
	.byte	0x8
	.uahalf	0x355
	.uaword	0x21ee
	.byte	0x8c
	.uleb128 0x17
	.string	"OMSR"
	.byte	0x8
	.uahalf	0x356
	.uaword	0x22dd
	.byte	0x90
	.uleb128 0x17
	.string	"OMCR"
	.byte	0x8
	.uahalf	0x357
	.uaword	0x2177
	.byte	0x94
	.uleb128 0x17
	.string	"reserved_98"
	.byte	0x8
	.uahalf	0x358
	.uaword	0x3b3
	.byte	0x98
	.uleb128 0x17
	.string	"LPCR0"
	.byte	0x8
	.uahalf	0x359
	.uaword	0x20b5
	.byte	0xa0
	.uleb128 0x17
	.string	"LPCR1"
	.byte	0x8
	.uahalf	0x35a
	.uaword	0x20ff
	.byte	0xa4
	.uleb128 0x17
	.string	"LPCR2"
	.byte	0x8
	.uahalf	0x35b
	.uaword	0x213b
	.byte	0xa8
	.uleb128 0x17
	.string	"reserved_A4"
	.byte	0x8
	.uahalf	0x35c
	.uaword	0x2749
	.byte	0xac
	.uleb128 0x17
	.string	"ACCEN1"
	.byte	0x8
	.uahalf	0x35d
	.uaword	0x1edb
	.byte	0xf8
	.uleb128 0x17
	.string	"ACCEN0"
	.byte	0x8
	.uahalf	0x35e
	.uaword	0x1e9e
	.byte	0xfc
	.byte	0
	.uleb128 0xe
	.uaword	0x1d8
	.uaword	0x2759
	.uleb128 0xf
	.uaword	0x3a7
	.byte	0x4b
	.byte	0
	.uleb128 0xd
	.string	"Ifx_P"
	.byte	0x8
	.uahalf	0x35f
	.uaword	0x2767
	.uleb128 0x8
	.uaword	0x2508
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2759
	.uleb128 0x10
	.byte	0x4
	.byte	0x3
	.byte	0x40
	.uaword	0x27f2
	.uleb128 0x11
	.string	"IfxPort_InputMode_undefined"
	.sleb128 -1
	.uleb128 0x11
	.string	"IfxPort_InputMode_noPullDevice"
	.sleb128 0
	.uleb128 0x11
	.string	"IfxPort_InputMode_pullDown"
	.sleb128 8
	.uleb128 0x11
	.string	"IfxPort_InputMode_pullUp"
	.sleb128 16
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x3
	.byte	0x4c
	.uaword	0x2a92
	.uleb128 0x11
	.string	"IfxPort_Mode_inputNoPullDevice"
	.sleb128 0
	.uleb128 0x11
	.string	"IfxPort_Mode_inputPullDown"
	.sleb128 8
	.uleb128 0x11
	.string	"IfxPort_Mode_inputPullUp"
	.sleb128 16
	.uleb128 0x11
	.string	"IfxPort_Mode_outputPushPullGeneral"
	.sleb128 128
	.uleb128 0x11
	.string	"IfxPort_Mode_outputPushPullAlt1"
	.sleb128 136
	.uleb128 0x11
	.string	"IfxPort_Mode_outputPushPullAlt2"
	.sleb128 144
	.uleb128 0x11
	.string	"IfxPort_Mode_outputPushPullAlt3"
	.sleb128 152
	.uleb128 0x11
	.string	"IfxPort_Mode_outputPushPullAlt4"
	.sleb128 160
	.uleb128 0x11
	.string	"IfxPort_Mode_outputPushPullAlt5"
	.sleb128 168
	.uleb128 0x11
	.string	"IfxPort_Mode_outputPushPullAlt6"
	.sleb128 176
	.uleb128 0x11
	.string	"IfxPort_Mode_outputPushPullAlt7"
	.sleb128 184
	.uleb128 0x11
	.string	"IfxPort_Mode_outputOpenDrainGeneral"
	.sleb128 192
	.uleb128 0x11
	.string	"IfxPort_Mode_outputOpenDrainAlt1"
	.sleb128 200
	.uleb128 0x11
	.string	"IfxPort_Mode_outputOpenDrainAlt2"
	.sleb128 208
	.uleb128 0x11
	.string	"IfxPort_Mode_outputOpenDrainAlt3"
	.sleb128 216
	.uleb128 0x11
	.string	"IfxPort_Mode_outputOpenDrainAlt4"
	.sleb128 224
	.uleb128 0x11
	.string	"IfxPort_Mode_outputOpenDrainAlt5"
	.sleb128 232
	.uleb128 0x11
	.string	"IfxPort_Mode_outputOpenDrainAlt6"
	.sleb128 240
	.uleb128 0x11
	.string	"IfxPort_Mode_outputOpenDrainAlt7"
	.sleb128 248
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x3
	.byte	0x73
	.uaword	0x2ada
	.uleb128 0x11
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x11
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x3
	.byte	0x7d
	.uaword	0x2c7b
	.uleb128 0x11
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x11
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x11
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x11
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x11
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0x11
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0x11
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0x11
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0x11
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x11
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x11
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x11
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x3
	.byte	0x99
	.uaword	0x2ce4
	.uleb128 0x11
	.string	"IfxPort_State_notChanged"
	.sleb128 0
	.uleb128 0x11
	.string	"IfxPort_State_high"
	.sleb128 1
	.uleb128 0x11
	.string	"IfxPort_State_low"
	.sleb128 65536
	.uleb128 0x11
	.string	"IfxPort_State_toggled"
	.sleb128 65537
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_State"
	.byte	0x3
	.byte	0x9e
	.uaword	0x2c7b
	.uleb128 0x3
	.string	"IfxCpu_mutexLock"
	.byte	0x2
	.byte	0x62
	.uaword	0x2f3
	.uleb128 0x3
	.string	"IfxCpu_syncEvent"
	.byte	0x2
	.byte	0x66
	.uaword	0x2f3
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x32
	.uaword	0x2d79
	.uleb128 0x11
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x11
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 1
	.uleb128 0x11
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 2
	.uleb128 0x11
	.string	"IfxSrc_Tos_dma"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0x9
	.byte	0x37
	.uaword	0x2d29
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.byte	0xd1
	.uaword	0x2f48
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_4"
	.sleb128 3
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_5"
	.sleb128 4
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_6"
	.sleb128 5
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_7"
	.sleb128 6
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_8"
	.sleb128 7
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_9"
	.sleb128 8
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_10"
	.sleb128 9
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_11"
	.sleb128 10
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_12"
	.sleb128 11
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_13"
	.sleb128 12
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_14"
	.sleb128 13
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_15"
	.sleb128 14
	.uleb128 0x11
	.string	"IfxAsclin_OversamplingFactor_16"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_OversamplingFactor"
	.byte	0xa
	.byte	0xdf
	.uaword	0x2d8b
	.uleb128 0x6
	.byte	0xc
	.byte	0xb
	.byte	0xf5
	.uaword	0x2fad
	.uleb128 0x7
	.string	"baudrate"
	.byte	0xb
	.byte	0xf7
	.uaword	0x244
	.byte	0
	.uleb128 0x7
	.string	"prescaler"
	.byte	0xb
	.byte	0xf8
	.uaword	0x204
	.byte	0x4
	.uleb128 0x7
	.string	"oversampling"
	.byte	0xb
	.byte	0xf9
	.uaword	0x2f48
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Asc_BaudRate"
	.byte	0xb
	.byte	0xfa
	.uaword	0x2f6c
	.uleb128 0x19
	.byte	0xc
	.byte	0xb
	.uahalf	0x11e
	.uaword	0x3028
	.uleb128 0x17
	.string	"txPriority"
	.byte	0xb
	.uahalf	0x120
	.uaword	0x204
	.byte	0
	.uleb128 0x17
	.string	"rxPriority"
	.byte	0xb
	.uahalf	0x121
	.uaword	0x204
	.byte	0x2
	.uleb128 0x17
	.string	"erPriority"
	.byte	0xb
	.uahalf	0x122
	.uaword	0x204
	.byte	0x4
	.uleb128 0x17
	.string	"typeOfService"
	.byte	0xb
	.uahalf	0x123
	.uaword	0x2d79
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"IfxAsclin_Asc_InterruptConfig"
	.byte	0xb
	.uahalf	0x124
	.uaword	0x2fcb
	.uleb128 0x10
	.byte	0x4
	.byte	0xc
	.byte	0x34
	.uaword	0x3093
	.uleb128 0x11
	.string	"P14_0_OUT"
	.sleb128 0
	.uleb128 0x11
	.string	"P14_1_OUT"
	.sleb128 1
	.uleb128 0x11
	.string	"P15_2_OUT"
	.sleb128 2
	.uleb128 0x11
	.string	"P15_3_OUT"
	.sleb128 3
	.uleb128 0x11
	.string	"P34_1_OUT"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_uart_txpin_module0_t"
	.byte	0xc
	.byte	0x3a
	.uaword	0x304e
	.uleb128 0x10
	.byte	0x4
	.byte	0xc
	.byte	0x3d
	.uaword	0x3146
	.uleb128 0x11
	.string	"P02_2_OUT"
	.sleb128 0
	.uleb128 0x11
	.string	"P11_12_OUT"
	.sleb128 1
	.uleb128 0x11
	.string	"P14_10_OUT"
	.sleb128 2
	.uleb128 0x11
	.string	"P15_0_OUT"
	.sleb128 3
	.uleb128 0x11
	.string	"P15_1_OUT"
	.sleb128 4
	.uleb128 0x11
	.string	"P15_4_OUT"
	.sleb128 5
	.uleb128 0x11
	.string	"P15_5_OUT"
	.sleb128 6
	.uleb128 0x11
	.string	"P20_10_OUT"
	.sleb128 7
	.uleb128 0x11
	.string	"P33_12_OUT"
	.sleb128 8
	.uleb128 0x11
	.string	"P33_13_OUT"
	.sleb128 9
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_uart_txpin_module1_t"
	.byte	0xc
	.byte	0x48
	.uaword	0x30c0
	.uleb128 0x10
	.byte	0x4
	.byte	0xc
	.byte	0x4b
	.uaword	0x31dc
	.uleb128 0x11
	.string	"P02_0_OUT"
	.sleb128 0
	.uleb128 0x11
	.string	"P02_9_OUT"
	.sleb128 1
	.uleb128 0x11
	.string	"P10_5_OUT"
	.sleb128 2
	.uleb128 0x11
	.string	"P14_2_OUT"
	.sleb128 3
	.uleb128 0x11
	.string	"P14_3_OUT"
	.sleb128 4
	.uleb128 0x11
	.string	"P32_5_OUT"
	.sleb128 5
	.uleb128 0x11
	.string	"P33_8_OUT"
	.sleb128 6
	.uleb128 0x11
	.string	"P33_9_OUT"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_uart_txpin_module2_t"
	.byte	0xc
	.byte	0x54
	.uaword	0x3173
	.uleb128 0x10
	.byte	0x4
	.byte	0xc
	.byte	0x57
	.uaword	0x32ae
	.uleb128 0x11
	.string	"P00_0_OUT"
	.sleb128 0
	.uleb128 0x11
	.string	"P00_1_OUT"
	.sleb128 1
	.uleb128 0x11
	.string	"P11_0_OUT"
	.sleb128 2
	.uleb128 0x11
	.string	"P11_1_OUT"
	.sleb128 3
	.uleb128 0x11
	.string	"P15_6_OUT"
	.sleb128 4
	.uleb128 0x11
	.string	"P15_7_OUT"
	.sleb128 5
	.uleb128 0x11
	.string	"P20_0_OUT"
	.sleb128 6
	.uleb128 0x11
	.string	"P20_3_OUT"
	.sleb128 7
	.uleb128 0x11
	.string	"P21_7_OUT"
	.sleb128 8
	.uleb128 0x11
	.string	"P22_0_OUT"
	.sleb128 9
	.uleb128 0x11
	.string	"P22_1_OUT"
	.sleb128 10
	.uleb128 0x11
	.string	"P32_2_OUT"
	.sleb128 11
	.uleb128 0x11
	.string	"P32_3_OUT"
	.sleb128 12
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_uart_txpin_module3_t"
	.byte	0xc
	.byte	0x65
	.uaword	0x3209
	.uleb128 0x10
	.byte	0x4
	.byte	0xc
	.byte	0x68
	.uaword	0x330f
	.uleb128 0x11
	.string	"P14_1_IN"
	.sleb128 0
	.uleb128 0x11
	.string	"P15_3_IN"
	.sleb128 1
	.uleb128 0x11
	.string	"INVALID"
	.sleb128 2
	.uleb128 0x11
	.string	"P34_2_IN"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_uart_rxpin_module0_t"
	.byte	0xc
	.byte	0x6d
	.uaword	0x32db
	.uleb128 0x10
	.byte	0x4
	.byte	0xc
	.byte	0x70
	.uaword	0x3394
	.uleb128 0x11
	.string	"P15_1_IN"
	.sleb128 0
	.uleb128 0x11
	.string	"P15_5_IN"
	.sleb128 1
	.uleb128 0x11
	.string	"P20_9_IN"
	.sleb128 2
	.uleb128 0x11
	.string	"P14_8_IN"
	.sleb128 3
	.uleb128 0x11
	.string	"P11_10_IN"
	.sleb128 4
	.uleb128 0x11
	.string	"P33_13_IN"
	.sleb128 5
	.uleb128 0x11
	.string	"P02_3_IN"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_uart_rxpin_module1_t"
	.byte	0xc
	.byte	0x78
	.uaword	0x333c
	.uleb128 0x10
	.byte	0x4
	.byte	0xc
	.byte	0x7b
	.uaword	0x3418
	.uleb128 0x11
	.string	"P14_3_IN"
	.sleb128 0
	.uleb128 0x11
	.string	"P02_1_IN"
	.sleb128 1
	.uleb128 0x11
	.string	"P02_10_IN"
	.sleb128 2
	.uleb128 0x11
	.string	"P10_6_IN"
	.sleb128 3
	.uleb128 0x11
	.string	"P33_8_IN"
	.sleb128 4
	.uleb128 0x11
	.string	"P32_6_IN"
	.sleb128 5
	.uleb128 0x11
	.string	"P02_0_IN"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_uart_rxpin_module2_t"
	.byte	0xc
	.byte	0x83
	.uaword	0x33c1
	.uleb128 0x10
	.byte	0x4
	.byte	0xc
	.byte	0x86
	.uaword	0x34a6
	.uleb128 0x11
	.string	"P15_7_IN"
	.sleb128 0
	.uleb128 0x11
	.string	"P11_0_IN"
	.sleb128 1
	.uleb128 0x11
	.string	"P20_3_IN"
	.sleb128 2
	.uleb128 0x11
	.string	"P32_2_IN"
	.sleb128 3
	.uleb128 0x11
	.string	"P00_1_IN"
	.sleb128 4
	.uleb128 0x11
	.string	"P21_6_IN"
	.sleb128 5
	.uleb128 0x11
	.string	"P21_2_IN"
	.sleb128 6
	.uleb128 0x11
	.string	"P21_3_IN"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_uart_rxpin_module3_t"
	.byte	0xc
	.byte	0x90
	.uaword	0x3445
	.uleb128 0x6
	.byte	0x10
	.byte	0xc
	.byte	0x96
	.uaword	0x3550
	.uleb128 0x7
	.string	"uart_module_0_txpins"
	.byte	0xc
	.byte	0x98
	.uaword	0x3093
	.byte	0
	.uleb128 0x7
	.string	"uart_module_1_txpins"
	.byte	0xc
	.byte	0x99
	.uaword	0x3146
	.byte	0x4
	.uleb128 0x7
	.string	"uart_module_2_txpins"
	.byte	0xc
	.byte	0x9a
	.uaword	0x31dc
	.byte	0x8
	.uleb128 0x7
	.string	"uart_module_3_txpins"
	.byte	0xc
	.byte	0x9b
	.uaword	0x32ae
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_txpin_t"
	.byte	0xc
	.byte	0x9d
	.uaword	0x34d3
	.uleb128 0x6
	.byte	0x10
	.byte	0xc
	.byte	0x9f
	.uaword	0x35ed
	.uleb128 0x7
	.string	"uart_module_0_rxpins"
	.byte	0xc
	.byte	0xa1
	.uaword	0x330f
	.byte	0
	.uleb128 0x7
	.string	"uart_module_1_rxpins"
	.byte	0xc
	.byte	0xa2
	.uaword	0x3394
	.byte	0x4
	.uleb128 0x7
	.string	"uart_module_2_rxpins"
	.byte	0xc
	.byte	0xa3
	.uaword	0x3418
	.byte	0x8
	.uleb128 0x7
	.string	"uart_module_3_rxpins"
	.byte	0xc
	.byte	0xa4
	.uaword	0x34a6
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_rxpin_t"
	.byte	0xc
	.byte	0xa6
	.uaword	0x3570
	.uleb128 0x6
	.byte	0x20
	.byte	0xc
	.byte	0xa8
	.uaword	0x363e
	.uleb128 0x7
	.string	"uart_rx_pin"
	.byte	0xc
	.byte	0xaa
	.uaword	0x35ed
	.byte	0
	.uleb128 0x7
	.string	"uart_tx_pin"
	.byte	0xc
	.byte	0xab
	.uaword	0x3550
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_uart_rxtxpin_t"
	.byte	0xc
	.byte	0xad
	.uaword	0x360d
	.uleb128 0x1a
	.uahalf	0x490
	.byte	0xc
	.byte	0xaf
	.uaword	0x3685
	.uleb128 0x7
	.string	"tx"
	.byte	0xc
	.byte	0xb1
	.uaword	0x3685
	.byte	0
	.uleb128 0x7
	.string	"rx"
	.byte	0xc
	.byte	0xb2
	.uaword	0x3695
	.byte	0x68
	.byte	0
	.uleb128 0xe
	.uaword	0x1cb
	.uaword	0x3695
	.uleb128 0xf
	.uaword	0x3a7
	.byte	0x67
	.byte	0
	.uleb128 0xe
	.uaword	0x1cb
	.uaword	0x36a6
	.uleb128 0x1b
	.uaword	0x3a7
	.uahalf	0x427
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_asc_buffer"
	.byte	0xc
	.byte	0xb3
	.uaword	0x3665
	.uleb128 0x1a
	.uahalf	0x4d0
	.byte	0xc
	.byte	0xb5
	.uaword	0x376f
	.uleb128 0x7
	.string	"uart_module_id"
	.byte	0xc
	.byte	0xb7
	.uaword	0x1cb
	.byte	0
	.uleb128 0x7
	.string	"uart_Pins"
	.byte	0xc
	.byte	0xb8
	.uaword	0x363e
	.byte	0x4
	.uleb128 0x7
	.string	"uart_pinmode_rx"
	.byte	0xc
	.byte	0xb9
	.uaword	0x1cb
	.byte	0x24
	.uleb128 0x7
	.string	"uart_pinmode_tx"
	.byte	0xc
	.byte	0xba
	.uaword	0x1cb
	.byte	0x25
	.uleb128 0x7
	.string	"uart_Buffer"
	.byte	0xc
	.byte	0xbb
	.uaword	0x36a6
	.byte	0x26
	.uleb128 0x1c
	.string	"uart_baudrate"
	.byte	0xc
	.byte	0xbc
	.uaword	0x2fad
	.uahalf	0x4b8
	.uleb128 0x1c
	.string	"uart_interrupt"
	.byte	0xc
	.byte	0xbd
	.uaword	0x3028
	.uahalf	0x4c4
	.byte	0
	.uleb128 0x3
	.string	"_aurix_tc27x_app_uart_t"
	.byte	0xc
	.byte	0xbe
	.uaword	0x36c9
	.uleb128 0x1d
	.string	"IfxPort_setPinState"
	.byte	0x3
	.uahalf	0x23c
	.byte	0x1
	.byte	0x3
	.uaword	0x37d5
	.uleb128 0x1e
	.string	"port"
	.byte	0x3
	.uahalf	0x23c
	.uaword	0x276c
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x23c
	.uaword	0x1cb
	.uleb128 0x1e
	.string	"action"
	.byte	0x3
	.uahalf	0x23c
	.uaword	0x2ce4
	.byte	0
	.uleb128 0x20
	.string	"IfxCpu_getCoreIndex"
	.byte	0x2
	.uahalf	0x2fd
	.byte	0x1
	.uaword	0x4ab
	.byte	0x3
	.uaword	0x3814
	.uleb128 0x21
	.string	"reg"
	.byte	0x2
	.uahalf	0x2ff
	.uaword	0x38f
	.uleb128 0x22
	.uleb128 0x21
	.string	"__res"
	.byte	0x2
	.uahalf	0x300
	.uaword	0x2f3
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"IfxCpu_enableInterrupts"
	.byte	0x2
	.uahalf	0x28d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1d
	.string	"IfxPort_setPinLow"
	.byte	0x3
	.uahalf	0x22a
	.byte	0x1
	.byte	0x3
	.uaword	0x3868
	.uleb128 0x1e
	.string	"port"
	.byte	0x3
	.uahalf	0x22a
	.uaword	0x276c
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x22a
	.uaword	0x1cb
	.byte	0
	.uleb128 0x24
	.string	"uart_init_struct"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	.LFB494
	.uaword	.LFE494
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x38cf
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.byte	0x46
	.uaword	0x38cf
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x26
	.uaword	0x37d5
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x1
	.byte	0x4e
	.uleb128 0x27
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0x28
	.uaword	0x37f7
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x27
	.uaword	.LBB16
	.uaword	.LBE16
	.uleb128 0x28
	.uaword	0x3804
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x376f
	.uleb128 0x29
	.byte	0x1
	.string	"core0_main"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	0x195
	.uaword	.LFB495
	.uaword	.LFE495
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3a6e
	.uleb128 0x2a
	.uaword	.LASF9
	.byte	0x1
	.byte	0x5d
	.uaword	0x376f
	.byte	0x3
	.byte	0x8e
	.sleb128 -1268
	.uleb128 0x2b
	.string	"idx"
	.byte	0x1
	.byte	0x5e
	.uaword	0x204
	.byte	0x2
	.byte	0x8e
	.sleb128 -2
	.uleb128 0x2b
	.string	"tx_buffer"
	.byte	0x1
	.byte	0x5f
	.uaword	0x3a6e
	.byte	0x3
	.byte	0x8e
	.sleb128 -1294
	.uleb128 0x2b
	.string	"rx_buffer"
	.byte	0x1
	.byte	0x60
	.uaword	0x3a6e
	.byte	0x3
	.byte	0x8e
	.sleb128 -1320
	.uleb128 0x2b
	.string	"rx_error"
	.byte	0x1
	.byte	0x61
	.uaword	0x3a6e
	.byte	0x3
	.byte	0x8e
	.sleb128 -1346
	.uleb128 0x2b
	.string	"tx_buffer_size"
	.byte	0x1
	.byte	0x62
	.uaword	0x204
	.byte	0x3
	.byte	0x8e
	.sleb128 -1348
	.uleb128 0x2b
	.string	"rx_buffer_size"
	.byte	0x1
	.byte	0x63
	.uaword	0x204
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x2b
	.string	"rx_fifo_bytes_available"
	.byte	0x1
	.byte	0x64
	.uaword	0x228
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x2b
	.string	"Correct_Command"
	.byte	0x1
	.byte	0x66
	.uaword	0x3a6e
	.byte	0x3
	.byte	0x8e
	.sleb128 -1374
	.uleb128 0x2b
	.string	"Wrong_Command"
	.byte	0x1
	.byte	0x67
	.uaword	0x3a6e
	.byte	0x3
	.byte	0x8e
	.sleb128 -1400
	.uleb128 0x2b
	.string	"String_Delimiter"
	.byte	0x1
	.byte	0x68
	.uaword	0x3a7e
	.byte	0x3
	.byte	0x8e
	.sleb128 -1402
	.uleb128 0x2c
	.uaword	0x3814
	.uaword	.LBB17
	.uaword	.LBE17
	.byte	0x1
	.byte	0x72
	.uleb128 0x2d
	.uaword	0x3832
	.uaword	.LBB19
	.uaword	.LBE19
	.byte	0x1
	.byte	0x77
	.uaword	0x3a54
	.uleb128 0x2e
	.uaword	0x385b
	.byte	0x2
	.byte	0x8e
	.sleb128 -21
	.uleb128 0x2e
	.uaword	0x384e
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x2f
	.uaword	0x378e
	.uaword	.LBB21
	.uaword	.LBE21
	.byte	0x3
	.uahalf	0x22c
	.uleb128 0x2e
	.uaword	0x37c5
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.uleb128 0x2e
	.uaword	0x37b9
	.byte	0x2
	.byte	0x8e
	.sleb128 -29
	.uleb128 0x2e
	.uaword	0x37ac
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LBB23
	.uaword	.LBE23
	.uleb128 0x2b
	.string	"time"
	.byte	0x1
	.byte	0xd9
	.uaword	0x266
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x1cb
	.uaword	0x3a7e
	.uleb128 0xf
	.uaword	0x3a7
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	0x1cb
	.uaword	0x3a8e
	.uleb128 0xf
	.uaword	0x3a7
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.uaword	0x2d4
	.uaword	0x3a9e
	.uleb128 0xf
	.uaword	0x3a7
	.byte	0x2
	.byte	0
	.uleb128 0x30
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x7
	.byte	0x96
	.uaword	0x3abb
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.uaword	0x3a8e
	.uleb128 0x32
	.string	"event"
	.byte	0x1
	.byte	0x39
	.uaword	0x2d11
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	event
	.uleb128 0x32
	.string	"syncTimeout_ms"
	.byte	0x1
	.byte	0x3a
	.uaword	0x236
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	syncTimeout_ms
	.uleb128 0x32
	.string	"time_command_mutex_C0_C1"
	.byte	0x1
	.byte	0x3d
	.uaword	0x2cf9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	time_command_mutex_C0_C1
	.uleb128 0x32
	.string	"time_command_mutex_C1_C0"
	.byte	0x1
	.byte	0x3e
	.uaword	0x2cf9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	time_command_mutex_C1_C0
	.uleb128 0xe
	.uaword	0x1cb
	.uaword	0x3b4f
	.uleb128 0xf
	.uaword	0x3a7
	.byte	0x7
	.byte	0
	.uleb128 0x32
	.string	"buffer_C0_C1"
	.byte	0x1
	.byte	0x3f
	.uaword	0x3b3f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	buffer_C0_C1
	.uleb128 0x32
	.string	"buffer_C1_C0"
	.byte	0x1
	.byte	0x40
	.uaword	0x3b3f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	buffer_C1_C0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_0"
.LASF4:
	.string	"reserved_2"
.LASF2:
	.string	"reserved_8"
.LASF8:
	.string	"pinIndex"
.LASF9:
	.string	"uart_struct"
.LASF7:
	.string	"reserved_12"
.LASF1:
	.string	"reserved_16"
.LASF5:
	.string	"reserved_20"
.LASF3:
	.string	"reserved_24"
.LASF6:
	.string	"reserved_28"
	.extern	IfxCpu_releaseMutex,STT_FUNC,0
	.extern	sprintf,STT_FUNC,0
	.extern	IfxCpu_getMutexStatus,STT_FUNC,0
	.extern	uart_app_send_byte,STT_FUNC,0
	.extern	memset,STT_FUNC,0
	.extern	IfxCpu_acquireMutex,STT_FUNC,0
	.extern	uart_app_send_nbyte,STT_FUNC,0
	.extern	memcpy,STT_FUNC,0
	.extern	strlen,STT_FUNC,0
	.extern	uart_app_receive_byte,STT_FUNC,0
	.extern	uart_app_getread_count,STT_FUNC,0
	.extern	IfxCpu_waitEvent,STT_FUNC,0
	.extern	IfxCpu_emitEvent,STT_FUNC,0
	.extern	uart_init,STT_FUNC,0
	.extern	IfxPort_setPinPadDriver,STT_FUNC,0
	.extern	IfxPort_setPinMode,STT_FUNC,0
	.extern	IfxScuWdt_disableSafetyWatchdog,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_disableCpuWatchdog,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
