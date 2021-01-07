	.file	"IfxAsclin_Spi.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	IfxAsclin_Spi_disableModule
	.type	IfxAsclin_Spi_disableModule, @function
IfxAsclin_Spi_disableModule:
.LFB363:
	.file 1 "0_Src/4_McHal/Tricore/Asclin/Spi/IfxAsclin_Spi.c"
	.loc 1 52 0
	mov.aa	%a14, %SP
.LCFI0:
	sub.a	%SP, 24
	st.a	[%a14] -20, %a4
	.loc 1 53 0
	ld.w	%d15, [%a14] -20
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	st.w	[%a14] -4, %d15
	.loc 1 54 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d15, %d2
	st.h	[%a14] -6, %d15
	.loc 1 55 0
	ld.hu	%d15, [%a14] -6
	mov	%d4, %d15
	call	IfxScuWdt_clearCpuEndinit
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -12, %d15
.LBB173:
.LBB174:
	.file 2 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
	.loc 2 2217 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	or	%d2, %d2, 1
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
.LBE174:
.LBE173:
	.loc 1 57 0
	ld.hu	%d15, [%a14] -6
	mov	%d4, %d15
	call	IfxScuWdt_setCpuEndinit
	.loc 1 58 0
	ret
.LFE363:
	.size	IfxAsclin_Spi_disableModule, .-IfxAsclin_Spi_disableModule
	.align 1
	.global	IfxAsclin_Spi_exchange
	.type	IfxAsclin_Spi_exchange, @function
IfxAsclin_Spi_exchange:
.LFB364:
	.loc 1 62 0
	mov.aa	%a14, %SP
.LCFI1:
	sub.a	%SP, 24
	st.a	[%a14] -12, %a4
	st.a	[%a14] -16, %a5
	st.a	[%a14] -20, %a6
	st.w	[%a14] -24, %d4
	.loc 1 63 0
	ld.a	%a4, [%a14] -12
	call	IfxAsclin_Spi_lock
	st.w	[%a14] -4, %d2
	.loc 1 65 0
	ld.w	%d15, [%a14] -4
	jnz	%d15, .L3
	.loc 1 67 0
	ld.w	%d15, [%a14] -12
	mov	%d2, 1
	mov.a	%a15, %d15
	st.b	[%a15] 24, %d2
	.loc 1 68 0
	ld.w	%d15, [%a14] -12
	ld.w	%d2, [%a14] -16
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 8, %d3
	.loc 1 69 0
	ld.w	%d15, [%a14] -12
	ld.w	%d2, [%a14] -24
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 12, %d3
	.loc 1 70 0
	ld.w	%d15, [%a14] -12
	ld.w	%d2, [%a14] -20
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 16, %d3
	.loc 1 71 0
	ld.w	%d15, [%a14] -12
	ld.w	%d2, [%a14] -24
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 20, %d3
	.loc 1 73 0
	ld.a	%a4, [%a14] -12
	call	IfxAsclin_Spi_write
.L3:
	.loc 1 76 0
	ld.w	%d15, [%a14] -4
	.loc 1 77 0
	mov	%d2, %d15
	ret
.LFE364:
	.size	IfxAsclin_Spi_exchange, .-IfxAsclin_Spi_exchange
	.align 1
	.global	IfxAsclin_Spi_getStatus
	.type	IfxAsclin_Spi_getStatus, @function
IfxAsclin_Spi_getStatus:
.LFB365:
	.loc 1 81 0
	mov.aa	%a14, %SP
.LCFI2:
	sub.a	%SP, 16
	st.a	[%a14] -12, %a4
	.loc 1 82 0
	mov	%d15, 0
	st.w	[%a14] -4, %d15
	.loc 1 84 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 24
	jnz	%d15, .L6
	.loc 1 84 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 28
	jz	%d15, .L7
.L6:
	.loc 1 86 0 is_stmt 1
	mov	%d15, 1
	st.w	[%a14] -4, %d15
.L7:
	.loc 1 89 0
	ld.w	%d15, [%a14] -4
	.loc 1 90 0
	mov	%d2, %d15
	ret
.LFE365:
	.size	IfxAsclin_Spi_getStatus, .-IfxAsclin_Spi_getStatus
	.align 1
	.global	IfxAsclin_Spi_initModule
	.type	IfxAsclin_Spi_initModule, @function
IfxAsclin_Spi_initModule:
.LFB366:
	.loc 1 94 0
	mov.aa	%a14, %SP
.LCFI3:
	lea	%SP, [%SP] -472
	st.a	[%a14] -468, %a4
	st.a	[%a14] -472, %a5
	.loc 1 95 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	st.w	[%a14] -4, %d15
	.loc 1 96 0
	mov	%d15, 1
	st.w	[%a14] -8, %d15
	.loc 1 98 0
	ld.w	%d15, [%a14] -468
	ld.w	%d2, [%a14] -4
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	.loc 1 99 0
	ld.a	%a4, [%a14] -4
	call	IfxAsclin_enableModule
	.loc 1 102 0
	ld.a	%a4, [%a14] -4
	mov	%d4, 0
	call	IfxAsclin_setClockSource
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -48, %d15
	mov	%d15, 0
	st.w	[%a14] -52, %d15
.LBB175:
.LBB176:
	.loc 2 2235 0
	ld.w	%d15, [%a14] -52
	and	%d15, 255
	and	%d15, %d15, 3
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -48
	and	%d2, %d2, 3
	sh	%d2, %d2, 16
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 24
	movh	%d4, 65533
	add	%d4, -1
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 24, %d3
.LBE176:
.LBE175:
	.loc 1 104 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 96
	ld.a	%a4, [%a14] -4
	mov	%d4, %d15
	call	IfxAsclin_setClockSource
	.loc 1 107 0
	ld.a	%a4, [%a14] -4
	mov	%d4, 0
	call	IfxAsclin_setClockSource
	.loc 1 108 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 4
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -56, %d2
	st.w	[%a14] -60, %d15
.LBB177:
.LBB178:
	.loc 2 2235 0
	ld.w	%d15, [%a14] -60
	and	%d15, 255
	and	%d15, %d15, 3
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -56
	and	%d2, %d2, 3
	sh	%d2, %d2, 16
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 24
	movh	%d4, 65533
	add	%d4, -1
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 24, %d3
.LBE178:
.LBE177:
	.loc 1 109 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.hu	%d15, [%a15] 28
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -64, %d2
	st.h	[%a14] -66, %d15
.LBB179:
.LBB180:
	.loc 2 2319 0
	ld.h	%d15, [%a14] -66
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
	mov	%d2, %d15
	mov	%d15, 4095
	and	%d15, %d2
	extr.u	%d2, %d15, 0, 16
	ld.w	%d15, [%a14] -64
	mov	%d3, 4095
	and	%d2, %d3
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 20
	mov	%d4, -4096
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 20, %d3
.LBE180:
.LBE179:
	.loc 1 110 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 96
	ld.a	%a4, [%a14] -4
	mov	%d4, %d15
	call	IfxAsclin_setClockSource
	.loc 1 112 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 32
	add	%d15, 1
	sh	%d15, -1
	st.w	[%a14] -12, %d15
	.loc 1 115 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 24
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 32
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 36
	ld.a	%a4, [%a14] -4
	mov	%d4, %d2
	mov	%d5, %d3
	ld.w	%d6, [%a14] -12
	mov	%d7, %d15
	call	IfxAsclin_setBitTiming
	mov	%d15, %d2
	st.w	[%a14] -8, %d15
	.loc 1 120 0
	ld.a	%a4, [%a14] -4
	mov	%d4, 0
	call	IfxAsclin_setClockSource
	.loc 1 123 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 8
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -72, %d2
	st.w	[%a14] -76, %d15
.LBB181:
.LBB182:
	.loc 2 2349 0
	ld.w	%d15, [%a14] -76
	and	%d15, 255
	and	%d15, %d15, 7
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -72
	and	%d2, %d2, 7
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 4
	andn	%d3, %d3, ~(-8)
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 4, %d3
.LBE182:
.LBE181:
	.loc 1 124 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 12
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -80, %d2
	st.w	[%a14] -84, %d15
.LBB183:
.LBB184:
	.loc 2 2193 0
	ld.w	%d15, [%a14] -84
	and	%d15, 255
	and	%d15, %d15, 1
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -80
	and	%d2, %d2, 1
	sh	%d2, %d2, 26
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 4
	movh	%d4, 64512
	add	%d4, -1
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 4, %d3
.LBE184:
.LBE183:
	.loc 1 125 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 16
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -88, %d2
	st.w	[%a14] -92, %d15
.LBB185:
.LBB186:
	.loc 2 2373 0
	ld.w	%d15, [%a14] -92
	and	%d15, 255
	and	%d15, %d15, 1
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -88
	and	%d2, %d2, 1
	sh	%d2, %d2, 27
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 4
	movh	%d4, 63488
	add	%d4, -1
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 4, %d3
.LBE186:
.LBE185:
	.loc 1 126 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 20
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -96, %d2
	st.b	[%a14] -97, %d15
.LBB187:
.LBB188:
	.loc 2 1794 0
	ld.bu	%d15, [%a14] -97
	ne	%d15, %d15, 0
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -96
	and	%d2, %d2, 1
	sh	%d2, %d2, 28
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 4
	movh	%d4, 61440
	add	%d4, -1
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 4, %d3
.LBE188:
.LBE187:
	.loc 1 129 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 40
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -104, %d2
	st.w	[%a14] -108, %d15
.LBB189:
.LBB190:
	.loc 2 2247 0
	ld.w	%d15, [%a14] -108
	and	%d15, 255
	and	%d15, %d15, 7
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -104
	and	%d2, %d2, 7
	sh	%d2, 6
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 24
	andn	%d3, %d3, ~(-449)
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 24, %d3
.LBE190:
.LBE189:
	.loc 1 130 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 48
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -112, %d2
	st.w	[%a14] -116, %d15
.LBB191:
.LBB192:
	.loc 2 2265 0
	ld.w	%d15, [%a14] -116
	and	%d15, 255
	and	%d15, %d15, 7
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -112
	and	%d2, %d2, 7
	sh	%d2, %d2, 12
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 24
	mov	%d4, -28673
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 24, %d3
.LBE192:
.LBE191:
	.loc 1 131 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 44
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -120, %d2
	st.w	[%a14] -124, %d15
.LBB193:
.LBB194:
	.loc 2 2388 0
	ld.w	%d15, [%a14] -124
	and	%d15, 255
	and	%d15, %d15, 7
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -120
	and	%d2, %d2, 7
	sh	%d2, %d2, 9
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 24
	mov	%d4, -3585
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 24, %d3
.LBE194:
.LBE193:
	.loc 1 132 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 52
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -128, %d2
	st.w	[%a14] -132, %d15
.LBB195:
.LBB196:
	.loc 2 2367 0
	ld.w	%d15, [%a14] -132
	and	%d15, 255
	and	%d15, %d15, 1
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -128
	and	%d2, %d2, 1
	sh	%d2, %d2, 28
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 24
	movh	%d4, 61440
	add	%d4, -1
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 24, %d3
.LBE196:
.LBE195:
	.loc 1 135 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 56
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -136, %d2
	st.w	[%a14] -140, %d15
.LBB197:
.LBB198:
	.loc 2 2205 0
	ld.w	%d15, [%a14] -140
	and	%d15, 255
	and	%d15, %d15, 15
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -136
	and	%d2, %d2, 15
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 28
	andn	%d3, %d3, ~(-16)
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 28, %d3
.LBE198:
.LBE197:
	.loc 1 139 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 56
	jge.u	%d15, 9, .L10
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -144, %d15
	mov	%d15, 1
	st.w	[%a14] -148, %d15
.LBB199:
.LBB200:
	.loc 2 2423 0
	ld.w	%d15, [%a14] -148
	and	%d15, 255
	and	%d15, %d15, 3
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -144
	and	%d2, %d2, 3
	sh	%d2, 6
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 12
	andn	%d3, %d3, ~(-193)
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 12, %d3
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -152, %d15
	mov	%d15, 1
	st.w	[%a14] -156, %d15
.LBE200:
.LBE199:
.LBB201:
.LBB202:
	.loc 2 2343 0
	ld.w	%d15, [%a14] -156
	and	%d15, 255
	and	%d15, %d15, 3
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -152
	and	%d2, %d2, 3
	sh	%d2, 6
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 16
	andn	%d3, %d3, ~(-193)
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 16, %d3
.LBE202:
.LBE201:
	.loc 1 143 0
	ld.w	%d15, [%a14] -468
	mov	%d2, 1
	mov.a	%a15, %d15
	st.b	[%a15] 32, %d2
	j	.L11
.L10:
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -160, %d15
	mov	%d15, 2
	st.w	[%a14] -164, %d15
.LBB203:
.LBB204:
	.loc 2 2423 0
	ld.w	%d15, [%a14] -164
	and	%d15, 255
	and	%d15, %d15, 3
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -160
	and	%d2, %d2, 3
	sh	%d2, 6
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 12
	andn	%d3, %d3, ~(-193)
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 12, %d3
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -168, %d15
	mov	%d15, 2
	st.w	[%a14] -172, %d15
.LBE204:
.LBE203:
.LBB205:
.LBB206:
	.loc 2 2343 0
	ld.w	%d15, [%a14] -172
	and	%d15, 255
	and	%d15, %d15, 3
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -168
	and	%d2, %d2, 3
	sh	%d2, 6
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 16
	andn	%d3, %d3, ~(-193)
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 16, %d3
.LBE206:
.LBE205:
	.loc 1 150 0
	ld.w	%d15, [%a14] -468
	mov	%d2, 2
	mov.a	%a15, %d15
	st.b	[%a15] 32, %d2
.L11:
	.loc 1 153 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 76
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -176, %d2
	st.w	[%a14] -180, %d15
.LBB207:
.LBB208:
	.loc 2 2331 0
	ld.w	%d15, [%a14] -180
	and	%d15, 255
	and	%d15, %d15, 1
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -176
	sh	%d2, %d2, 31
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 16
	mov	%d4, -1
	sh	%d4, -1
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 16, %d3
.LBE208:
.LBE207:
	.loc 1 154 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 64
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -184, %d2
	st.w	[%a14] -188, %d15
	ld.w	%d15, [%a14] -188
	st.w	[%a14] -192, %d15
	mov	%d15, 15
	st.w	[%a14] -196, %d15
.LBB209:
.LBB210:
.LBB211:
.LBB212:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 177 0
	ld.w	%d15, [%a14] -192
	ld.w	%d2, [%a14] -196
#APP
	# 177 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min.u %d15, %d15, %d2
	# 0 "" 2
#NO_APP
	st.w	[%a14] -200, %d15
	.loc 3 178 0
	ld.w	%d15, [%a14] -200
.LBE212:
.LBE211:
	.loc 2 2429 0
	and	%d15, 255
	and	%d15, %d15, 15
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -184
	and	%d2, %d2, 15
	sh	%d2, %d2, 8
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 12
	mov	%d4, -3841
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 12, %d3
.LBE210:
.LBE209:
	.loc 1 155 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 72
	ld.w	%d2, [%a14] -4
	st.w	[%a14] -204, %d2
	st.w	[%a14] -208, %d15
	ld.w	%d15, [%a14] -208
	st.w	[%a14] -212, %d15
	mov	%d15, 15
	st.w	[%a14] -216, %d15
.LBB213:
.LBB214:
.LBB215:
.LBB216:
	.loc 3 177 0
	ld.w	%d15, [%a14] -212
	ld.w	%d2, [%a14] -216
#APP
	# 177 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min.u %d15, %d15, %d2
	# 0 "" 2
#NO_APP
	st.w	[%a14] -220, %d15
	.loc 3 178 0
	ld.w	%d15, [%a14] -220
.LBE216:
.LBE215:
	.loc 2 2337 0
	and	%d15, 255
	and	%d15, %d15, 15
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -204
	and	%d2, %d2, 15
	sh	%d2, %d2, 8
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 16
	mov	%d4, -3841
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 16, %d3
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -224, %d15
.LBE214:
.LBE213:
.LBB217:
.LBB218:
	.loc 2 1896 0
	ld.w	%d15, [%a14] -224
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 16
	or	%d2, %d2, 1
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 16, %d3
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -228, %d15
.LBE218:
.LBE217:
.LBB219:
.LBB220:
	.loc 2 1902 0
	ld.w	%d15, [%a14] -228
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 12
	or	%d2, %d2, 1
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 12, %d3
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -232, %d15
.LBE220:
.LBE219:
.LBB221:
.LBB222:
	.loc 2 1716 0
	ld.w	%d15, [%a14] -232
	mov	%d2, 0
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 64, %d3
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -236, %d15
.LBE222:
.LBE221:
.LBB223:
.LBB224:
	.loc 2 1578 0
	ld.w	%d15, [%a14] -236
	mov	%d2, -1
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 60, %d3
.LBE224:
.LBE223:
	.loc 1 163 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.hu	%d15, [%a15] 82
	jz	%d15, .L14
.LBB225:
	.loc 1 166 0
	ld.a	%a4, [%a14] -4
	call	IfxAsclin_getSrcPointerRx
	st.a	[%a14] -16, %a2
	.loc 1 167 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 88
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.hu	%d15, [%a15] 82
	ld.w	%d3, [%a14] -16
	st.w	[%a14] -240, %d3
	st.w	[%a14] -244, %d2
	st.h	[%a14] -246, %d15
.LBB226:
.LBB227:
	.file 4 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
	.loc 4 256 0
	ld.h	%d15, [%a14] -246
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -240
	and	%d2, %d2, 255
	mov.a	%a15, %d15
	ld.w	%d3, [%a15]0
	andn	%d3, %d3, ~(-256)
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	.loc 4 257 0
	ld.w	%d15, [%a14] -244
	and	%d15, 255
	and	%d15, %d15, 3
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -240
	and	%d2, %d2, 3
	sh	%d2, %d2, 11
	mov.a	%a15, %d15
	ld.w	%d3, [%a15]0
	mov	%d4, -6145
	and	%d3, %d4
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	ld.w	%d15, [%a14] -240
	st.w	[%a14] -252, %d15
.LBB228:
.LBB229:
	.loc 4 232 0
	ld.w	%d15, [%a14] -252
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	movh	%d3, 512
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -256, %d15
	mov	%d15, 1
	st.b	[%a14] -257, %d15
.LBE229:
.LBE228:
.LBE227:
.LBE226:
.LBB230:
.LBB231:
	.loc 2 1824 0
	ld.bu	%d15, [%a14] -257
	ne	%d15, %d15, 0
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -256
	and	%d2, %d2, 1
	sh	%d2, %d2, 28
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 64
	movh	%d4, 61440
	add	%d4, -1
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 64, %d3
	ld.w	%d15, [%a14] -16
	st.w	[%a14] -264, %d15
.LBE231:
.LBE230:
.LBB232:
.LBB233:
	.loc 4 250 0
	ld.w	%d15, [%a14] -264
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	mov	%d3, 1024
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
.L14:
.LBE233:
.LBE232:
.LBE225:
	.loc 1 172 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.hu	%d15, [%a15] 80
	jz	%d15, .L15
.LBB234:
	.loc 1 175 0
	ld.a	%a4, [%a14] -4
	call	IfxAsclin_getSrcPointerTx
	st.a	[%a14] -20, %a2
	.loc 1 176 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 88
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.hu	%d15, [%a15] 80
	ld.w	%d3, [%a14] -20
	st.w	[%a14] -268, %d3
	st.w	[%a14] -272, %d2
	st.h	[%a14] -274, %d15
.LBB235:
.LBB236:
	.loc 4 256 0
	ld.h	%d15, [%a14] -274
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -268
	and	%d2, %d2, 255
	mov.a	%a15, %d15
	ld.w	%d3, [%a15]0
	andn	%d3, %d3, ~(-256)
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	.loc 4 257 0
	ld.w	%d15, [%a14] -272
	and	%d15, 255
	and	%d15, %d15, 3
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -268
	and	%d2, %d2, 3
	sh	%d2, %d2, 11
	mov.a	%a15, %d15
	ld.w	%d3, [%a15]0
	mov	%d4, -6145
	and	%d3, %d4
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	ld.w	%d15, [%a14] -268
	st.w	[%a14] -280, %d15
.LBB237:
.LBB238:
	.loc 4 232 0
	ld.w	%d15, [%a14] -280
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	movh	%d3, 512
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -284, %d15
	mov	%d15, 1
	st.b	[%a14] -285, %d15
.LBE238:
.LBE237:
.LBE236:
.LBE235:
.LBB239:
.LBB240:
	.loc 2 1866 0
	ld.bu	%d15, [%a14] -285
	ne	%d15, %d15, 0
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -284
	sh	%d2, %d2, 31
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 64
	mov	%d4, -1
	sh	%d4, -1
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 64, %d3
	ld.w	%d15, [%a14] -20
	st.w	[%a14] -292, %d15
.LBE240:
.LBE239:
.LBB241:
.LBB242:
	.loc 4 250 0
	ld.w	%d15, [%a14] -292
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	mov	%d3, 1024
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
.L15:
.LBE242:
.LBE241:
.LBE234:
	.loc 1 181 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.hu	%d15, [%a15] 84
	jz	%d15, .L16
.LBB243:
	.loc 1 184 0
	ld.a	%a4, [%a14] -4
	call	IfxAsclin_getSrcPointerEr
	st.a	[%a14] -24, %a2
	.loc 1 185 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 88
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.hu	%d15, [%a15] 84
	ld.w	%d3, [%a14] -24
	st.w	[%a14] -296, %d3
	st.w	[%a14] -300, %d2
	st.h	[%a14] -302, %d15
.LBB244:
.LBB245:
	.loc 4 256 0
	ld.h	%d15, [%a14] -302
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -296
	and	%d2, %d2, 255
	mov.a	%a15, %d15
	ld.w	%d3, [%a15]0
	andn	%d3, %d3, ~(-256)
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	.loc 4 257 0
	ld.w	%d15, [%a14] -300
	and	%d15, 255
	and	%d15, %d15, 3
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -296
	and	%d2, %d2, 3
	sh	%d2, %d2, 11
	mov.a	%a15, %d15
	ld.w	%d3, [%a15]0
	mov	%d4, -6145
	and	%d3, %d4
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	ld.w	%d15, [%a14] -296
	st.w	[%a14] -308, %d15
.LBB246:
.LBB247:
	.loc 4 232 0
	ld.w	%d15, [%a14] -308
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	movh	%d3, 512
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -312, %d15
	mov	%d15, 1
	st.b	[%a14] -313, %d15
.LBE247:
.LBE246:
.LBE245:
.LBE244:
.LBB248:
.LBB249:
	.loc 2 1758 0
	ld.bu	%d15, [%a14] -313
	ne	%d15, %d15, 0
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -312
	and	%d2, %d2, 1
	sh	%d2, %d2, 18
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 64
	movh	%d4, 65532
	add	%d4, -1
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 64, %d3
	ld.w	%d15, [%a14] -24
	st.w	[%a14] -320, %d15
.LBE249:
.LBE248:
.LBB250:
.LBB251:
	.loc 4 250 0
	ld.w	%d15, [%a14] -320
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	mov	%d3, 1024
	or	%d2, %d3
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
.L16:
.LBE251:
.LBE250:
.LBE243:
	.loc 1 191 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 92
	st.w	[%a14] -28, %d15
	.loc 1 193 0
	ld.w	%d15, [%a14] -28
	jz	%d15, .L17
.LBB252:
	.loc 1 195 0
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	st.w	[%a14] -32, %d15
	.loc 1 197 0
	ld.w	%d15, [%a14] -32
	jz	%d15, .L18
	.loc 1 199 0
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 4
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 32
	ld.w	%d3, [%a14] -32
	st.w	[%a14] -324, %d3
	st.w	[%a14] -328, %d2
	st.w	[%a14] -332, %d15
.LBB253:
.LBB254:
	.loc 2 2130 0
	ld.w	%d15, [%a14] -324
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 4
	ld.w	%d15, [%a14] -324
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 8
	ld.w	%d2, [%a14] -324
	mov.a	%a15, %d2
	ld.w	%d2, [%a15] 12
	st.w	[%a14] -336, %d3
	st.b	[%a14] -337, %d15
	ld.w	%d15, [%a14] -328
	st.w	[%a14] -344, %d15
	st.w	[%a14] -348, %d2
.LBB255:
.LBB256:
	.file 5 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
	.loc 5 568 0
	ld.w	%d2, [%a14] -344
	ld.w	%d15, [%a14] -348
	or	%d15, %d2
	ld.bu	%d2, [%a14] -337
	ld.a	%a4, [%a14] -336
	mov	%d4, %d2
	mov	%d5, %d15
	call	IfxPort_setPinMode
.LBE256:
.LBE255:
	.loc 2 2131 0
	ld.w	%d15, [%a14] -324
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 4
	ld.w	%d15, [%a14] -324
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 8
	mov.a	%a4, %d2
	mov	%d4, %d15
	ld.w	%d5, [%a14] -332
	call	IfxPort_setPinPadDriver
.L18:
.LBE254:
.LBE253:
	.loc 1 202 0
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 8
	st.w	[%a14] -36, %d15
	.loc 1 204 0
	ld.w	%d15, [%a14] -36
	jz	%d15, .L19
	.loc 1 206 0
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 12
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 32
	ld.w	%d3, [%a14] -36
	st.w	[%a14] -352, %d3
	st.w	[%a14] -356, %d2
	st.w	[%a14] -360, %d15
.LBB257:
.LBB258:
	.loc 2 2119 0
	ld.w	%d15, [%a14] -352
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 4
	jz	%d15, .L19
	.loc 2 2121 0
	ld.w	%d15, [%a14] -352
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 4
	ld.w	%d15, [%a14] -352
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 8
	st.w	[%a14] -364, %d2
	st.b	[%a14] -365, %d15
	ld.w	%d15, [%a14] -356
	st.w	[%a14] -372, %d15
.LBB259:
.LBB260:
	.loc 5 562 0
	ld.w	%d2, [%a14] -372
	ld.bu	%d15, [%a14] -365
	ld.a	%a4, [%a14] -364
	mov	%d4, %d15
	mov	%d5, %d2
	call	IfxPort_setPinMode
.LBE260:
.LBE259:
	.loc 2 2122 0
	ld.w	%d15, [%a14] -352
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 4
	ld.w	%d15, [%a14] -352
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 8
	mov.a	%a4, %d2
	mov	%d4, %d15
	ld.w	%d5, [%a14] -360
	call	IfxPort_setPinPadDriver
	.loc 2 2123 0
	ld.w	%d15, [%a14] -352
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a14] -352
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 12
	st.w	[%a14] -376, %d2
	st.w	[%a14] -380, %d15
.LBB261:
.LBB262:
	.loc 2 2349 0
	ld.w	%d15, [%a14] -380
	and	%d15, 255
	and	%d15, %d15, 7
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -376
	and	%d2, %d2, 7
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 4
	andn	%d3, %d3, ~(-8)
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 4, %d3
.L19:
.LBE262:
.LBE261:
.LBE258:
.LBE257:
	.loc 1 209 0
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 16
	st.w	[%a14] -40, %d15
	.loc 1 211 0
	ld.w	%d15, [%a14] -40
	jz	%d15, .L20
	.loc 1 213 0
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 20
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 32
	ld.w	%d3, [%a14] -40
	st.w	[%a14] -384, %d3
	st.w	[%a14] -388, %d2
	st.w	[%a14] -392, %d15
.LBB263:
.LBB264:
	.loc 2 2144 0
	ld.w	%d15, [%a14] -384
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 4
	ld.w	%d15, [%a14] -384
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 8
	ld.w	%d2, [%a14] -384
	mov.a	%a15, %d2
	ld.w	%d2, [%a15] 12
	st.w	[%a14] -396, %d3
	st.b	[%a14] -397, %d15
	ld.w	%d15, [%a14] -388
	st.w	[%a14] -404, %d15
	st.w	[%a14] -408, %d2
.LBB265:
.LBB266:
	.loc 5 568 0
	ld.w	%d2, [%a14] -404
	ld.w	%d15, [%a14] -408
	or	%d15, %d2
	ld.bu	%d2, [%a14] -397
	ld.a	%a4, [%a14] -396
	mov	%d4, %d2
	mov	%d5, %d15
	call	IfxPort_setPinMode
.LBE266:
.LBE265:
	.loc 2 2145 0
	ld.w	%d15, [%a14] -384
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 4
	ld.w	%d15, [%a14] -384
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 8
	mov.a	%a4, %d2
	mov	%d4, %d15
	ld.w	%d5, [%a14] -392
	call	IfxPort_setPinPadDriver
.L20:
.LBE264:
.LBE263:
	.loc 1 216 0
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 24
	st.w	[%a14] -44, %d15
	.loc 1 218 0
	ld.w	%d15, [%a14] -44
	jz	%d15, .L17
	.loc 1 220 0
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 28
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 32
	ld.w	%d3, [%a14] -44
	st.w	[%a14] -412, %d3
	st.w	[%a14] -416, %d2
	st.w	[%a14] -420, %d15
.LBB267:
.LBB268:
	.loc 2 2137 0
	ld.w	%d15, [%a14] -412
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 4
	ld.w	%d15, [%a14] -412
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 8
	ld.w	%d2, [%a14] -412
	mov.a	%a15, %d2
	ld.w	%d2, [%a15] 12
	st.w	[%a14] -424, %d3
	st.b	[%a14] -425, %d15
	ld.w	%d15, [%a14] -416
	st.w	[%a14] -432, %d15
	st.w	[%a14] -436, %d2
.LBB269:
.LBB270:
	.loc 5 568 0
	ld.w	%d2, [%a14] -432
	ld.w	%d15, [%a14] -436
	or	%d15, %d2
	ld.bu	%d2, [%a14] -425
	ld.a	%a4, [%a14] -424
	mov	%d4, %d2
	mov	%d5, %d15
	call	IfxPort_setPinMode
.LBE270:
.LBE269:
	.loc 2 2138 0
	ld.w	%d15, [%a14] -412
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 4
	ld.w	%d15, [%a14] -412
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 8
	mov.a	%a4, %d2
	mov	%d4, %d15
	ld.w	%d5, [%a14] -420
	call	IfxPort_setPinPadDriver
.L17:
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -440, %d15
	mov	%d15, 0
	st.b	[%a14] -441, %d15
.LBE268:
.LBE267:
.LBE252:
.LBB271:
.LBB272:
	.loc 2 1800 0
	ld.bu	%d15, [%a14] -441
	ne	%d15, %d15, 0
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -440
	and	%d2, %d2, 1
	sh	%d2, %d2, 30
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 24
	movh	%d4, 49152
	add	%d4, -1
	and	%d3, %d4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 24, %d3
.LBE272:
.LBE271:
	.loc 1 226 0
	ld.w	%d15, [%a14] -472
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 96
	ld.a	%a4, [%a14] -4
	mov	%d4, %d15
	call	IfxAsclin_setClockSource
	.loc 1 228 0
	ld.w	%d15, [%a14] -468
	mov	%d2, 0
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 28, %d3
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -448, %d15
	mov	%d15, 1
	st.b	[%a14] -449, %d15
.LBB273:
.LBB274:
	.loc 2 1872 0
	ld.bu	%d15, [%a14] -449
	ne	%d15, %d15, 0
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -448
	and	%d2, %d2, 1
	sh	%d2, 1
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 12
	andn	%d3, %d3, ~(-3)
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 12, %d3
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -456, %d15
	mov	%d15, 1
	st.b	[%a14] -457, %d15
.LBE274:
.LBE273:
.LBB275:
.LBB276:
	.loc 2 1830 0
	ld.bu	%d15, [%a14] -457
	ne	%d15, %d15, 0
	and	%d2, %d15, 255
	ld.w	%d15, [%a14] -456
	and	%d2, %d2, 1
	sh	%d2, 1
	mov.a	%a15, %d15
	ld.w	%d3, [%a15] 16
	andn	%d3, %d3, ~(-3)
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 16, %d3
.LBE276:
.LBE275:
	.loc 1 232 0
	ld.w	%d15, [%a14] -8
	.loc 1 233 0
	mov	%d2, %d15
	ret
.LFE366:
	.size	IfxAsclin_Spi_initModule, .-IfxAsclin_Spi_initModule
	.align 1
	.global	IfxAsclin_Spi_initModuleConfig
	.type	IfxAsclin_Spi_initModuleConfig, @function
IfxAsclin_Spi_initModuleConfig:
.LFB367:
	.loc 1 237 0
	mov.aa	%a14, %SP
.LCFI4:
	sub.a	%SP, 8
	st.a	[%a14] -4, %a4
	st.a	[%a14] -8, %a5
	.loc 1 296 0
	ld.w	%d15, [%a14] -4
	movh	%d2, hi:defaultConfig.10215
	addi	%d2, %d2, lo:defaultConfig.10215
	mov.a	%a2, %d15
	mov.a	%a3, %d2
		# #chunks=12, chunksize=8, remains=4
	lea	%a15, 12-1
	0:
	ld.d	%e4, [%a3+]8
	st.d	[%a2+]8, %e4
	loop	%a15, 0b
	ld.w	%d4, [%a3+]4
	st.w	[%a2+]4, %d4
	.loc 1 298 0
	ld.w	%d15, [%a14] -4
	ld.w	%d2, [%a14] -8
	mov.a	%a2, %d15
	st.w	[%a2]0, %d2
	.loc 1 299 0
	ret
.LFE367:
	.size	IfxAsclin_Spi_initModuleConfig, .-IfxAsclin_Spi_initModuleConfig
	.align 1
	.global	IfxAsclin_Spi_isrError
	.type	IfxAsclin_Spi_isrError, @function
IfxAsclin_Spi_isrError:
.LFB368:
	.loc 1 303 0
	mov.aa	%a14, %SP
.LCFI5:
	sub.a	%SP, 48
	st.a	[%a14] -44, %a4
	.loc 1 304 0
	ld.w	%d15, [%a14] -44
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	st.w	[%a14] -4, %d15
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -8, %d15
.LBB277:
.LBB278:
	.loc 2 1938 0
	ld.w	%d15, [%a14] -8
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 52
	sh	%d15, %d15, -18
	and	%d15, %d15, 1
	and	%d15, 255
.LBE278:
.LBE277:
	.loc 1 307 0
	jz	%d15, .L25
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -12, %d15
.LBB279:
.LBB280:
	.loc 2 1602 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 60
	movh	%d3, 4
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 60, %d3
.LBE280:
.LBE279:
	.loc 1 310 0
	ld.w	%d2, [%a14] -44
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 4
	insert	%d15, %d15, 1, 0, 1
	mov.a	%a15, %d2
	st.b	[%a15] 4, %d15
.L25:
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -16, %d15
.LBB281:
.LBB282:
	.loc 2 2028 0
	ld.w	%d15, [%a14] -16
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 52
	sh	%d15, %d15, -26
	and	%d15, %d15, 1
	and	%d15, 255
.LBE282:
.LBE281:
	.loc 1 313 0
	jz	%d15, .L27
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -20, %d15
.LBB283:
.LBB284:
	.loc 2 1662 0
	ld.w	%d15, [%a14] -20
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 60
	movh	%d3, 1024
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 60, %d3
.LBE284:
.LBE283:
	.loc 1 316 0
	ld.w	%d2, [%a14] -44
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 4
	insert	%d15, %d15, 1, 1, 1
	mov.a	%a15, %d2
	st.b	[%a15] 4, %d15
.L27:
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -24, %d15
.LBB285:
.LBB286:
	.loc 2 2034 0
	ld.w	%d15, [%a14] -24
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 52
	sh	%d15, %d15, -27
	and	%d15, %d15, 1
	and	%d15, 255
.LBE286:
.LBE285:
	.loc 1 319 0
	jz	%d15, .L29
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -28, %d15
.LBB287:
.LBB288:
	.loc 2 1668 0
	ld.w	%d15, [%a14] -28
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 60
	movh	%d3, 2048
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 60, %d3
.LBE288:
.LBE287:
	.loc 1 322 0
	ld.w	%d2, [%a14] -44
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 4
	insert	%d15, %d15, 1, 2, 1
	mov.a	%a15, %d2
	st.b	[%a15] 4, %d15
.L29:
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -32, %d15
.LBB289:
.LBB290:
	.loc 2 2082 0
	ld.w	%d15, [%a14] -32
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 52
	sh	%d15, %d15, -30
	and	%d15, %d15, 1
	and	%d15, 255
.LBE290:
.LBE289:
	.loc 1 325 0
	jz	%d15, .L23
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -36, %d15
.LBB291:
.LBB292:
	.loc 2 1698 0
	ld.w	%d15, [%a14] -36
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 60
	movh	%d3, 16384
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 60, %d3
.LBE292:
.LBE291:
	.loc 1 328 0
	ld.w	%d2, [%a14] -44
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 4
	insert	%d15, %d15, 1, 3, 1
	mov.a	%a15, %d2
	st.b	[%a15] 4, %d15
.L23:
	.loc 1 330 0
	ret
.LFE368:
	.size	IfxAsclin_Spi_isrError, .-IfxAsclin_Spi_isrError
	.align 1
	.global	IfxAsclin_Spi_isrReceive
	.type	IfxAsclin_Spi_isrReceive, @function
IfxAsclin_Spi_isrReceive:
.LFB369:
	.loc 1 334 0
	mov.aa	%a14, %SP
.LCFI6:
	sub.a	%SP, 16
	st.a	[%a14] -12, %a4
	.loc 1 335 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	st.w	[%a14] -4, %d15
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -8, %d15
.LBB293:
.LBB294:
	.loc 2 1656 0
	ld.w	%d15, [%a14] -8
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 60
	movh	%d3, 4096
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 60, %d3
.LBE294:
.LBE293:
	.loc 1 337 0
	ld.a	%a4, [%a14] -12
	call	IfxAsclin_Spi_read
	.loc 1 338 0
	ret
.LFE369:
	.size	IfxAsclin_Spi_isrReceive, .-IfxAsclin_Spi_isrReceive
	.align 1
	.global	IfxAsclin_Spi_isrTransmit
	.type	IfxAsclin_Spi_isrTransmit, @function
IfxAsclin_Spi_isrTransmit:
.LFB370:
	.loc 1 342 0
	mov.aa	%a14, %SP
.LCFI7:
	sub.a	%SP, 16
	st.a	[%a14] -12, %a4
	.loc 1 343 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	st.w	[%a14] -4, %d15
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -8, %d15
.LBB295:
.LBB296:
	.loc 2 1692 0
	ld.w	%d15, [%a14] -8
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 60
	movh	%d3, 32768
	or	%d2, %d3
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 60, %d3
.LBE296:
.LBE295:
	.loc 1 345 0
	ld.a	%a4, [%a14] -12
	call	IfxAsclin_Spi_write
	.loc 1 346 0
	ret
.LFE370:
	.size	IfxAsclin_Spi_isrTransmit, .-IfxAsclin_Spi_isrTransmit
	.align 1
	.type	IfxAsclin_Spi_lock, @function
IfxAsclin_Spi_lock:
.LFB371:
	.loc 1 350 0
	mov.aa	%a14, %SP
.LCFI8:
	sub.a	%SP, 24
	st.a	[%a14] -20, %a4
	.loc 1 351 0
	ld.w	%d15, [%a14] -20
	addi	%d15, %d15, 28
	st.w	[%a14] -8, %d15
	mov	%d15, 1
	st.w	[%a14] -12, %d15
.LBB297:
.LBB298:
	.loc 3 1436 0
	ld.w	%d2, [%a14] -8
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d2
#APP
	# 1436 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	swap.w [%a15]0,%d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -16, %d15
	.loc 3 1437 0
	ld.w	%d15, [%a14] -16
.LBE298:
.LBE297:
	.loc 1 351 0
	st.w	[%a14] -4, %d15
	.loc 1 352 0
	ld.w	%d15, [%a14] -4
	ne	%d15, %d15, 0
	and	%d15, 255
	.loc 1 353 0
	mov	%d2, %d15
	ret
.LFE371:
	.size	IfxAsclin_Spi_lock, .-IfxAsclin_Spi_lock
	.align 1
	.global	IfxAsclin_Spi_read
	.type	IfxAsclin_Spi_read, @function
IfxAsclin_Spi_read:
.LFB372:
	.loc 1 357 0
	mov.aa	%a14, %SP
.LCFI9:
	sub.a	%SP, 48
	st.a	[%a14] -44, %a4
	.loc 1 358 0
	ld.w	%d15, [%a14] -44
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	st.w	[%a14] -8, %d15
	.loc 1 359 0
	ld.w	%d15, [%a14] -44
	addi	%d15, %d15, 16
	st.w	[%a14] -12, %d15
	ld.w	%d15, [%a14] -8
	st.w	[%a14] -20, %d15
.LBB299:
.LBB300:
	.loc 2 2010 0
	ld.w	%d15, [%a14] -20
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 16
	sh	%d15, %d15, -16
	and	%d15, %d15, 31
	and	%d15, 255
.LBE300:
.LBE299:
	.loc 1 361 0
	st.w	[%a14] -16, %d15
	.loc 1 362 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 4
	mov	%d2, %d15
	ld.w	%d15, [%a14] -16
	st.w	[%a14] -24, %d2
	st.w	[%a14] -28, %d15
.LBB301:
.LBB302:
	.loc 3 159 0
	ld.w	%d15, [%a14] -24
	ld.w	%d2, [%a14] -28
#APP
	# 159 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min %d15, %d15, %d2
	# 0 "" 2
#NO_APP
	st.w	[%a14] -32, %d15
	.loc 3 160 0
	ld.w	%d15, [%a14] -32
.LBE302:
.LBE301:
	.loc 1 362 0
	st.w	[%a14] -16, %d15
	.loc 1 364 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	jnz	%d15, .L40
.LBB303:
	.loc 1 367 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 4
	ld.w	%d15, [%a14] -16
	sub	%d2, %d15
	ld.w	%d15, [%a14] -12
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 4, %d3
	.loc 1 369 0
	mov	%d15, 0
	st.w	[%a14] -4, %d15
	j	.L41
.L43:
	ld.w	%d15, [%a14] -8
	st.w	[%a14] -36, %d15
.LBB304:
.LBB305:
	.loc 2 2163 0 discriminator 3
	ld.w	%d15, [%a14] -36
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 72
.LBE305:
.LBE304:
	.loc 1 369 0 discriminator 3
	ld.w	%d15, [%a14] -4
	add	%d15, 1
	st.w	[%a14] -4, %d15
.L41:
	.loc 1 369 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a14] -4
	ld.w	%d15, [%a14] -16
	jlt.u	%d2, %d15, .L43
.LBE303:
	j	.L44
.L40:
	.loc 1 374 0 is_stmt 1
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 4
	jz	%d15, .L44
	.loc 1 376 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 4
	ld.w	%d15, [%a14] -16
	sub	%d2, %d15
	ld.w	%d15, [%a14] -12
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 4, %d3
	.loc 1 379 0
	ld.w	%d15, [%a14] -44
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 32
	jeq	%d15, 1, .L45
	jeq	%d15, 2, .L46
	j	.L44
.L45:
	.loc 1 382 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	ld.a	%a4, [%a14] -8
	mov.a	%a5, %d15
	ld.w	%d4, [%a14] -16
	call	IfxAsclin_read8
	.loc 1 383 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a14] -16
	add	%d2, %d15
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	.loc 1 384 0
	j	.L44
.L46:
	.loc 1 387 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	ld.a	%a4, [%a14] -8
	mov.a	%a5, %d15
	ld.w	%d4, [%a14] -16
	call	IfxAsclin_read16
	.loc 1 388 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a14] -16
	sh	%d15, 1
	add	%d2, %d15
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	.loc 1 389 0
	nop
.L44:
	.loc 1 393 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 4
	jnz	%d15, .L37
	.loc 1 395 0
	ld.w	%d15, [%a14] -44
	mov	%d2, 0
	mov.a	%a15, %d15
	st.b	[%a15] 24, %d2
	.loc 1 396 0
	ld.a	%a4, [%a14] -44
	call	IfxAsclin_Spi_unlock
.L37:
	.loc 1 398 0
	ret
.LFE372:
	.size	IfxAsclin_Spi_read, .-IfxAsclin_Spi_read
	.align 1
	.type	IfxAsclin_Spi_unlock, @function
IfxAsclin_Spi_unlock:
.LFB373:
	.loc 1 402 0
	mov.aa	%a14, %SP
.LCFI10:
	sub.a	%SP, 8
	st.a	[%a14] -4, %a4
	.loc 1 403 0
	ld.w	%d15, [%a14] -4
	mov	%d2, 0
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 28, %d3
	.loc 1 404 0
	ret
.LFE373:
	.size	IfxAsclin_Spi_unlock, .-IfxAsclin_Spi_unlock
	.align 1
	.global	IfxAsclin_Spi_write
	.type	IfxAsclin_Spi_write, @function
IfxAsclin_Spi_write:
.LFB374:
	.loc 1 408 0
	mov.aa	%a14, %SP
.LCFI11:
	sub.a	%SP, 72
	st.a	[%a14] -68, %a4
	.loc 1 409 0
	ld.w	%d15, [%a14] -68
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	st.w	[%a14] -8, %d15
	.loc 1 410 0
	ld.w	%d15, [%a14] -68
	addi	%d15, %d15, 8
	st.w	[%a14] -12, %d15
	.loc 1 412 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 4
	jz	%d15, .L49
.LBB306:
.LBB307:
.LBB308:
.LBB309:
.LBB310:
.LBB311:
	.file 6 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
	.loc 6 638 0
#APP
	# 638 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE2C
	# 0 "" 2
#NO_APP
	st.w	[%a14] -24, %d15
	ld.w	%d15, [%a14] -24
.LBE311:
	st.w	[%a14] -60, %d15
	.loc 6 639 0
	ld.w	%d15, [%a14] -60
	sh	%d15, %d15, -15
	and	%d15, %d15, 1
	and	%d15, 255
.LBE310:
.LBE309:
	.loc 6 646 0
	st.b	[%a14] -25, %d15
	.loc 6 647 0
#APP
	# 647 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB312:
.LBB313:
	.loc 3 1405 0
#APP
	# 1405 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
.LBE313:
.LBE312:
	.loc 6 649 0
	ld.bu	%d15, [%a14] -25
.LBE308:
.LBE307:
	.loc 1 415 0
	st.b	[%a14] -13, %d15
	ld.w	%d15, [%a14] -8
	st.w	[%a14] -32, %d15
.LBB314:
.LBB315:
	.loc 2 2064 0
	ld.w	%d15, [%a14] -32
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 12
	sh	%d15, %d15, -16
	and	%d15, %d15, 31
	and	%d15, 255
.LBE315:
.LBE314:
	.loc 1 417 0
	rsub	%d15, %d15, 16
	st.w	[%a14] -20, %d15
	.loc 1 418 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 4
	mov	%d2, %d15
	ld.w	%d15, [%a14] -20
	st.w	[%a14] -36, %d2
	st.w	[%a14] -40, %d15
.LBB316:
.LBB317:
	.loc 3 159 0
	ld.w	%d15, [%a14] -36
	ld.w	%d2, [%a14] -40
#APP
	# 159 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min %d15, %d15, %d2
	# 0 "" 2
#NO_APP
	st.w	[%a14] -44, %d15
	.loc 3 160 0
	ld.w	%d15, [%a14] -44
.LBE317:
.LBE316:
	.loc 1 418 0
	st.w	[%a14] -20, %d15
	.loc 1 420 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	jnz	%d15, .L55
.LBB318:
	.loc 1 423 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 4
	ld.w	%d15, [%a14] -20
	sub	%d2, %d15
	ld.w	%d15, [%a14] -12
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 4, %d3
	.loc 1 425 0
	mov	%d15, 0
	st.w	[%a14] -4, %d15
	j	.L56
.L57:
	ld.w	%d15, [%a14] -8
	st.w	[%a14] -48, %d15
	mov	%d15, -1
	st.w	[%a14] -52, %d15
.LBB319:
.LBB320:
	.loc 2 2435 0 discriminator 3
	ld.w	%d15, [%a14] -48
	ld.w	%d2, [%a14] -52
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 68, %d3
.LBE320:
.LBE319:
	.loc 1 425 0 discriminator 3
	ld.w	%d15, [%a14] -4
	add	%d15, 1
	st.w	[%a14] -4, %d15
.L56:
	.loc 1 425 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a14] -4
	ld.w	%d15, [%a14] -20
	jlt.u	%d2, %d15, .L57
.LBE318:
	j	.L58
.L55:
	.loc 1 432 0 is_stmt 1
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d2, [%a15] 4
	ld.w	%d15, [%a14] -20
	sub	%d2, %d15
	ld.w	%d15, [%a14] -12
	mov	%d3, %d2
	mov.a	%a15, %d15
	st.w	[%a15] 4, %d3
	.loc 1 435 0
	ld.w	%d15, [%a14] -68
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 32
	jeq	%d15, 1, .L59
	jeq	%d15, 2, .L60
	j	.L58
.L59:
	.loc 1 438 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	ld.a	%a4, [%a14] -8
	mov.a	%a5, %d15
	ld.w	%d4, [%a14] -20
	call	IfxAsclin_write8
	.loc 1 439 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a14] -20
	add	%d2, %d15
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	.loc 1 440 0
	j	.L58
.L60:
	.loc 1 443 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d15, [%a15]0
	ld.a	%a4, [%a14] -8
	mov.a	%a5, %d15
	ld.w	%d4, [%a14] -20
	call	IfxAsclin_write16
	.loc 1 444 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a14] -20
	sh	%d15, 1
	add	%d2, %d15
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	st.w	[%a15]0, %d2
	.loc 1 445 0
	nop
.L58:
	ld.b	%d15, [%a14] -13
	st.b	[%a14] -53, %d15
.LBB321:
.LBB322:
	.loc 6 922 0
	ld.bu	%d15, [%a14] -53
	jz	%d15, .L49
	.loc 6 924 0
#APP
	# 924 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.L49:
.LBE322:
.LBE321:
.LBE306:
	.loc 1 451 0
	ret
.LFE374:
	.size	IfxAsclin_Spi_write, .-IfxAsclin_Spi_write
.section .rodata,"a",@progbits
	.align 2
	.type	defaultConfig.10215, @object
	.size	defaultConfig.10215, 100
defaultConfig.10215:
	.word	0
	.word	2
	.word	0
	.word	0
	.word	1
	.byte	0
	.zero	3
	.word	1203982336
	.short	2
	.zero	2
	.word	7
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.word	7
	.word	1
	.word	15
	.word	1
	.word	0
	.word	0
	.short	0
	.short	0
	.short	0
	.zero	2
	.word	0
	.word	0
	.word	1
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
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.byte	0x4
	.uaword	.LCFI0-.LFB363
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.byte	0x4
	.uaword	.LCFI1-.LFB364
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.byte	0x4
	.uaword	.LCFI2-.LFB365
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.byte	0x4
	.uaword	.LCFI3-.LFB366
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.byte	0x4
	.uaword	.LCFI4-.LFB367
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.byte	0x4
	.uaword	.LCFI5-.LFB368
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.byte	0x4
	.uaword	.LCFI6-.LFB369
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.byte	0x4
	.uaword	.LCFI7-.LFB370
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.byte	0x4
	.uaword	.LCFI8-.LFB371
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.byte	0x4
	.uaword	.LCFI9-.LFB372
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.byte	0x4
	.uaword	.LCFI10-.LFB373
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.byte	0x4
	.uaword	.LCFI11-.LFB374
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE22:
.section .text,"ax",@progbits
.Letext0:
	.file 7 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 8 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 9 "./0_Src/4_McHal/Tricore/_Reg/IfxAsclin_regdef.h"
	.file 10 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
	.file 11 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
	.file 12 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
	.file 13 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h"
	.file 14 "./0_Src/4_McHal/Tricore/_PinMap/IfxAsclin_PinMap.h"
	.file 15 "0_Src/4_McHal/Tricore/Asclin/Spi/IfxAsclin_Spi.h"
	.file 16 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x86ea
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on "
	.string	"2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O0 -std=gnu11 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Asclin/Spi/IfxAsclin_Spi.c"
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
	.byte	0x7
	.byte	0x59
	.uaword	0x1e3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x7
	.byte	0x5b
	.uaword	0x20f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x7
	.byte	0x5c
	.uaword	0x17f
	.uleb128 0x3
	.string	"uint32"
	.byte	0x7
	.byte	0x5d
	.uaword	0x18b
	.uleb128 0x3
	.string	"float32"
	.byte	0x7
	.byte	0x5e
	.uaword	0x250
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x7
	.byte	0x68
	.uaword	0x1e3
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
	.uleb128 0x5
	.byte	0x4
	.uaword	0x29c
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_Priority"
	.byte	0x8
	.byte	0x55
	.uaword	0x201
	.uleb128 0x7
	.byte	0x4
	.byte	0x8
	.byte	0x71
	.uaword	0x32a
	.uleb128 0x8
	.string	"Ifx_RxSel_a"
	.sleb128 0
	.uleb128 0x8
	.string	"Ifx_RxSel_b"
	.sleb128 1
	.uleb128 0x8
	.string	"Ifx_RxSel_c"
	.sleb128 2
	.uleb128 0x8
	.string	"Ifx_RxSel_d"
	.sleb128 3
	.uleb128 0x8
	.string	"Ifx_RxSel_e"
	.sleb128 4
	.uleb128 0x8
	.string	"Ifx_RxSel_f"
	.sleb128 5
	.uleb128 0x8
	.string	"Ifx_RxSel_g"
	.sleb128 6
	.uleb128 0x8
	.string	"Ifx_RxSel_h"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_RxSel"
	.byte	0x8
	.byte	0x7a
	.uaword	0x2b1
	.uleb128 0x9
	.byte	0x8
	.byte	0x8
	.byte	0x7d
	.uaword	0x35e
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x8
	.byte	0x7f
	.uaword	0x296
	.byte	0
	.uleb128 0xb
	.string	"index"
	.byte	0x8
	.byte	0x80
	.uaword	0x225
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x8
	.byte	0x81
	.uaword	0x33b
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x2d
	.uaword	0x58f
	.uleb128 0xd
	.string	"EN0"
	.byte	0x9
	.byte	0x2f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"EN1"
	.byte	0x9
	.byte	0x30
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"EN2"
	.byte	0x9
	.byte	0x31
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EN3"
	.byte	0x9
	.byte	0x32
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"EN4"
	.byte	0x9
	.byte	0x33
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"EN5"
	.byte	0x9
	.byte	0x34
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"EN6"
	.byte	0x9
	.byte	0x35
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"EN7"
	.byte	0x9
	.byte	0x36
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EN8"
	.byte	0x9
	.byte	0x37
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"EN9"
	.byte	0x9
	.byte	0x38
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"EN10"
	.byte	0x9
	.byte	0x39
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"EN11"
	.byte	0x9
	.byte	0x3a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"EN12"
	.byte	0x9
	.byte	0x3b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"EN13"
	.byte	0x9
	.byte	0x3c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"EN14"
	.byte	0x9
	.byte	0x3d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"EN15"
	.byte	0x9
	.byte	0x3e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"EN16"
	.byte	0x9
	.byte	0x3f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"EN17"
	.byte	0x9
	.byte	0x40
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"EN18"
	.byte	0x9
	.byte	0x41
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"EN19"
	.byte	0x9
	.byte	0x42
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"EN20"
	.byte	0x9
	.byte	0x43
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"EN21"
	.byte	0x9
	.byte	0x44
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"EN22"
	.byte	0x9
	.byte	0x45
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"EN23"
	.byte	0x9
	.byte	0x46
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"EN24"
	.byte	0x9
	.byte	0x47
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"EN25"
	.byte	0x9
	.byte	0x48
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"EN26"
	.byte	0x9
	.byte	0x49
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"EN27"
	.byte	0x9
	.byte	0x4a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"EN28"
	.byte	0x9
	.byte	0x4b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"EN29"
	.byte	0x9
	.byte	0x4c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"EN30"
	.byte	0x9
	.byte	0x4d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"EN31"
	.byte	0x9
	.byte	0x4e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x9
	.byte	0x4f
	.uaword	0x378
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x52
	.uaword	0x5ed
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.byte	0x54
	.uaword	0x58f
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x9
	.byte	0x55
	.uaword	0x5bd
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_BITCON_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x58
	.uaword	0x6ab
	.uleb128 0xd
	.string	"PRESCALER"
	.byte	0x9
	.byte	0x5a
	.uaword	0x58f
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x9
	.byte	0x5b
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"OVERSAMPLING"
	.byte	0x9
	.byte	0x5c
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x9
	.byte	0x5d
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"SAMPLEPOINT"
	.byte	0x9
	.byte	0x5e
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x9
	.byte	0x5f
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"SM"
	.byte	0x9
	.byte	0x60
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BITCON_Bits"
	.byte	0x9
	.byte	0x61
	.uaword	0x60b
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_BRD_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x64
	.uaword	0x736
	.uleb128 0xd
	.string	"LOWERLIMIT"
	.byte	0x9
	.byte	0x66
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"UPPERLIMIT"
	.byte	0x9
	.byte	0x67
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"MEASURED"
	.byte	0x9
	.byte	0x68
	.uaword	0x58f
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x9
	.byte	0x69
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRD_Bits"
	.byte	0x9
	.byte	0x6a
	.uaword	0x6c9
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_BRG_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x6d
	.uaword	0x7b9
	.uleb128 0xd
	.string	"DENOMINATOR"
	.byte	0x9
	.byte	0x6f
	.uaword	0x58f
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x9
	.byte	0x70
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"NUMERATOR"
	.byte	0x9
	.byte	0x71
	.uaword	0x58f
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x9
	.byte	0x72
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRG_Bits"
	.byte	0x9
	.byte	0x73
	.uaword	0x751
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_CLC_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x76
	.uaword	0x840
	.uleb128 0xd
	.string	"DISR"
	.byte	0x9
	.byte	0x78
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"DISS"
	.byte	0x9
	.byte	0x79
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x9
	.byte	0x7a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EDIS"
	.byte	0x9
	.byte	0x7b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x9
	.byte	0x7c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CLC_Bits"
	.byte	0x9
	.byte	0x7d
	.uaword	0x7d4
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_CSR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x80
	.uaword	0x8b0
	.uleb128 0xd
	.string	"CLKSEL"
	.byte	0x9
	.byte	0x82
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"reserved_5"
	.byte	0x9
	.byte	0x83
	.uaword	0x58f
	.byte	0x4
	.byte	0x1a
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"CON"
	.byte	0x9
	.byte	0x84
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CSR_Bits"
	.byte	0x9
	.byte	0x85
	.uaword	0x85b
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_DATCON_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x88
	.uaword	0x95b
	.uleb128 0xd
	.string	"DATLEN"
	.byte	0x9
	.byte	0x8a
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x9
	.byte	0x8b
	.uaword	0x58f
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"HO"
	.byte	0x9
	.byte	0x8c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"RM"
	.byte	0x9
	.byte	0x8d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"CSM"
	.byte	0x9
	.byte	0x8e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"RESPONSE"
	.byte	0x9
	.byte	0x8f
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0x9
	.byte	0x90
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_DATCON_Bits"
	.byte	0x9
	.byte	0x91
	.uaword	0x8cb
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x94
	.uaword	0xb23
	.uleb128 0xd
	.string	"TH"
	.byte	0x9
	.byte	0x96
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"TR"
	.byte	0x9
	.byte	0x97
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"RH"
	.byte	0x9
	.byte	0x98
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"RR"
	.byte	0x9
	.byte	0x99
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x9
	.byte	0x9a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"FED"
	.byte	0x9
	.byte	0x9b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"RED"
	.byte	0x9
	.byte	0x9c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x9
	.byte	0x9d
	.uaword	0x58f
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"TWRQ"
	.byte	0x9
	.byte	0x9e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"THRQ"
	.byte	0x9
	.byte	0x9f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"TRRQ"
	.byte	0x9
	.byte	0xa0
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PE"
	.byte	0x9
	.byte	0xa1
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"TC"
	.byte	0x9
	.byte	0xa2
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"FE"
	.byte	0x9
	.byte	0xa3
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"HT"
	.byte	0x9
	.byte	0xa4
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"RT"
	.byte	0x9
	.byte	0xa5
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"BD"
	.byte	0x9
	.byte	0xa6
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"LP"
	.byte	0x9
	.byte	0xa7
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"LA"
	.byte	0x9
	.byte	0xa8
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"LC"
	.byte	0x9
	.byte	0xa9
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"CE"
	.byte	0x9
	.byte	0xaa
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"RFO"
	.byte	0x9
	.byte	0xab
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"RFU"
	.byte	0x9
	.byte	0xac
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"RFL"
	.byte	0x9
	.byte	0xad
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x9
	.byte	0xae
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"TFO"
	.byte	0x9
	.byte	0xaf
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"TFL"
	.byte	0x9
	.byte	0xb0
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x9
	.byte	0xb1
	.uaword	0x979
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xb4
	.uaword	0xd07
	.uleb128 0xd
	.string	"THC"
	.byte	0x9
	.byte	0xb6
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"TRC"
	.byte	0x9
	.byte	0xb7
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"RHC"
	.byte	0x9
	.byte	0xb8
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"RRC"
	.byte	0x9
	.byte	0xb9
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x9
	.byte	0xba
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"FEDC"
	.byte	0x9
	.byte	0xbb
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"REDC"
	.byte	0x9
	.byte	0xbc
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x9
	.byte	0xbd
	.uaword	0x58f
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"TWRQC"
	.byte	0x9
	.byte	0xbe
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"THRQC"
	.byte	0x9
	.byte	0xbf
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"TRRQC"
	.byte	0x9
	.byte	0xc0
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PEC"
	.byte	0x9
	.byte	0xc1
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"TCC"
	.byte	0x9
	.byte	0xc2
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"FEC"
	.byte	0x9
	.byte	0xc3
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"HTC"
	.byte	0x9
	.byte	0xc4
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"RTC"
	.byte	0x9
	.byte	0xc5
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"BDC"
	.byte	0x9
	.byte	0xc6
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"LPC"
	.byte	0x9
	.byte	0xc7
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"LAC"
	.byte	0x9
	.byte	0xc8
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"LCC"
	.byte	0x9
	.byte	0xc9
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"CEC"
	.byte	0x9
	.byte	0xca
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"RFOC"
	.byte	0x9
	.byte	0xcb
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"RFUC"
	.byte	0x9
	.byte	0xcc
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"RFLC"
	.byte	0x9
	.byte	0xcd
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x9
	.byte	0xce
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"TFOC"
	.byte	0x9
	.byte	0xcf
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"TFLC"
	.byte	0x9
	.byte	0xd0
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x9
	.byte	0xd1
	.uaword	0xb40
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xd4
	.uaword	0xebe
	.uleb128 0xd
	.string	"THE"
	.byte	0x9
	.byte	0xd6
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"TRE"
	.byte	0x9
	.byte	0xd7
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"RHE"
	.byte	0x9
	.byte	0xd8
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"RRE"
	.byte	0x9
	.byte	0xd9
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x9
	.byte	0xda
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"FEDE"
	.byte	0x9
	.byte	0xdb
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"REDE"
	.byte	0x9
	.byte	0xdc
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x9
	.byte	0xdd
	.uaword	0x58f
	.byte	0x4
	.byte	0x9
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PEE"
	.byte	0x9
	.byte	0xde
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"TCE"
	.byte	0x9
	.byte	0xdf
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"FEE"
	.byte	0x9
	.byte	0xe0
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"HTE"
	.byte	0x9
	.byte	0xe1
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"RTE"
	.byte	0x9
	.byte	0xe2
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"BDE"
	.byte	0x9
	.byte	0xe3
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"LPE"
	.byte	0x9
	.byte	0xe4
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"ABE"
	.byte	0x9
	.byte	0xe5
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"LCE"
	.byte	0x9
	.byte	0xe6
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"CEE"
	.byte	0x9
	.byte	0xe7
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"RFOE"
	.byte	0x9
	.byte	0xe8
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"RFUE"
	.byte	0x9
	.byte	0xe9
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"RFLE"
	.byte	0x9
	.byte	0xea
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x9
	.byte	0xeb
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"TFOE"
	.byte	0x9
	.byte	0xec
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"TFLE"
	.byte	0x9
	.byte	0xed
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x9
	.byte	0xee
	.uaword	0xd29
	.uleb128 0xc
	.string	"_Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xf1
	.uaword	0x10b4
	.uleb128 0xd
	.string	"THS"
	.byte	0x9
	.byte	0xf3
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"TRS"
	.byte	0x9
	.byte	0xf4
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"RHS"
	.byte	0x9
	.byte	0xf5
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"RRS"
	.byte	0x9
	.byte	0xf6
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x9
	.byte	0xf7
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"FEDS"
	.byte	0x9
	.byte	0xf8
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"REDS"
	.byte	0x9
	.byte	0xf9
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x9
	.byte	0xfa
	.uaword	0x58f
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"TWRQS"
	.byte	0x9
	.byte	0xfb
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"THRQS"
	.byte	0x9
	.byte	0xfc
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"TRRQS"
	.byte	0x9
	.byte	0xfd
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PES"
	.byte	0x9
	.byte	0xfe
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"TCS"
	.byte	0x9
	.byte	0xff
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"FES"
	.byte	0x9
	.uahalf	0x100
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"HTS"
	.byte	0x9
	.uahalf	0x101
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"RTS"
	.byte	0x9
	.uahalf	0x102
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"BDS"
	.byte	0x9
	.uahalf	0x103
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"LPS"
	.byte	0x9
	.uahalf	0x104
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"LAS"
	.byte	0x9
	.uahalf	0x105
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"LCS"
	.byte	0x9
	.uahalf	0x106
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"CES"
	.byte	0x9
	.uahalf	0x107
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"RFOS"
	.byte	0x9
	.uahalf	0x108
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"RFUS"
	.byte	0x9
	.uahalf	0x109
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"RFLS"
	.byte	0x9
	.uahalf	0x10a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"TFOS"
	.byte	0x9
	.uahalf	0x10c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"TFLS"
	.byte	0x9
	.uahalf	0x10d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x9
	.uahalf	0x10e
	.uaword	0xee1
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x111
	.uaword	0x11b5
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x113
	.uaword	0x58f
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"IDLE"
	.byte	0x9
	.uahalf	0x114
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"STOP"
	.byte	0x9
	.uahalf	0x115
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"LEAD"
	.byte	0x9
	.uahalf	0x116
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"reserved_15"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"MODE"
	.byte	0x9
	.uahalf	0x118
	.uaword	0x58f
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x9
	.uahalf	0x119
	.uaword	0x58f
	.byte	0x4
	.byte	0xa
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"MSB"
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"CEN"
	.byte	0x9
	.uahalf	0x11b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"PEN"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"ODD"
	.byte	0x9
	.uahalf	0x11d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x9
	.uahalf	0x11e
	.uaword	0x10d5
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_ID_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x121
	.uaword	0x122b
	.uleb128 0xf
	.string	"MODREV"
	.byte	0x9
	.uahalf	0x123
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"MODTYPE"
	.byte	0x9
	.uahalf	0x124
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x125
	.uaword	0x58f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_ID_Bits"
	.byte	0x9
	.uahalf	0x126
	.uaword	0x11d6
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_IOCR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x129
	.uaword	0x1345
	.uleb128 0xf
	.string	"ALTI"
	.byte	0x9
	.uahalf	0x12b
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"reserved_3"
	.byte	0x9
	.uahalf	0x12c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"DEPTH"
	.byte	0x9
	.uahalf	0x12d
	.uaword	0x58f
	.byte	0x4
	.byte	0x6
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.uaword	.LASF12
	.byte	0x9
	.uahalf	0x12e
	.uaword	0x58f
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"CTS"
	.byte	0x9
	.uahalf	0x12f
	.uaword	0x58f
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x9
	.uahalf	0x130
	.uaword	0x58f
	.byte	0x4
	.byte	0x7
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"RCPOL"
	.byte	0x9
	.uahalf	0x131
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"CPOL"
	.byte	0x9
	.uahalf	0x132
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"SPOL"
	.byte	0x9
	.uahalf	0x133
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"LB"
	.byte	0x9
	.uahalf	0x134
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"CTSEN"
	.byte	0x9
	.uahalf	0x135
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"RXM"
	.byte	0x9
	.uahalf	0x136
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"TXM"
	.byte	0x9
	.uahalf	0x137
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_IOCR_Bits"
	.byte	0x9
	.uahalf	0x138
	.uaword	0x1246
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_KRST0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x13b
	.uaword	0x13b7
	.uleb128 0xf
	.string	"RST"
	.byte	0x9
	.uahalf	0x13d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"RSTSTAT"
	.byte	0x9
	.uahalf	0x13e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x13f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_KRST0_Bits"
	.byte	0x9
	.uahalf	0x140
	.uaword	0x1362
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_KRST1_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x143
	.uaword	0x1416
	.uleb128 0xf
	.string	"RST"
	.byte	0x9
	.uahalf	0x145
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x9
	.uahalf	0x146
	.uaword	0x58f
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_KRST1_Bits"
	.byte	0x9
	.uahalf	0x147
	.uaword	0x13d5
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x14a
	.uaword	0x1477
	.uleb128 0xf
	.string	"CLR"
	.byte	0x9
	.uahalf	0x14c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x9
	.uahalf	0x14d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x9
	.uahalf	0x14e
	.uaword	0x1434
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x151
	.uaword	0x14e6
	.uleb128 0xf
	.string	"BREAK"
	.byte	0x9
	.uahalf	0x153
	.uaword	0x58f
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"reserved_6"
	.byte	0x9
	.uahalf	0x154
	.uaword	0x58f
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x9
	.uahalf	0x155
	.uaword	0x1497
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x158
	.uaword	0x159c
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x15a
	.uaword	0x58f
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"CSI"
	.byte	0x9
	.uahalf	0x15b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x9
	.uahalf	0x15c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"CSEN"
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"MS"
	.byte	0x9
	.uahalf	0x15e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"ABD"
	.byte	0x9
	.uahalf	0x15f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x160
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x9
	.uahalf	0x161
	.uaword	0x1509
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x164
	.uaword	0x1605
	.uleb128 0xf
	.string	"HEADER"
	.byte	0x9
	.uahalf	0x166
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x9
	.uahalf	0x167
	.uaword	0x58f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x9
	.uahalf	0x168
	.uaword	0x15bc
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_OCS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x16b
	.uaword	0x16a4
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x16d
	.uaword	0x58f
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"SUS"
	.byte	0x9
	.uahalf	0x16e
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"SUS_P"
	.byte	0x9
	.uahalf	0x16f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"SUSSTA"
	.byte	0x9
	.uahalf	0x170
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"reserved_30"
	.byte	0x9
	.uahalf	0x171
	.uaword	0x58f
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_OCS_Bits"
	.byte	0x9
	.uahalf	0x172
	.uaword	0x1628
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x175
	.uaword	0x16f3
	.uleb128 0xf
	.string	"DATA"
	.byte	0x9
	.uahalf	0x177
	.uaword	0x58f
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x9
	.uahalf	0x178
	.uaword	0x16c0
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x17b
	.uaword	0x1746
	.uleb128 0xf
	.string	"DATA"
	.byte	0x9
	.uahalf	0x17d
	.uaword	0x58f
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x9
	.uahalf	0x17e
	.uaword	0x1712
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x181
	.uaword	0x181f
	.uleb128 0xf
	.string	"FLUSH"
	.byte	0x9
	.uahalf	0x183
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"ENI"
	.byte	0x9
	.uahalf	0x184
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x185
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"OUTW"
	.byte	0x9
	.uahalf	0x186
	.uaword	0x58f
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x9
	.uahalf	0x187
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x9
	.uahalf	0x188
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"FILL"
	.byte	0x9
	.uahalf	0x189
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x9
	.uahalf	0x18a
	.uaword	0x58f
	.byte	0x4
	.byte	0xa
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"BUF"
	.byte	0x9
	.uahalf	0x18b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x9
	.uahalf	0x18c
	.uaword	0x1766
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x18f
	.uaword	0x1874
	.uleb128 0xf
	.string	"DATA"
	.byte	0x9
	.uahalf	0x191
	.uaword	0x58f
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x1841
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x195
	.uaword	0x193b
	.uleb128 0xf
	.string	"FLUSH"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"ENO"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x199
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"INW"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0x58f
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x9
	.uahalf	0x19b
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x9
	.uahalf	0x19c
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"FILL"
	.byte	0x9
	.uahalf	0x19d
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x9
	.uahalf	0x19e
	.uaword	0x58f
	.byte	0x4
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x9
	.uahalf	0x19f
	.uaword	0x1893
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1a7
	.uaword	0x1985
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1aa
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1ac
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1ae
	.uaword	0x59f
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_ACCEN0"
	.byte	0x9
	.uahalf	0x1af
	.uaword	0x195d
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1b2
	.uaword	0x19c7
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1b5
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1b7
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1b9
	.uaword	0x5ed
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_ACCEN1"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x199f
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1bd
	.uaword	0x1a09
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1c0
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1c4
	.uaword	0x6ab
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_BITCON"
	.byte	0x9
	.uahalf	0x1c5
	.uaword	0x19e1
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1c8
	.uaword	0x1a4b
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1cb
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1cd
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1cf
	.uaword	0x736
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_BRD"
	.byte	0x9
	.uahalf	0x1d0
	.uaword	0x1a23
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1d3
	.uaword	0x1a8a
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1d6
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1d8
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1da
	.uaword	0x7b9
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_BRG"
	.byte	0x9
	.uahalf	0x1db
	.uaword	0x1a62
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1de
	.uaword	0x1ac9
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1e1
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1e3
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1e5
	.uaword	0x840
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_CLC"
	.byte	0x9
	.uahalf	0x1e6
	.uaword	0x1aa1
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1e9
	.uaword	0x1b08
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1ec
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1ee
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1f0
	.uaword	0x8b0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_CSR"
	.byte	0x9
	.uahalf	0x1f1
	.uaword	0x1ae0
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1f4
	.uaword	0x1b47
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1f7
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1f9
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1fb
	.uaword	0x95b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_DATCON"
	.byte	0x9
	.uahalf	0x1fc
	.uaword	0x1b1f
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1ff
	.uaword	0x1b89
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x202
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x204
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x206
	.uaword	0xb23
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_FLAGS"
	.byte	0x9
	.uahalf	0x207
	.uaword	0x1b61
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x20a
	.uaword	0x1bca
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x20d
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x20f
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x211
	.uaword	0xd07
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_FLAGSCLEAR"
	.byte	0x9
	.uahalf	0x212
	.uaword	0x1ba2
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x215
	.uaword	0x1c10
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x218
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x21a
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x21c
	.uaword	0xebe
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_FLAGSENABLE"
	.byte	0x9
	.uahalf	0x21d
	.uaword	0x1be8
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x220
	.uaword	0x1c57
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x223
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x225
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x227
	.uaword	0x10b4
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_FLAGSSET"
	.byte	0x9
	.uahalf	0x228
	.uaword	0x1c2f
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x22b
	.uaword	0x1c9b
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x22e
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x230
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x232
	.uaword	0x11b5
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_FRAMECON"
	.byte	0x9
	.uahalf	0x233
	.uaword	0x1c73
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x236
	.uaword	0x1cdf
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x239
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x23b
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x23d
	.uaword	0x122b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_ID"
	.byte	0x9
	.uahalf	0x23e
	.uaword	0x1cb7
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x241
	.uaword	0x1d1d
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x244
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x246
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x248
	.uaword	0x1345
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_IOCR"
	.byte	0x9
	.uahalf	0x249
	.uaword	0x1cf5
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x24c
	.uaword	0x1d5d
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x24f
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x251
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x253
	.uaword	0x13b7
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_KRST0"
	.byte	0x9
	.uahalf	0x254
	.uaword	0x1d35
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x257
	.uaword	0x1d9e
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x25a
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x25c
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x25e
	.uaword	0x1416
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_KRST1"
	.byte	0x9
	.uahalf	0x25f
	.uaword	0x1d76
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x262
	.uaword	0x1ddf
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x265
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x267
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x269
	.uaword	0x1477
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_KRSTCLR"
	.byte	0x9
	.uahalf	0x26a
	.uaword	0x1db7
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x26d
	.uaword	0x1e22
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x270
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x272
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x274
	.uaword	0x14e6
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_LIN_BTIMER"
	.byte	0x9
	.uahalf	0x275
	.uaword	0x1dfa
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x278
	.uaword	0x1e68
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x27b
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x27d
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x27f
	.uaword	0x159c
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_LIN_CON"
	.byte	0x9
	.uahalf	0x280
	.uaword	0x1e40
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x283
	.uaword	0x1eab
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x286
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x288
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x28a
	.uaword	0x1605
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_LIN_HTIMER"
	.byte	0x9
	.uahalf	0x28b
	.uaword	0x1e83
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x28e
	.uaword	0x1ef1
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x291
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x293
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x295
	.uaword	0x16a4
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_OCS"
	.byte	0x9
	.uahalf	0x296
	.uaword	0x1ec9
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x299
	.uaword	0x1f30
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x29c
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x29e
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x2a0
	.uaword	0x16f3
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_RXDATA"
	.byte	0x9
	.uahalf	0x2a1
	.uaword	0x1f08
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x2a4
	.uaword	0x1f72
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x2a7
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x2a9
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x2ab
	.uaword	0x1746
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_RXDATAD"
	.byte	0x9
	.uahalf	0x2ac
	.uaword	0x1f4a
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x2af
	.uaword	0x1fb5
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x2b2
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x2b4
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x2b6
	.uaword	0x181f
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_RXFIFOCON"
	.byte	0x9
	.uahalf	0x2b7
	.uaword	0x1f8d
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x2ba
	.uaword	0x1ffa
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x2bd
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x2bf
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x2c1
	.uaword	0x1874
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_TXDATA"
	.byte	0x9
	.uahalf	0x2c2
	.uaword	0x1fd2
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x2c5
	.uaword	0x203c
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x2c8
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x2ca
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x2cc
	.uaword	0x193b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_TXFIFOCON"
	.byte	0x9
	.uahalf	0x2cd
	.uaword	0x2014
	.uleb128 0x12
	.string	"_Ifx_ASCLIN_LIN"
	.byte	0xc
	.byte	0x9
	.uahalf	0x2d8
	.uaword	0x20a0
	.uleb128 0x15
	.string	"CON"
	.byte	0x9
	.uahalf	0x2da
	.uaword	0x1e68
	.byte	0
	.uleb128 0x15
	.string	"BTIMER"
	.byte	0x9
	.uahalf	0x2db
	.uaword	0x1e22
	.byte	0x4
	.uleb128 0x15
	.string	"HTIMER"
	.byte	0x9
	.uahalf	0x2dc
	.uaword	0x1eab
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ASCLIN_LIN"
	.byte	0x9
	.uahalf	0x2dd
	.uaword	0x20b7
	.uleb128 0x16
	.uaword	0x2059
	.uleb128 0x17
	.string	"_Ifx_ASCLIN"
	.uahalf	0x100
	.byte	0x9
	.uahalf	0x2ea
	.uaword	0x226a
	.uleb128 0x15
	.string	"CLC"
	.byte	0x9
	.uahalf	0x2ec
	.uaword	0x1ac9
	.byte	0
	.uleb128 0x15
	.string	"IOCR"
	.byte	0x9
	.uahalf	0x2ed
	.uaword	0x1d1d
	.byte	0x4
	.uleb128 0x15
	.string	"ID"
	.byte	0x9
	.uahalf	0x2ee
	.uaword	0x1cdf
	.byte	0x8
	.uleb128 0x15
	.string	"TXFIFOCON"
	.byte	0x9
	.uahalf	0x2ef
	.uaword	0x203c
	.byte	0xc
	.uleb128 0x15
	.string	"RXFIFOCON"
	.byte	0x9
	.uahalf	0x2f0
	.uaword	0x1fb5
	.byte	0x10
	.uleb128 0x15
	.string	"BITCON"
	.byte	0x9
	.uahalf	0x2f1
	.uaword	0x1a09
	.byte	0x14
	.uleb128 0x15
	.string	"FRAMECON"
	.byte	0x9
	.uahalf	0x2f2
	.uaword	0x1c9b
	.byte	0x18
	.uleb128 0x15
	.string	"DATCON"
	.byte	0x9
	.uahalf	0x2f3
	.uaword	0x1b47
	.byte	0x1c
	.uleb128 0x15
	.string	"BRG"
	.byte	0x9
	.uahalf	0x2f4
	.uaword	0x1a8a
	.byte	0x20
	.uleb128 0x15
	.string	"BRD"
	.byte	0x9
	.uahalf	0x2f5
	.uaword	0x1a4b
	.byte	0x24
	.uleb128 0x15
	.string	"LIN"
	.byte	0x9
	.uahalf	0x2f6
	.uaword	0x20a0
	.byte	0x28
	.uleb128 0x15
	.string	"FLAGS"
	.byte	0x9
	.uahalf	0x2f7
	.uaword	0x1b89
	.byte	0x34
	.uleb128 0x15
	.string	"FLAGSSET"
	.byte	0x9
	.uahalf	0x2f8
	.uaword	0x1c57
	.byte	0x38
	.uleb128 0x15
	.string	"FLAGSCLEAR"
	.byte	0x9
	.uahalf	0x2f9
	.uaword	0x1bca
	.byte	0x3c
	.uleb128 0x15
	.string	"FLAGSENABLE"
	.byte	0x9
	.uahalf	0x2fa
	.uaword	0x1c10
	.byte	0x40
	.uleb128 0x15
	.string	"TXDATA"
	.byte	0x9
	.uahalf	0x2fb
	.uaword	0x1ffa
	.byte	0x44
	.uleb128 0x15
	.string	"RXDATA"
	.byte	0x9
	.uahalf	0x2fc
	.uaword	0x1f30
	.byte	0x48
	.uleb128 0x15
	.string	"CSR"
	.byte	0x9
	.uahalf	0x2fd
	.uaword	0x1b08
	.byte	0x4c
	.uleb128 0x15
	.string	"RXDATAD"
	.byte	0x9
	.uahalf	0x2fe
	.uaword	0x1f72
	.byte	0x50
	.uleb128 0x18
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x2ff
	.uaword	0x226a
	.byte	0x54
	.uleb128 0x15
	.string	"OCS"
	.byte	0x9
	.uahalf	0x300
	.uaword	0x1ef1
	.byte	0xe8
	.uleb128 0x15
	.string	"KRSTCLR"
	.byte	0x9
	.uahalf	0x301
	.uaword	0x1ddf
	.byte	0xec
	.uleb128 0x15
	.string	"KRST1"
	.byte	0x9
	.uahalf	0x302
	.uaword	0x1d9e
	.byte	0xf0
	.uleb128 0x15
	.string	"KRST0"
	.byte	0x9
	.uahalf	0x303
	.uaword	0x1d5d
	.byte	0xf4
	.uleb128 0x15
	.string	"ACCEN1"
	.byte	0x9
	.uahalf	0x304
	.uaword	0x19c7
	.byte	0xf8
	.uleb128 0x15
	.string	"ACCEN0"
	.byte	0x9
	.uahalf	0x305
	.uaword	0x1985
	.byte	0xfc
	.byte	0
	.uleb128 0x19
	.uaword	0x1e3
	.uaword	0x227a
	.uleb128 0x1a
	.uaword	0x227a
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x11
	.string	"Ifx_ASCLIN"
	.byte	0x9
	.uahalf	0x306
	.uaword	0x2299
	.uleb128 0x16
	.uaword	0x20bc
	.uleb128 0x19
	.uaword	0x1e3
	.uaword	0x22ae
	.uleb128 0x1a
	.uaword	0x227a
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.uaword	0x1e3
	.uaword	0x22be
	.uleb128 0x1a
	.uaword	0x227a
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.uaword	0x1e3
	.uaword	0x22ce
	.uleb128 0x1a
	.uaword	0x227a
	.byte	0xb
	.byte	0
	.uleb128 0x16
	.uaword	0x58f
	.uleb128 0x12
	.string	"_Ifx_CPU_ICR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x176
	.uaword	0x2348
	.uleb128 0xf
	.string	"CCPN"
	.byte	0xa
	.uahalf	0x178
	.uaword	0x22ce
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.uaword	.LASF12
	.byte	0xa
	.uahalf	0x179
	.uaword	0x22ce
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"IE"
	.byte	0xa
	.uahalf	0x17a
	.uaword	0x22ce
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"PIPN"
	.byte	0xa
	.uahalf	0x17b
	.uaword	0x22ce
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"reserved_26"
	.byte	0xa
	.uahalf	0x17c
	.uaword	0x22ce
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_CPU_ICR_Bits"
	.byte	0xa
	.uahalf	0x17d
	.uaword	0x22d3
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.uahalf	0x451
	.uaword	0x2389
	.uleb128 0x14
	.string	"U"
	.byte	0xa
	.uahalf	0x454
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xa
	.uahalf	0x456
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xa
	.uahalf	0x458
	.uaword	0x2348
	.byte	0
	.uleb128 0x11
	.string	"Ifx_CPU_ICR"
	.byte	0xa
	.uahalf	0x459
	.uaword	0x2361
	.uleb128 0x19
	.uaword	0x1e3
	.uaword	0x23ad
	.uleb128 0x1a
	.uaword	0x227a
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x2d
	.uaword	0x24cb
	.uleb128 0xd
	.string	"SRPN"
	.byte	0xb
	.byte	0x2f
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0xb
	.byte	0x30
	.uaword	0x58f
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"SRE"
	.byte	0xb
	.byte	0x31
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"TOS"
	.byte	0xb
	.byte	0x32
	.uaword	0x58f
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"reserved_13"
	.byte	0xb
	.byte	0x33
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"ECC"
	.byte	0xb
	.byte	0x34
	.uaword	0x58f
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"reserved_22"
	.byte	0xb
	.byte	0x35
	.uaword	0x58f
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"SRR"
	.byte	0xb
	.byte	0x36
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"CLRR"
	.byte	0xb
	.byte	0x37
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"SETR"
	.byte	0xb
	.byte	0x38
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"IOV"
	.byte	0xb
	.byte	0x39
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"IOVCLR"
	.byte	0xb
	.byte	0x3a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"SWS"
	.byte	0xb
	.byte	0x3b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"SWSCLR"
	.byte	0xb
	.byte	0x3c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"reserved_31"
	.byte	0xb
	.byte	0x3d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0xb
	.byte	0x3e
	.uaword	0x23ad
	.uleb128 0x1b
	.byte	0x4
	.byte	0xb
	.byte	0x46
	.uaword	0x2508
	.uleb128 0x1c
	.string	"U"
	.byte	0xb
	.byte	0x49
	.uaword	0x58f
	.uleb128 0x1c
	.string	"I"
	.byte	0xb
	.byte	0x4b
	.uaword	0x1a0
	.uleb128 0x1c
	.string	"B"
	.byte	0xb
	.byte	0x4d
	.uaword	0x24cb
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0xb
	.byte	0x4e
	.uaword	0x24e4
	.uleb128 0xc
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x2d
	.uaword	0x272e
	.uleb128 0xd
	.string	"EN0"
	.byte	0xc
	.byte	0x2f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"EN1"
	.byte	0xc
	.byte	0x30
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"EN2"
	.byte	0xc
	.byte	0x31
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EN3"
	.byte	0xc
	.byte	0x32
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"EN4"
	.byte	0xc
	.byte	0x33
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"EN5"
	.byte	0xc
	.byte	0x34
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"EN6"
	.byte	0xc
	.byte	0x35
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"EN7"
	.byte	0xc
	.byte	0x36
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EN8"
	.byte	0xc
	.byte	0x37
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"EN9"
	.byte	0xc
	.byte	0x38
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"EN10"
	.byte	0xc
	.byte	0x39
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"EN11"
	.byte	0xc
	.byte	0x3a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"EN12"
	.byte	0xc
	.byte	0x3b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"EN13"
	.byte	0xc
	.byte	0x3c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"EN14"
	.byte	0xc
	.byte	0x3d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"EN15"
	.byte	0xc
	.byte	0x3e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"EN16"
	.byte	0xc
	.byte	0x3f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"EN17"
	.byte	0xc
	.byte	0x40
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"EN18"
	.byte	0xc
	.byte	0x41
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"EN19"
	.byte	0xc
	.byte	0x42
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"EN20"
	.byte	0xc
	.byte	0x43
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"EN21"
	.byte	0xc
	.byte	0x44
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"EN22"
	.byte	0xc
	.byte	0x45
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"EN23"
	.byte	0xc
	.byte	0x46
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"EN24"
	.byte	0xc
	.byte	0x47
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"EN25"
	.byte	0xc
	.byte	0x48
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"EN26"
	.byte	0xc
	.byte	0x49
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"EN27"
	.byte	0xc
	.byte	0x4a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"EN28"
	.byte	0xc
	.byte	0x4b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"EN29"
	.byte	0xc
	.byte	0x4c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"EN30"
	.byte	0xc
	.byte	0x4d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"EN31"
	.byte	0xc
	.byte	0x4e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0xc
	.byte	0x4f
	.uaword	0x251c
	.uleb128 0xc
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x52
	.uaword	0x2772
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.byte	0x54
	.uaword	0x58f
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0xc
	.byte	0x55
	.uaword	0x2747
	.uleb128 0xc
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x58
	.uaword	0x28a9
	.uleb128 0xd
	.string	"EN0"
	.byte	0xc
	.byte	0x5a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"EN1"
	.byte	0xc
	.byte	0x5b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"EN2"
	.byte	0xc
	.byte	0x5c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EN3"
	.byte	0xc
	.byte	0x5d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"EN4"
	.byte	0xc
	.byte	0x5e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"EN5"
	.byte	0xc
	.byte	0x5f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"EN6"
	.byte	0xc
	.byte	0x60
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"EN7"
	.byte	0xc
	.byte	0x61
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EN8"
	.byte	0xc
	.byte	0x62
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"EN9"
	.byte	0xc
	.byte	0x63
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"EN10"
	.byte	0xc
	.byte	0x64
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"EN11"
	.byte	0xc
	.byte	0x65
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"EN12"
	.byte	0xc
	.byte	0x66
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"EN13"
	.byte	0xc
	.byte	0x67
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"EN14"
	.byte	0xc
	.byte	0x68
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"EN15"
	.byte	0xc
	.byte	0x69
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0xc
	.byte	0x6a
	.uaword	0x58f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0xc
	.byte	0x6b
	.uaword	0x278b
	.uleb128 0xc
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x6e
	.uaword	0x290b
	.uleb128 0xd
	.string	"MODREV"
	.byte	0xc
	.byte	0x70
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"MODTYPE"
	.byte	0xc
	.byte	0x71
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0xc
	.byte	0x72
	.uaword	0x58f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0xc
	.byte	0x73
	.uaword	0x28bf
	.uleb128 0xc
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x76
	.uaword	0x2a2d
	.uleb128 0xd
	.string	"P0"
	.byte	0xc
	.byte	0x78
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"P1"
	.byte	0xc
	.byte	0x79
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"P2"
	.byte	0xc
	.byte	0x7a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"P3"
	.byte	0xc
	.byte	0x7b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"P4"
	.byte	0xc
	.byte	0x7c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"P5"
	.byte	0xc
	.byte	0x7d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"P6"
	.byte	0xc
	.byte	0x7e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"P7"
	.byte	0xc
	.byte	0x7f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"P8"
	.byte	0xc
	.byte	0x80
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"P9"
	.byte	0xc
	.byte	0x81
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"P10"
	.byte	0xc
	.byte	0x82
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"P11"
	.byte	0xc
	.byte	0x83
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"P12"
	.byte	0xc
	.byte	0x84
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"P13"
	.byte	0xc
	.byte	0x85
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"P14"
	.byte	0xc
	.byte	0x86
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"P15"
	.byte	0xc
	.byte	0x87
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0xc
	.byte	0x88
	.uaword	0x58f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0xc
	.byte	0x89
	.uaword	0x2920
	.uleb128 0xc
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x8c
	.uaword	0x2ad5
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.byte	0x8e
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"PC0"
	.byte	0xc
	.byte	0x8f
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0xc
	.byte	0x90
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"PC1"
	.byte	0xc
	.byte	0x91
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0xc
	.byte	0x92
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"PC2"
	.byte	0xc
	.byte	0x93
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0xc
	.byte	0x94
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"PC3"
	.byte	0xc
	.byte	0x95
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0xc
	.byte	0x96
	.uaword	0x2a42
	.uleb128 0xc
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x99
	.uaword	0x2b85
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.byte	0x9b
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"PC12"
	.byte	0xc
	.byte	0x9c
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0xc
	.byte	0x9d
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"PC13"
	.byte	0xc
	.byte	0x9e
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0xc
	.byte	0x9f
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"PC14"
	.byte	0xc
	.byte	0xa0
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0xc
	.byte	0xa1
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"PC15"
	.byte	0xc
	.byte	0xa2
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0xc
	.byte	0xa3
	.uaword	0x2aed
	.uleb128 0xc
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xa6
	.uaword	0x2c31
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.byte	0xa8
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"PC4"
	.byte	0xc
	.byte	0xa9
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0xc
	.byte	0xaa
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"PC5"
	.byte	0xc
	.byte	0xab
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0xc
	.byte	0xac
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"PC6"
	.byte	0xc
	.byte	0xad
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0xc
	.byte	0xae
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"PC7"
	.byte	0xc
	.byte	0xaf
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0xc
	.byte	0xb0
	.uaword	0x2b9e
	.uleb128 0xc
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xb3
	.uaword	0x2cde
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.byte	0xb5
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"PC8"
	.byte	0xc
	.byte	0xb6
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0xc
	.byte	0xb7
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"PC9"
	.byte	0xc
	.byte	0xb8
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0xc
	.byte	0xb9
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"PC10"
	.byte	0xc
	.byte	0xba
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0xc
	.byte	0xbb
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"PC11"
	.byte	0xc
	.byte	0xbc
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0xc
	.byte	0xbd
	.uaword	0x2c49
	.uleb128 0xc
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xc0
	.uaword	0x2d3e
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.byte	0xc2
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"PS1"
	.byte	0xc
	.byte	0xc3
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0xc
	.byte	0xc4
	.uaword	0x58f
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0xc
	.byte	0xc5
	.uaword	0x2cf6
	.uleb128 0xc
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xc8
	.uaword	0x2d9e
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.byte	0xca
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"PS1"
	.byte	0xc
	.byte	0xcb
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0xc
	.byte	0xcc
	.uaword	0x58f
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0xc
	.byte	0xcd
	.uaword	0x2d56
	.uleb128 0xc
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xd0
	.uaword	0x2e2e
	.uleb128 0xd
	.string	"RDIS_CTRL"
	.byte	0xc
	.byte	0xd2
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"RX_DIS"
	.byte	0xc
	.byte	0xd3
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"TERM"
	.byte	0xc
	.byte	0xd4
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"LRXTERM"
	.byte	0xc
	.byte	0xd5
	.uaword	0x58f
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0xc
	.byte	0xd6
	.uaword	0x58f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0xc
	.byte	0xd7
	.uaword	0x2db6
	.uleb128 0xc
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xda
	.uaword	0x2f01
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.byte	0xdc
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"LVDSR"
	.byte	0xc
	.byte	0xdd
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"LVDSRL"
	.byte	0xc
	.byte	0xde
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0xc
	.byte	0xdf
	.uaword	0x58f
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"TDIS_CTRL"
	.byte	0xc
	.byte	0xe0
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"TX_DIS"
	.byte	0xc
	.byte	0xe1
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"TX_PD"
	.byte	0xc
	.byte	0xe2
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"TX_PWDPD"
	.byte	0xc
	.byte	0xe3
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0xc
	.byte	0xe4
	.uaword	0x58f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0xc
	.byte	0xe5
	.uaword	0x2e4a
	.uleb128 0xc
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xe8
	.uaword	0x2f92
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.byte	0xea
	.uaword	0x58f
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PCL0"
	.byte	0xc
	.byte	0xeb
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"PCL1"
	.byte	0xc
	.byte	0xec
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"PCL2"
	.byte	0xc
	.byte	0xed
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"PCL3"
	.byte	0xc
	.byte	0xee
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0xc
	.byte	0xef
	.uaword	0x58f
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0xc
	.byte	0xf0
	.uaword	0x2f19
	.uleb128 0xc
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xf3
	.uaword	0x3019
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.byte	0xf5
	.uaword	0x58f
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"PCL12"
	.byte	0xc
	.byte	0xf6
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"PCL13"
	.byte	0xc
	.byte	0xf7
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"PCL14"
	.byte	0xc
	.byte	0xf8
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"PCL15"
	.byte	0xc
	.byte	0xf9
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0xc
	.byte	0xfa
	.uaword	0x2faa
	.uleb128 0xc
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xfd
	.uaword	0x30b0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.byte	0xff
	.uaword	0x58f
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"PCL4"
	.byte	0xc
	.uahalf	0x100
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"PCL5"
	.byte	0xc
	.uahalf	0x101
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"PCL6"
	.byte	0xc
	.uahalf	0x102
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"PCL7"
	.byte	0xc
	.uahalf	0x103
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0xc
	.uahalf	0x104
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0xc
	.uahalf	0x105
	.uaword	0x3032
	.uleb128 0x12
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x108
	.uaword	0x314b
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x10a
	.uaword	0x58f
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"PCL8"
	.byte	0xc
	.uahalf	0x10b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"PCL9"
	.byte	0xc
	.uahalf	0x10c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"PCL10"
	.byte	0xc
	.uahalf	0x10d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PCL11"
	.byte	0xc
	.uahalf	0x10e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x10f
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0xc
	.uahalf	0x110
	.uaword	0x30c9
	.uleb128 0x12
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x113
	.uaword	0x32a5
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x115
	.uaword	0x58f
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"PCL0"
	.byte	0xc
	.uahalf	0x116
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"PCL1"
	.byte	0xc
	.uahalf	0x117
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"PCL2"
	.byte	0xc
	.uahalf	0x118
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PCL3"
	.byte	0xc
	.uahalf	0x119
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"PCL4"
	.byte	0xc
	.uahalf	0x11a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"PCL5"
	.byte	0xc
	.uahalf	0x11b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"PCL6"
	.byte	0xc
	.uahalf	0x11c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"PCL7"
	.byte	0xc
	.uahalf	0x11d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"PCL8"
	.byte	0xc
	.uahalf	0x11e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"PCL9"
	.byte	0xc
	.uahalf	0x11f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"PCL10"
	.byte	0xc
	.uahalf	0x120
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PCL11"
	.byte	0xc
	.uahalf	0x121
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"PCL12"
	.byte	0xc
	.uahalf	0x122
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"PCL13"
	.byte	0xc
	.uahalf	0x123
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"PCL14"
	.byte	0xc
	.uahalf	0x124
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"PCL15"
	.byte	0xc
	.uahalf	0x125
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR_Bits"
	.byte	0xc
	.uahalf	0x126
	.uaword	0x3164
	.uleb128 0x12
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x129
	.uaword	0x34f3
	.uleb128 0xf
	.string	"PS0"
	.byte	0xc
	.uahalf	0x12b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"PS1"
	.byte	0xc
	.uahalf	0x12c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"PS2"
	.byte	0xc
	.uahalf	0x12d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PS3"
	.byte	0xc
	.uahalf	0x12e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PS4"
	.byte	0xc
	.uahalf	0x12f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"PS5"
	.byte	0xc
	.uahalf	0x130
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"PS6"
	.byte	0xc
	.uahalf	0x131
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PS7"
	.byte	0xc
	.uahalf	0x132
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PS8"
	.byte	0xc
	.uahalf	0x133
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"PS9"
	.byte	0xc
	.uahalf	0x134
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"PS10"
	.byte	0xc
	.uahalf	0x135
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PS11"
	.byte	0xc
	.uahalf	0x136
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PS12"
	.byte	0xc
	.uahalf	0x137
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"PS13"
	.byte	0xc
	.uahalf	0x138
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"PS14"
	.byte	0xc
	.uahalf	0x139
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PS15"
	.byte	0xc
	.uahalf	0x13a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"PCL0"
	.byte	0xc
	.uahalf	0x13b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"PCL1"
	.byte	0xc
	.uahalf	0x13c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"PCL2"
	.byte	0xc
	.uahalf	0x13d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PCL3"
	.byte	0xc
	.uahalf	0x13e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"PCL4"
	.byte	0xc
	.uahalf	0x13f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"PCL5"
	.byte	0xc
	.uahalf	0x140
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"PCL6"
	.byte	0xc
	.uahalf	0x141
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"PCL7"
	.byte	0xc
	.uahalf	0x142
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"PCL8"
	.byte	0xc
	.uahalf	0x143
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"PCL9"
	.byte	0xc
	.uahalf	0x144
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"PCL10"
	.byte	0xc
	.uahalf	0x145
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PCL11"
	.byte	0xc
	.uahalf	0x146
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"PCL12"
	.byte	0xc
	.uahalf	0x147
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"PCL13"
	.byte	0xc
	.uahalf	0x148
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"PCL14"
	.byte	0xc
	.uahalf	0x149
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"PCL15"
	.byte	0xc
	.uahalf	0x14a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMR_Bits"
	.byte	0xc
	.uahalf	0x14b
	.uaword	0x32bd
	.uleb128 0x12
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x14e
	.uaword	0x3576
	.uleb128 0xf
	.string	"PS0"
	.byte	0xc
	.uahalf	0x150
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"PS1"
	.byte	0xc
	.uahalf	0x151
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"PS2"
	.byte	0xc
	.uahalf	0x152
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PS3"
	.byte	0xc
	.uahalf	0x153
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0xc
	.uahalf	0x154
	.uaword	0x58f
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0xc
	.uahalf	0x155
	.uaword	0x350a
	.uleb128 0x12
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x158
	.uaword	0x3610
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x15a
	.uaword	0x58f
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PS12"
	.byte	0xc
	.uahalf	0x15b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"PS13"
	.byte	0xc
	.uahalf	0x15c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"PS14"
	.byte	0xc
	.uahalf	0x15d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PS15"
	.byte	0xc
	.uahalf	0x15e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0xc
	.uahalf	0x15f
	.uaword	0x58f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0xc
	.uahalf	0x160
	.uaword	0x358f
	.uleb128 0x12
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x163
	.uaword	0x36a6
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x165
	.uaword	0x58f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PS4"
	.byte	0xc
	.uahalf	0x166
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"PS5"
	.byte	0xc
	.uahalf	0x167
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"PS6"
	.byte	0xc
	.uahalf	0x168
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PS7"
	.byte	0xc
	.uahalf	0x169
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0xc
	.uahalf	0x16a
	.uaword	0x58f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0xc
	.uahalf	0x16b
	.uaword	0x362a
	.uleb128 0x12
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x16e
	.uaword	0x373d
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x170
	.uaword	0x58f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PS8"
	.byte	0xc
	.uahalf	0x171
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"PS9"
	.byte	0xc
	.uahalf	0x172
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"PS10"
	.byte	0xc
	.uahalf	0x173
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PS11"
	.byte	0xc
	.uahalf	0x174
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0xc
	.uahalf	0x175
	.uaword	0x58f
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0xc
	.uahalf	0x176
	.uaword	0x36bf
	.uleb128 0x12
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x179
	.uaword	0x3887
	.uleb128 0xf
	.string	"PS0"
	.byte	0xc
	.uahalf	0x17b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"PS1"
	.byte	0xc
	.uahalf	0x17c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"PS2"
	.byte	0xc
	.uahalf	0x17d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PS3"
	.byte	0xc
	.uahalf	0x17e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PS4"
	.byte	0xc
	.uahalf	0x17f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"PS5"
	.byte	0xc
	.uahalf	0x180
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"PS6"
	.byte	0xc
	.uahalf	0x181
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PS7"
	.byte	0xc
	.uahalf	0x182
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PS8"
	.byte	0xc
	.uahalf	0x183
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"PS9"
	.byte	0xc
	.uahalf	0x184
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"PS10"
	.byte	0xc
	.uahalf	0x185
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PS11"
	.byte	0xc
	.uahalf	0x186
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PS12"
	.byte	0xc
	.uahalf	0x187
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"PS13"
	.byte	0xc
	.uahalf	0x188
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"PS14"
	.byte	0xc
	.uahalf	0x189
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PS15"
	.byte	0xc
	.uahalf	0x18a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0xc
	.uahalf	0x18b
	.uaword	0x58f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR_Bits"
	.byte	0xc
	.uahalf	0x18c
	.uaword	0x3756
	.uleb128 0x12
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x18f
	.uaword	0x39bf
	.uleb128 0xf
	.string	"P0"
	.byte	0xc
	.uahalf	0x191
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"P1"
	.byte	0xc
	.uahalf	0x192
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"P2"
	.byte	0xc
	.uahalf	0x193
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"P3"
	.byte	0xc
	.uahalf	0x194
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"P4"
	.byte	0xc
	.uahalf	0x195
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"P5"
	.byte	0xc
	.uahalf	0x196
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"P6"
	.byte	0xc
	.uahalf	0x197
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"P7"
	.byte	0xc
	.uahalf	0x198
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"P8"
	.byte	0xc
	.uahalf	0x199
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"P9"
	.byte	0xc
	.uahalf	0x19a
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"P10"
	.byte	0xc
	.uahalf	0x19b
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"P11"
	.byte	0xc
	.uahalf	0x19c
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"P12"
	.byte	0xc
	.uahalf	0x19d
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"P13"
	.byte	0xc
	.uahalf	0x19e
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"P14"
	.byte	0xc
	.uahalf	0x19f
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"P15"
	.byte	0xc
	.uahalf	0x1a0
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0xc
	.uahalf	0x1a1
	.uaword	0x58f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OUT_Bits"
	.byte	0xc
	.uahalf	0x1a2
	.uaword	0x389f
	.uleb128 0x12
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1a5
	.uaword	0x3abc
	.uleb128 0xf
	.string	"SEL0"
	.byte	0xc
	.uahalf	0x1a7
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"SEL1"
	.byte	0xc
	.uahalf	0x1a8
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"SEL2"
	.byte	0xc
	.uahalf	0x1a9
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"SEL3"
	.byte	0xc
	.uahalf	0x1aa
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"SEL4"
	.byte	0xc
	.uahalf	0x1ab
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"SEL5"
	.byte	0xc
	.uahalf	0x1ac
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"SEL6"
	.byte	0xc
	.uahalf	0x1ad
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0xc
	.uahalf	0x1ae
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"SEL10"
	.byte	0xc
	.uahalf	0x1af
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"SEL11"
	.byte	0xc
	.uahalf	0x1b0
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0xc
	.uahalf	0x1b1
	.uaword	0x58f
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"LCK"
	.byte	0xc
	.uahalf	0x1b2
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PCSR_Bits"
	.byte	0xc
	.uahalf	0x1b3
	.uaword	0x39d6
	.uleb128 0x12
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1b6
	.uaword	0x3c26
	.uleb128 0xf
	.string	"PDIS0"
	.byte	0xc
	.uahalf	0x1b8
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"PDIS1"
	.byte	0xc
	.uahalf	0x1b9
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"PDIS2"
	.byte	0xc
	.uahalf	0x1ba
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PDIS3"
	.byte	0xc
	.uahalf	0x1bb
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PDIS4"
	.byte	0xc
	.uahalf	0x1bc
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"PDIS5"
	.byte	0xc
	.uahalf	0x1bd
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"PDIS6"
	.byte	0xc
	.uahalf	0x1be
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PDIS7"
	.byte	0xc
	.uahalf	0x1bf
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PDIS8"
	.byte	0xc
	.uahalf	0x1c0
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"PDIS9"
	.byte	0xc
	.uahalf	0x1c1
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"PDIS10"
	.byte	0xc
	.uahalf	0x1c2
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PDIS11"
	.byte	0xc
	.uahalf	0x1c3
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PDIS12"
	.byte	0xc
	.uahalf	0x1c4
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"PDIS13"
	.byte	0xc
	.uahalf	0x1c5
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"PDIS14"
	.byte	0xc
	.uahalf	0x1c6
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PDIS15"
	.byte	0xc
	.uahalf	0x1c7
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0xc
	.uahalf	0x1c8
	.uaword	0x58f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDISC_Bits"
	.byte	0xc
	.uahalf	0x1c9
	.uaword	0x3ad4
	.uleb128 0x12
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1cc
	.uaword	0x3d5a
	.uleb128 0xf
	.string	"PD0"
	.byte	0xc
	.uahalf	0x1ce
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PL0"
	.byte	0xc
	.uahalf	0x1cf
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PD1"
	.byte	0xc
	.uahalf	0x1d0
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PL1"
	.byte	0xc
	.uahalf	0x1d1
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PD2"
	.byte	0xc
	.uahalf	0x1d2
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PL2"
	.byte	0xc
	.uahalf	0x1d3
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PD3"
	.byte	0xc
	.uahalf	0x1d4
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PL3"
	.byte	0xc
	.uahalf	0x1d5
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"PD4"
	.byte	0xc
	.uahalf	0x1d6
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PL4"
	.byte	0xc
	.uahalf	0x1d7
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"PD5"
	.byte	0xc
	.uahalf	0x1d8
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"PL5"
	.byte	0xc
	.uahalf	0x1d9
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"PD6"
	.byte	0xc
	.uahalf	0x1da
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PL6"
	.byte	0xc
	.uahalf	0x1db
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"PD7"
	.byte	0xc
	.uahalf	0x1dc
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"PL7"
	.byte	0xc
	.uahalf	0x1dd
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDR0_Bits"
	.byte	0xc
	.uahalf	0x1de
	.uaword	0x3c3f
	.uleb128 0x12
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1e1
	.uaword	0x3e99
	.uleb128 0xf
	.string	"PD8"
	.byte	0xc
	.uahalf	0x1e3
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PL8"
	.byte	0xc
	.uahalf	0x1e4
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PD9"
	.byte	0xc
	.uahalf	0x1e5
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PL9"
	.byte	0xc
	.uahalf	0x1e6
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PD10"
	.byte	0xc
	.uahalf	0x1e7
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PL10"
	.byte	0xc
	.uahalf	0x1e8
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PD11"
	.byte	0xc
	.uahalf	0x1e9
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PL11"
	.byte	0xc
	.uahalf	0x1ea
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"PD12"
	.byte	0xc
	.uahalf	0x1eb
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PL12"
	.byte	0xc
	.uahalf	0x1ec
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"PD13"
	.byte	0xc
	.uahalf	0x1ed
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"PL13"
	.byte	0xc
	.uahalf	0x1ee
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"PD14"
	.byte	0xc
	.uahalf	0x1ef
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PL14"
	.byte	0xc
	.uahalf	0x1f0
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"PD15"
	.byte	0xc
	.uahalf	0x1f1
	.uaword	0x58f
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"PL15"
	.byte	0xc
	.uahalf	0x1f2
	.uaword	0x58f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDR1_Bits"
	.byte	0xc
	.uahalf	0x1f3
	.uaword	0x3d72
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x1fb
	.uaword	0x3ed9
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x1fe
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x200
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x202
	.uaword	0x272e
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_ACCEN0"
	.byte	0xc
	.uahalf	0x203
	.uaword	0x3eb1
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x206
	.uaword	0x3f16
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x209
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x20b
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x20d
	.uaword	0x2772
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_ACCEN1"
	.byte	0xc
	.uahalf	0x20e
	.uaword	0x3eee
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x211
	.uaword	0x3f53
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x214
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x216
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x218
	.uaword	0x28a9
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_ESR"
	.byte	0xc
	.uahalf	0x219
	.uaword	0x3f2b
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x21c
	.uaword	0x3f8d
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x21f
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x221
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x223
	.uaword	0x290b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_ID"
	.byte	0xc
	.uahalf	0x224
	.uaword	0x3f65
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x227
	.uaword	0x3fc6
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x22a
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x22c
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x22e
	.uaword	0x2a2d
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_IN"
	.byte	0xc
	.uahalf	0x22f
	.uaword	0x3f9e
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x232
	.uaword	0x3fff
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x235
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x237
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x239
	.uaword	0x2ad5
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_IOCR0"
	.byte	0xc
	.uahalf	0x23a
	.uaword	0x3fd7
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x23d
	.uaword	0x403b
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x240
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x242
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x244
	.uaword	0x2b85
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_IOCR12"
	.byte	0xc
	.uahalf	0x245
	.uaword	0x4013
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x248
	.uaword	0x4078
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x24b
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x24d
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x24f
	.uaword	0x2c31
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_IOCR4"
	.byte	0xc
	.uahalf	0x250
	.uaword	0x4050
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x253
	.uaword	0x40b4
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x256
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x258
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x25a
	.uaword	0x2cde
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_IOCR8"
	.byte	0xc
	.uahalf	0x25b
	.uaword	0x408c
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x25e
	.uaword	0x40f0
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x261
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x263
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x265
	.uaword	0x2d3e
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_LPCR0"
	.byte	0xc
	.uahalf	0x266
	.uaword	0x40c8
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x269
	.uaword	0x413a
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x26c
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x26e
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x270
	.uaword	0x2d9e
	.uleb128 0x14
	.string	"B_P21"
	.byte	0xc
	.uahalf	0x272
	.uaword	0x2e2e
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_LPCR1"
	.byte	0xc
	.uahalf	0x273
	.uaword	0x4104
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x276
	.uaword	0x4176
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x279
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x27b
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x27d
	.uaword	0x2f01
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_LPCR2"
	.byte	0xc
	.uahalf	0x27e
	.uaword	0x414e
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x281
	.uaword	0x41b2
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x284
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x286
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x288
	.uaword	0x32a5
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR"
	.byte	0xc
	.uahalf	0x289
	.uaword	0x418a
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x28c
	.uaword	0x41ed
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x28f
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x291
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x293
	.uaword	0x2f92
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR0"
	.byte	0xc
	.uahalf	0x294
	.uaword	0x41c5
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x297
	.uaword	0x4229
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x29a
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x29c
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x29e
	.uaword	0x3019
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR12"
	.byte	0xc
	.uahalf	0x29f
	.uaword	0x4201
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x2a2
	.uaword	0x4266
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x2a5
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x2a7
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x2a9
	.uaword	0x30b0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR4"
	.byte	0xc
	.uahalf	0x2aa
	.uaword	0x423e
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x2ad
	.uaword	0x42a2
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x2b0
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x2b2
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x2b4
	.uaword	0x314b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR8"
	.byte	0xc
	.uahalf	0x2b5
	.uaword	0x427a
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x2b8
	.uaword	0x42de
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x2bb
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x2bd
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x2bf
	.uaword	0x34f3
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMR"
	.byte	0xc
	.uahalf	0x2c0
	.uaword	0x42b6
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x2c3
	.uaword	0x4318
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x2c6
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x2c8
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x2ca
	.uaword	0x3887
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR"
	.byte	0xc
	.uahalf	0x2cb
	.uaword	0x42f0
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x2ce
	.uaword	0x4353
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x2d1
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x2d3
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x2d5
	.uaword	0x3576
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR0"
	.byte	0xc
	.uahalf	0x2d6
	.uaword	0x432b
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x2d9
	.uaword	0x438f
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x2dc
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x2de
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x2e0
	.uaword	0x3610
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR12"
	.byte	0xc
	.uahalf	0x2e1
	.uaword	0x4367
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x2e4
	.uaword	0x43cc
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x2e7
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x2e9
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x2eb
	.uaword	0x36a6
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR4"
	.byte	0xc
	.uahalf	0x2ec
	.uaword	0x43a4
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x2ef
	.uaword	0x4408
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x2f2
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x2f4
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x2f6
	.uaword	0x373d
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR8"
	.byte	0xc
	.uahalf	0x2f7
	.uaword	0x43e0
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x2fa
	.uaword	0x4444
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x2fd
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x2ff
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x301
	.uaword	0x39bf
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OUT"
	.byte	0xc
	.uahalf	0x302
	.uaword	0x441c
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x305
	.uaword	0x447e
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x308
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x30a
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x30c
	.uaword	0x3abc
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PCSR"
	.byte	0xc
	.uahalf	0x30d
	.uaword	0x4456
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x310
	.uaword	0x44b9
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x313
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x315
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x317
	.uaword	0x3c26
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDISC"
	.byte	0xc
	.uahalf	0x318
	.uaword	0x4491
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x31b
	.uaword	0x44f5
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x31e
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x320
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x322
	.uaword	0x3d5a
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDR0"
	.byte	0xc
	.uahalf	0x323
	.uaword	0x44cd
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.uahalf	0x326
	.uaword	0x4530
	.uleb128 0x14
	.string	"U"
	.byte	0xc
	.uahalf	0x329
	.uaword	0x58f
	.uleb128 0x14
	.string	"I"
	.byte	0xc
	.uahalf	0x32b
	.uaword	0x1a0
	.uleb128 0x14
	.string	"B"
	.byte	0xc
	.uahalf	0x32d
	.uaword	0x3e99
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDR1"
	.byte	0xc
	.uahalf	0x32e
	.uaword	0x4508
	.uleb128 0x17
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0xc
	.uahalf	0x339
	.uaword	0x477c
	.uleb128 0x15
	.string	"OUT"
	.byte	0xc
	.uahalf	0x33b
	.uaword	0x4444
	.byte	0
	.uleb128 0x15
	.string	"OMR"
	.byte	0xc
	.uahalf	0x33c
	.uaword	0x42de
	.byte	0x4
	.uleb128 0x15
	.string	"ID"
	.byte	0xc
	.uahalf	0x33d
	.uaword	0x3f8d
	.byte	0x8
	.uleb128 0x15
	.string	"reserved_C"
	.byte	0xc
	.uahalf	0x33e
	.uaword	0x22ae
	.byte	0xc
	.uleb128 0x15
	.string	"IOCR0"
	.byte	0xc
	.uahalf	0x33f
	.uaword	0x3fff
	.byte	0x10
	.uleb128 0x15
	.string	"IOCR4"
	.byte	0xc
	.uahalf	0x340
	.uaword	0x4078
	.byte	0x14
	.uleb128 0x15
	.string	"IOCR8"
	.byte	0xc
	.uahalf	0x341
	.uaword	0x40b4
	.byte	0x18
	.uleb128 0x15
	.string	"IOCR12"
	.byte	0xc
	.uahalf	0x342
	.uaword	0x403b
	.byte	0x1c
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0xc
	.uahalf	0x343
	.uaword	0x22ae
	.byte	0x20
	.uleb128 0x15
	.string	"IN"
	.byte	0xc
	.uahalf	0x344
	.uaword	0x3fc6
	.byte	0x24
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x345
	.uaword	0x239d
	.byte	0x28
	.uleb128 0x15
	.string	"PDR0"
	.byte	0xc
	.uahalf	0x346
	.uaword	0x44f5
	.byte	0x40
	.uleb128 0x15
	.string	"PDR1"
	.byte	0xc
	.uahalf	0x347
	.uaword	0x4530
	.byte	0x44
	.uleb128 0x15
	.string	"reserved_48"
	.byte	0xc
	.uahalf	0x348
	.uaword	0x229e
	.byte	0x48
	.uleb128 0x15
	.string	"ESR"
	.byte	0xc
	.uahalf	0x349
	.uaword	0x3f53
	.byte	0x50
	.uleb128 0x18
	.uaword	.LASF17
	.byte	0xc
	.uahalf	0x34a
	.uaword	0x22be
	.byte	0x54
	.uleb128 0x15
	.string	"PDISC"
	.byte	0xc
	.uahalf	0x34b
	.uaword	0x44b9
	.byte	0x60
	.uleb128 0x15
	.string	"PCSR"
	.byte	0xc
	.uahalf	0x34c
	.uaword	0x447e
	.byte	0x64
	.uleb128 0x15
	.string	"reserved_68"
	.byte	0xc
	.uahalf	0x34d
	.uaword	0x229e
	.byte	0x68
	.uleb128 0x15
	.string	"OMSR0"
	.byte	0xc
	.uahalf	0x34e
	.uaword	0x4353
	.byte	0x70
	.uleb128 0x15
	.string	"OMSR4"
	.byte	0xc
	.uahalf	0x34f
	.uaword	0x43cc
	.byte	0x74
	.uleb128 0x15
	.string	"OMSR8"
	.byte	0xc
	.uahalf	0x350
	.uaword	0x4408
	.byte	0x78
	.uleb128 0x15
	.string	"OMSR12"
	.byte	0xc
	.uahalf	0x351
	.uaword	0x438f
	.byte	0x7c
	.uleb128 0x15
	.string	"OMCR0"
	.byte	0xc
	.uahalf	0x352
	.uaword	0x41ed
	.byte	0x80
	.uleb128 0x15
	.string	"OMCR4"
	.byte	0xc
	.uahalf	0x353
	.uaword	0x4266
	.byte	0x84
	.uleb128 0x15
	.string	"OMCR8"
	.byte	0xc
	.uahalf	0x354
	.uaword	0x42a2
	.byte	0x88
	.uleb128 0x15
	.string	"OMCR12"
	.byte	0xc
	.uahalf	0x355
	.uaword	0x4229
	.byte	0x8c
	.uleb128 0x15
	.string	"OMSR"
	.byte	0xc
	.uahalf	0x356
	.uaword	0x4318
	.byte	0x90
	.uleb128 0x15
	.string	"OMCR"
	.byte	0xc
	.uahalf	0x357
	.uaword	0x41b2
	.byte	0x94
	.uleb128 0x15
	.string	"reserved_98"
	.byte	0xc
	.uahalf	0x358
	.uaword	0x229e
	.byte	0x98
	.uleb128 0x15
	.string	"LPCR0"
	.byte	0xc
	.uahalf	0x359
	.uaword	0x40f0
	.byte	0xa0
	.uleb128 0x15
	.string	"LPCR1"
	.byte	0xc
	.uahalf	0x35a
	.uaword	0x413a
	.byte	0xa4
	.uleb128 0x15
	.string	"LPCR2"
	.byte	0xc
	.uahalf	0x35b
	.uaword	0x4176
	.byte	0xa8
	.uleb128 0x15
	.string	"reserved_A4"
	.byte	0xc
	.uahalf	0x35c
	.uaword	0x477c
	.byte	0xac
	.uleb128 0x15
	.string	"ACCEN1"
	.byte	0xc
	.uahalf	0x35d
	.uaword	0x3f16
	.byte	0xf8
	.uleb128 0x15
	.string	"ACCEN0"
	.byte	0xc
	.uahalf	0x35e
	.uaword	0x3ed9
	.byte	0xfc
	.byte	0
	.uleb128 0x19
	.uaword	0x1e3
	.uaword	0x478c
	.uleb128 0x1a
	.uaword	0x227a
	.byte	0x4b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P"
	.byte	0xc
	.uahalf	0x35f
	.uaword	0x479a
	.uleb128 0x16
	.uaword	0x4543
	.uleb128 0x5
	.byte	0x4
	.uaword	0x478c
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x40
	.uaword	0x4825
	.uleb128 0x8
	.string	"IfxPort_InputMode_undefined"
	.sleb128 -1
	.uleb128 0x8
	.string	"IfxPort_InputMode_noPullDevice"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxPort_InputMode_pullDown"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxPort_InputMode_pullUp"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_InputMode"
	.byte	0x5
	.byte	0x45
	.uaword	0x47a5
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x4c
	.uaword	0x4ade
	.uleb128 0x8
	.string	"IfxPort_Mode_inputNoPullDevice"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxPort_Mode_inputPullDown"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxPort_Mode_inputPullUp"
	.sleb128 16
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullGeneral"
	.sleb128 128
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt1"
	.sleb128 136
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt2"
	.sleb128 144
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt3"
	.sleb128 152
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt4"
	.sleb128 160
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt5"
	.sleb128 168
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt6"
	.sleb128 176
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt7"
	.sleb128 184
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainGeneral"
	.sleb128 192
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt1"
	.sleb128 200
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt2"
	.sleb128 208
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt3"
	.sleb128 216
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt4"
	.sleb128 224
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt5"
	.sleb128 232
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt6"
	.sleb128 240
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt7"
	.sleb128 248
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Mode"
	.byte	0x5
	.byte	0x60
	.uaword	0x483e
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x65
	.uaword	0x4bce
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_general"
	.sleb128 128
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt1"
	.sleb128 136
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt2"
	.sleb128 144
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt3"
	.sleb128 152
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt4"
	.sleb128 160
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt5"
	.sleb128 168
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt6"
	.sleb128 176
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt7"
	.sleb128 184
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputIdx"
	.byte	0x5
	.byte	0x6e
	.uaword	0x4af2
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x73
	.uaword	0x4c2f
	.uleb128 0x8
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x8
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputMode"
	.byte	0x5
	.byte	0x76
	.uaword	0x4be7
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x7d
	.uaword	0x4dea
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0x5
	.byte	0x8a
	.uaword	0x4c49
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0xaa
	.uaword	0x4e25
	.uleb128 0xb
	.string	"port"
	.byte	0x5
	.byte	0xac
	.uaword	0x479f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x5
	.byte	0xad
	.uaword	0x1d6
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Pin"
	.byte	0x5
	.byte	0xae
	.uaword	0x4e03
	.uleb128 0x7
	.byte	0x4
	.byte	0xd
	.byte	0x32
	.uaword	0x4e88
	.uleb128 0x8
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxSrc_Tos_dma"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0xd
	.byte	0x37
	.uaword	0x4e38
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2286
	.uleb128 0x9
	.byte	0x10
	.byte	0xe
	.byte	0x2f
	.uaword	0x4ecd
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xe
	.byte	0x31
	.uaword	0x4e9a
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xe
	.byte	0x32
	.uaword	0x4e25
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0xe
	.byte	0x33
	.uaword	0x32a
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Rx_In"
	.byte	0xe
	.byte	0x34
	.uaword	0x4ee4
	.uleb128 0x1d
	.uaword	0x4ea0
	.uleb128 0x9
	.byte	0x10
	.byte	0xe
	.byte	0x3f
	.uaword	0x4f16
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xe
	.byte	0x41
	.uaword	0x4e9a
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xe
	.byte	0x42
	.uaword	0x4e25
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0xe
	.byte	0x43
	.uaword	0x4bce
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Sclk_Out"
	.byte	0xe
	.byte	0x44
	.uaword	0x4f30
	.uleb128 0x1d
	.uaword	0x4ee9
	.uleb128 0x9
	.byte	0x10
	.byte	0xe
	.byte	0x47
	.uaword	0x4f62
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xe
	.byte	0x49
	.uaword	0x4e9a
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xe
	.byte	0x4a
	.uaword	0x4e25
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0xe
	.byte	0x4b
	.uaword	0x4bce
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Slso_Out"
	.byte	0xe
	.byte	0x4c
	.uaword	0x4f7c
	.uleb128 0x1d
	.uaword	0x4f35
	.uleb128 0x9
	.byte	0x10
	.byte	0xe
	.byte	0x4f
	.uaword	0x4fae
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xe
	.byte	0x51
	.uaword	0x4e9a
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xe
	.byte	0x52
	.uaword	0x4e25
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0xe
	.byte	0x53
	.uaword	0x4bce
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Tx_Out"
	.byte	0xe
	.byte	0x54
	.uaword	0x4fc6
	.uleb128 0x1d
	.uaword	0x4f81
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0x52
	.uaword	0x5019
	.uleb128 0x8
	.string	"IfxAsclin_ClockPolarity_idleLow"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_ClockPolarity_idleHigh"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_ClockPolarity"
	.byte	0x2
	.byte	0x55
	.uaword	0x4fcb
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0x5b
	.uaword	0x511c
	.uleb128 0x8
	.string	"IfxAsclin_ClockSource_noClock"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_ClockSource_kernelClock"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_ClockSource_oscillatorClock"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_ClockSource_flexRayClock"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxAsclin_ClockSource_ascFastClock"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxAsclin_ClockSource_ascSlowClock"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_ClockSource"
	.byte	0x2
	.byte	0x62
	.uaword	0x5038
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0x73
	.uaword	0x52d9
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_1"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_2"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_3"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_4"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_5"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_6"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_7"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_8"
	.sleb128 7
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_9"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_10"
	.sleb128 9
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_11"
	.sleb128 10
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_12"
	.sleb128 11
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_13"
	.sleb128 12
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_14"
	.sleb128 13
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_15"
	.sleb128 14
	.uleb128 0x8
	.string	"IfxAsclin_DataLength_16"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_DataLength"
	.byte	0x2
	.byte	0x84
	.uaword	0x5139
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0x8a
	.uaword	0x536d
	.uleb128 0x8
	.string	"IfxAsclin_FrameMode_initialise"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_FrameMode_asc"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_FrameMode_spi"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_FrameMode_lin"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_FrameMode"
	.byte	0x2
	.byte	0x8f
	.uaword	0x52f5
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0xa0
	.uaword	0x5451
	.uleb128 0x8
	.string	"IfxAsclin_IdleDelay_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_IdleDelay_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_IdleDelay_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_IdleDelay_3"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxAsclin_IdleDelay_4"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxAsclin_IdleDelay_5"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxAsclin_IdleDelay_6"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxAsclin_IdleDelay_7"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_IdleDelay"
	.byte	0x2
	.byte	0xa9
	.uaword	0x5388
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0xb0
	.uaword	0x5535
	.uleb128 0x8
	.string	"IfxAsclin_LeadDelay_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_LeadDelay_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_LeadDelay_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_LeadDelay_3"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxAsclin_LeadDelay_4"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxAsclin_LeadDelay_5"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxAsclin_LeadDelay_6"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxAsclin_LeadDelay_7"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_LeadDelay"
	.byte	0x2
	.byte	0xb9
	.uaword	0x546c
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0xd1
	.uaword	0x570d
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_4"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_5"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_6"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_7"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_8"
	.sleb128 7
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_9"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_10"
	.sleb128 9
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_11"
	.sleb128 10
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_12"
	.sleb128 11
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_13"
	.sleb128 12
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_14"
	.sleb128 13
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_15"
	.sleb128 14
	.uleb128 0x8
	.string	"IfxAsclin_OversamplingFactor_16"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_OversamplingFactor"
	.byte	0x2
	.byte	0xdf
	.uaword	0x5550
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0xee
	.uaword	0x5786
	.uleb128 0x8
	.string	"IfxAsclin_ReceiveBufferMode_rxFifo"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_ReceiveBufferMode_rxBuffer"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_ReceiveBufferMode"
	.byte	0x2
	.byte	0xf1
	.uaword	0x5731
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.uahalf	0x100
	.uaword	0x59ea
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_1"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_2"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_3"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_4"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_5"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_6"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_7"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_8"
	.sleb128 7
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_9"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_10"
	.sleb128 9
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_11"
	.sleb128 10
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_12"
	.sleb128 11
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_13"
	.sleb128 12
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_14"
	.sleb128 13
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_15"
	.sleb128 14
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoInterruptLevel_16"
	.sleb128 15
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_RxFifoInterruptLevel"
	.byte	0x2
	.uahalf	0x111
	.uaword	0x57a9
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.uahalf	0x117
	.uaword	0x5a9b
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoOutletWidth_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoOutletWidth_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoOutletWidth_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_RxFifoOutletWidth_3"
	.sleb128 3
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_RxFifoOutletWidth"
	.byte	0x2
	.uahalf	0x11c
	.uaword	0x5a11
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.uahalf	0x122
	.uaword	0x5ba9
	.uleb128 0x8
	.string	"IfxAsclin_RxInputSelect_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_RxInputSelect_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_RxInputSelect_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_RxInputSelect_3"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxAsclin_RxInputSelect_4"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxAsclin_RxInputSelect_5"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxAsclin_RxInputSelect_6"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxAsclin_RxInputSelect_7"
	.sleb128 7
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_RxInputSelect"
	.byte	0x2
	.uahalf	0x12b
	.uaword	0x5abf
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.uahalf	0x131
	.uaword	0x5dd7
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_3"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_4"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_5"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_6"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_7"
	.sleb128 7
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_8"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_9"
	.sleb128 9
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_10"
	.sleb128 10
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_11"
	.sleb128 11
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_12"
	.sleb128 12
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_13"
	.sleb128 13
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_14"
	.sleb128 14
	.uleb128 0x8
	.string	"IfxAsclin_SamplePointPosition_15"
	.sleb128 15
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_SamplePointPosition"
	.byte	0x2
	.uahalf	0x141
	.uaword	0x5bc9
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.uahalf	0x147
	.uaword	0x5e45
	.uleb128 0x8
	.string	"IfxAsclin_SamplesPerBit_one"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_SamplesPerBit_three"
	.sleb128 1
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_SamplesPerBit"
	.byte	0x2
	.uahalf	0x14a
	.uaword	0x5dfd
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.uahalf	0x151
	.uaword	0x5eb7
	.uleb128 0x8
	.string	"IfxAsclin_ShiftDirection_lsbFirst"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_ShiftDirection_msbFirst"
	.sleb128 1
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_ShiftDirection"
	.byte	0x2
	.uahalf	0x154
	.uaword	0x5e65
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.uahalf	0x15b
	.uaword	0x5f27
	.uleb128 0x8
	.string	"IfxAsclin_SlavePolarity_idleLow"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_SlavePolarity_idlehigh"
	.sleb128 1
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_SlavePolarity"
	.byte	0x2
	.uahalf	0x15e
	.uaword	0x5ed8
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.uahalf	0x16c
	.uaword	0x5f92
	.uleb128 0x8
	.string	"IfxAsclin_Status_configurationError"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_Status_noError"
	.sleb128 1
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_Status"
	.byte	0x2
	.uahalf	0x16f
	.uaword	0x5f47
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.uahalf	0x175
	.uaword	0x6065
	.uleb128 0x8
	.string	"IfxAsclin_StopBit_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_StopBit_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_StopBit_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_StopBit_3"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxAsclin_StopBit_4"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxAsclin_StopBit_5"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxAsclin_StopBit_6"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxAsclin_StopBit_7"
	.sleb128 7
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_StopBit"
	.byte	0x2
	.uahalf	0x17e
	.uaword	0x5fab
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.uahalf	0x18d
	.uaword	0x6105
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInletWidth_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInletWidth_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInletWidth_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInletWidth_3"
	.sleb128 3
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_TxFifoInletWidth"
	.byte	0x2
	.uahalf	0x192
	.uaword	0x607f
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.uahalf	0x198
	.uaword	0x6368
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_3"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_4"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_5"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_6"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_7"
	.sleb128 7
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_8"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_9"
	.sleb128 9
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_10"
	.sleb128 10
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_11"
	.sleb128 11
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_12"
	.sleb128 12
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_13"
	.sleb128 13
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_14"
	.sleb128 14
	.uleb128 0x8
	.string	"IfxAsclin_TxFifoInterruptLevel_15"
	.sleb128 15
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_TxFifoInterruptLevel"
	.byte	0x2
	.uahalf	0x1a9
	.uaword	0x6128
	.uleb128 0x7
	.byte	0x4
	.byte	0xf
	.byte	0xd5
	.uaword	0x63ed
	.uleb128 0x8
	.string	"IfxAsclin_Spi_Status_ok"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxAsclin_Spi_Status_busy"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxAsclin_Spi_Status_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Spi_Status"
	.byte	0xf
	.byte	0xd9
	.uaword	0x638f
	.uleb128 0x9
	.byte	0xc
	.byte	0xf
	.byte	0xe3
	.uaword	0x643f
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0xf
	.byte	0xe5
	.uaword	0x241
	.byte	0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0xf
	.byte	0xe6
	.uaword	0x201
	.byte	0x4
	.uleb128 0xb
	.string	"oversampling"
	.byte	0xf
	.byte	0xe7
	.uaword	0x570d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Spi_Baudrate"
	.byte	0xf
	.byte	0xe8
	.uaword	0x6409
	.uleb128 0x9
	.byte	0x4
	.byte	0xf
	.byte	0xec
	.uaword	0x647b
	.uleb128 0xb
	.string	"medianFilter"
	.byte	0xf
	.byte	0xee
	.uaword	0x5e45
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Spi_BitSamplingControl"
	.byte	0xf
	.byte	0xef
	.uaword	0x645d
	.uleb128 0x9
	.byte	0x1
	.byte	0xf
	.byte	0xf3
	.uaword	0x6511
	.uleb128 0xd
	.string	"frameError"
	.byte	0xf
	.byte	0xf5
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"rxFifoOverflow"
	.byte	0xf
	.byte	0xf6
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"rxFifoUnderflow"
	.byte	0xf
	.byte	0xf7
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"txFifoOverflow"
	.byte	0xf
	.byte	0xf8
	.uaword	0x1d6
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Spi_ErrorFlags"
	.byte	0xf
	.byte	0xf9
	.uaword	0x64a3
	.uleb128 0x9
	.byte	0x14
	.byte	0xf
	.byte	0xfd
	.uaword	0x65aa
	.uleb128 0xb
	.string	"inWidth"
	.byte	0xf
	.byte	0xff
	.uaword	0x6105
	.byte	0
	.uleb128 0x15
	.string	"txFifoInterruptLevel"
	.byte	0xf
	.uahalf	0x100
	.uaword	0x6368
	.byte	0x4
	.uleb128 0x15
	.string	"outWidth"
	.byte	0xf
	.uahalf	0x101
	.uaword	0x5a9b
	.byte	0x8
	.uleb128 0x15
	.string	"rxFifoInterruptLevel"
	.byte	0xf
	.uahalf	0x102
	.uaword	0x59ea
	.byte	0xc
	.uleb128 0x15
	.string	"buffMode"
	.byte	0xf
	.uahalf	0x103
	.uaword	0x5786
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_Spi_FifoControl"
	.byte	0xf
	.uahalf	0x104
	.uaword	0x6531
	.uleb128 0x1f
	.byte	0x10
	.byte	0xf
	.uahalf	0x108
	.uaword	0x661f
	.uleb128 0x15
	.string	"idleDelay"
	.byte	0xf
	.uahalf	0x10a
	.uaword	0x5451
	.byte	0
	.uleb128 0x15
	.string	"stopBit"
	.byte	0xf
	.uahalf	0x10b
	.uaword	0x6065
	.byte	0x4
	.uleb128 0x15
	.string	"leadDelay"
	.byte	0xf
	.uahalf	0x10c
	.uaword	0x5535
	.byte	0x8
	.uleb128 0x15
	.string	"shiftDir"
	.byte	0xf
	.uahalf	0x10d
	.uaword	0x5eb7
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_Spi_FrameControl"
	.byte	0xf
	.uahalf	0x10e
	.uaword	0x65cc
	.uleb128 0x1f
	.byte	0x10
	.byte	0xf
	.uahalf	0x112
	.uaword	0x6688
	.uleb128 0x15
	.string	"alti"
	.byte	0xf
	.uahalf	0x114
	.uaword	0x5ba9
	.byte	0
	.uleb128 0x15
	.string	"cpol"
	.byte	0xf
	.uahalf	0x115
	.uaword	0x5019
	.byte	0x4
	.uleb128 0x15
	.string	"spol"
	.byte	0xf
	.uahalf	0x116
	.uaword	0x5f27
	.byte	0x8
	.uleb128 0x15
	.string	"loopBack"
	.byte	0xf
	.uahalf	0x117
	.uaword	0x263
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_Spi_InputOutputControl"
	.byte	0xf
	.uahalf	0x118
	.uaword	0x6642
	.uleb128 0x1f
	.byte	0xc
	.byte	0xf
	.uahalf	0x11c
	.uaword	0x670e
	.uleb128 0x15
	.string	"txPriority"
	.byte	0xf
	.uahalf	0x11e
	.uaword	0x201
	.byte	0
	.uleb128 0x15
	.string	"rxPriority"
	.byte	0xf
	.uahalf	0x11f
	.uaword	0x201
	.byte	0x2
	.uleb128 0x15
	.string	"erPriority"
	.byte	0xf
	.uahalf	0x120
	.uaword	0x201
	.byte	0x4
	.uleb128 0x15
	.string	"typeOfService"
	.byte	0xf
	.uahalf	0x121
	.uaword	0x4e88
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_Spi_InterruptConfig"
	.byte	0xf
	.uahalf	0x122
	.uaword	0x66b1
	.uleb128 0x1f
	.byte	0x8
	.byte	0xf
	.uahalf	0x126
	.uaword	0x675d
	.uleb128 0x15
	.string	"data"
	.byte	0xf
	.uahalf	0x128
	.uaword	0x294
	.byte	0
	.uleb128 0x15
	.string	"pending"
	.byte	0xf
	.uahalf	0x129
	.uaword	0x233
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_Spi_Job"
	.byte	0xf
	.uahalf	0x12a
	.uaword	0x6734
	.uleb128 0x1f
	.byte	0x24
	.byte	0xf
	.uahalf	0x12e
	.uaword	0x680c
	.uleb128 0x15
	.string	"sclk"
	.byte	0xf
	.uahalf	0x130
	.uaword	0x680c
	.byte	0
	.uleb128 0x15
	.string	"sclkMode"
	.byte	0xf
	.uahalf	0x131
	.uaword	0x4c2f
	.byte	0x4
	.uleb128 0x15
	.string	"rx"
	.byte	0xf
	.uahalf	0x132
	.uaword	0x6812
	.byte	0x8
	.uleb128 0x15
	.string	"rxMode"
	.byte	0xf
	.uahalf	0x133
	.uaword	0x4825
	.byte	0xc
	.uleb128 0x15
	.string	"tx"
	.byte	0xf
	.uahalf	0x134
	.uaword	0x6818
	.byte	0x10
	.uleb128 0x15
	.string	"txMode"
	.byte	0xf
	.uahalf	0x135
	.uaword	0x4c2f
	.byte	0x14
	.uleb128 0x15
	.string	"slso"
	.byte	0xf
	.uahalf	0x136
	.uaword	0x681e
	.byte	0x18
	.uleb128 0x15
	.string	"slsoMode"
	.byte	0xf
	.uahalf	0x137
	.uaword	0x4c2f
	.byte	0x1c
	.uleb128 0x15
	.string	"pinDriver"
	.byte	0xf
	.uahalf	0x138
	.uaword	0x4dea
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4f16
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4ecd
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4fae
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4f62
	.uleb128 0x11
	.string	"IfxAsclin_Spi_Pins"
	.byte	0xf
	.uahalf	0x139
	.uaword	0x6777
	.uleb128 0x1f
	.byte	0x24
	.byte	0xf
	.uahalf	0x141
	.uaword	0x68c8
	.uleb128 0x18
	.uaword	.LASF23
	.byte	0xf
	.uahalf	0x143
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x15
	.string	"errorFlags"
	.byte	0xf
	.uahalf	0x144
	.uaword	0x6511
	.byte	0x4
	.uleb128 0x15
	.string	"txJob"
	.byte	0xf
	.uahalf	0x145
	.uaword	0x675d
	.byte	0x8
	.uleb128 0x15
	.string	"rxJob"
	.byte	0xf
	.uahalf	0x146
	.uaword	0x675d
	.byte	0x10
	.uleb128 0x15
	.string	"transferInProgress"
	.byte	0xf
	.uahalf	0x147
	.uaword	0x263
	.byte	0x18
	.uleb128 0x15
	.string	"sending"
	.byte	0xf
	.uahalf	0x148
	.uaword	0x233
	.byte	0x1c
	.uleb128 0x15
	.string	"dataWidth"
	.byte	0xf
	.uahalf	0x149
	.uaword	0x1d6
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.string	"IfxAsclin_Spi"
	.byte	0xf
	.uahalf	0x14a
	.uaword	0x683f
	.uleb128 0x1f
	.byte	0x64
	.byte	0xf
	.uahalf	0x14e
	.uaword	0x69a6
	.uleb128 0x18
	.uaword	.LASF23
	.byte	0xf
	.uahalf	0x150
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x15
	.string	"frameMode"
	.byte	0xf
	.uahalf	0x151
	.uaword	0x536d
	.byte	0x4
	.uleb128 0x15
	.string	"inputOutput"
	.byte	0xf
	.uahalf	0x152
	.uaword	0x6688
	.byte	0x8
	.uleb128 0x18
	.uaword	.LASF21
	.byte	0xf
	.uahalf	0x153
	.uaword	0x643f
	.byte	0x18
	.uleb128 0x15
	.string	"bitSampling"
	.byte	0xf
	.uahalf	0x154
	.uaword	0x647b
	.byte	0x24
	.uleb128 0x15
	.string	"frame"
	.byte	0xf
	.uahalf	0x155
	.uaword	0x661f
	.byte	0x28
	.uleb128 0x15
	.string	"dataLength"
	.byte	0xf
	.uahalf	0x156
	.uaword	0x52d9
	.byte	0x38
	.uleb128 0x15
	.string	"fifo"
	.byte	0xf
	.uahalf	0x157
	.uaword	0x65aa
	.byte	0x3c
	.uleb128 0x15
	.string	"interrupt"
	.byte	0xf
	.uahalf	0x158
	.uaword	0x670e
	.byte	0x50
	.uleb128 0x15
	.string	"pins"
	.byte	0xf
	.uahalf	0x159
	.uaword	0x69a6
	.byte	0x5c
	.uleb128 0x15
	.string	"clockSource"
	.byte	0xf
	.uahalf	0x15a
	.uaword	0x511c
	.byte	0x60
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x69ac
	.uleb128 0x1d
	.uaword	0x6824
	.uleb128 0x11
	.string	"IfxAsclin_Spi_Config"
	.byte	0xf
	.uahalf	0x15b
	.uaword	0x68de
	.uleb128 0x20
	.string	"IfxCpu_areInterruptsEnabled"
	.byte	0x6
	.uahalf	0x27b
	.byte	0x1
	.uaword	0x263
	.byte	0x3
	.uaword	0x6a15
	.uleb128 0x21
	.string	"reg"
	.byte	0x6
	.uahalf	0x27d
	.uaword	0x2389
	.uleb128 0x22
	.uleb128 0x21
	.string	"__res"
	.byte	0x6
	.uahalf	0x27e
	.uaword	0x58f
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"__nop"
	.byte	0x3
	.uahalf	0x57b
	.byte	0x1
	.byte	0x3
	.uleb128 0x24
	.string	"IfxSrc_clearRequest"
	.byte	0x4
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uaword	0x6a4a
	.uleb128 0x25
	.string	"src"
	.byte	0x4
	.byte	0xe6
	.uaword	0x6a4a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6a50
	.uleb128 0x16
	.uaword	0x2508
	.uleb128 0x26
	.string	"IfxPort_setPinModeOutput"
	.byte	0x5
	.uahalf	0x236
	.byte	0x1
	.byte	0x3
	.uaword	0x6aad
	.uleb128 0x27
	.string	"port"
	.byte	0x5
	.uahalf	0x236
	.uaword	0x479f
	.uleb128 0x28
	.uaword	.LASF19
	.byte	0x5
	.uahalf	0x236
	.uaword	0x1d6
	.uleb128 0x27
	.string	"mode"
	.byte	0x5
	.uahalf	0x236
	.uaword	0x4c2f
	.uleb128 0x27
	.string	"index"
	.byte	0x5
	.uahalf	0x236
	.uaword	0x4bce
	.byte	0
	.uleb128 0x29
	.string	"__minu"
	.byte	0x3
	.byte	0xae
	.byte	0x1
	.uaword	0x233
	.byte	0x3
	.uaword	0x6adf
	.uleb128 0x25
	.string	"a"
	.byte	0x3
	.byte	0xae
	.uaword	0x233
	.uleb128 0x25
	.string	"b"
	.byte	0x3
	.byte	0xae
	.uaword	0x233
	.uleb128 0x2a
	.string	"res"
	.byte	0x3
	.byte	0xb0
	.uaword	0x233
	.byte	0
	.uleb128 0x26
	.string	"IfxPort_setPinModeInput"
	.byte	0x5
	.uahalf	0x230
	.byte	0x1
	.byte	0x3
	.uaword	0x6b28
	.uleb128 0x27
	.string	"port"
	.byte	0x5
	.uahalf	0x230
	.uaword	0x479f
	.uleb128 0x28
	.uaword	.LASF19
	.byte	0x5
	.uahalf	0x230
	.uaword	0x1d6
	.uleb128 0x27
	.string	"mode"
	.byte	0x5
	.uahalf	0x230
	.uaword	0x4825
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setRxInput"
	.byte	0x2
	.uahalf	0x92b
	.byte	0x1
	.byte	0x3
	.uaword	0x6b61
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x92b
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"alti"
	.byte	0x2
	.uahalf	0x92b
	.uaword	0x5ba9
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setDisableModuleRequest"
	.byte	0x2
	.uahalf	0x8a7
	.byte	0x1
	.byte	0x3
	.uaword	0x6b9a
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x8a7
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setFrameMode"
	.byte	0x2
	.uahalf	0x8b9
	.byte	0x1
	.byte	0x3
	.uaword	0x6bd5
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x8b9
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"mode"
	.byte	0x2
	.uahalf	0x8b9
	.uaword	0x536d
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setPrescaler"
	.byte	0x2
	.uahalf	0x90d
	.byte	0x1
	.byte	0x3
	.uaword	0x6c0f
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x90d
	.uaword	0x4e9a
	.uleb128 0x28
	.uaword	.LASF22
	.byte	0x2
	.uahalf	0x90d
	.uaword	0x201
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setClockPolarity"
	.byte	0x2
	.uahalf	0x88f
	.byte	0x1
	.byte	0x3
	.uaword	0x6c4e
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x88f
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"cpol"
	.byte	0x2
	.uahalf	0x88f
	.uaword	0x5019
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setSlavePolarity"
	.byte	0x2
	.uahalf	0x943
	.byte	0x1
	.byte	0x3
	.uaword	0x6c8d
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x943
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"spol"
	.byte	0x2
	.uahalf	0x943
	.uaword	0x5f27
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_enableLoopBackMode"
	.byte	0x2
	.uahalf	0x700
	.byte	0x1
	.byte	0x3
	.uaword	0x6ccd
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x700
	.uaword	0x4e9a
	.uleb128 0x28
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x700
	.uaword	0x263
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setIdleDelay"
	.byte	0x2
	.uahalf	0x8c5
	.byte	0x1
	.byte	0x3
	.uaword	0x6d09
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x8c5
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"delay"
	.byte	0x2
	.uahalf	0x8c5
	.uaword	0x5451
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setLeadDelay"
	.byte	0x2
	.uahalf	0x8d7
	.byte	0x1
	.byte	0x3
	.uaword	0x6d45
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x8d7
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"delay"
	.byte	0x2
	.uahalf	0x8d7
	.uaword	0x5535
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setStopBit"
	.byte	0x2
	.uahalf	0x952
	.byte	0x1
	.byte	0x3
	.uaword	0x6d81
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x952
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"stopBit"
	.byte	0x2
	.uahalf	0x952
	.uaword	0x6065
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setShiftDirection"
	.byte	0x2
	.uahalf	0x93d
	.byte	0x1
	.byte	0x3
	.uaword	0x6dc0
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x93d
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"dir"
	.byte	0x2
	.uahalf	0x93d
	.uaword	0x5eb7
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setDataLength"
	.byte	0x2
	.uahalf	0x89b
	.byte	0x1
	.byte	0x3
	.uaword	0x6dfe
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x89b
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"length"
	.byte	0x2
	.uahalf	0x89b
	.uaword	0x52d9
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setTxFifoInletWidth"
	.byte	0x2
	.uahalf	0x975
	.byte	0x1
	.byte	0x3
	.uaword	0x6e41
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x975
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"width"
	.byte	0x2
	.uahalf	0x975
	.uaword	0x6105
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setRxFifoOutletWidth"
	.byte	0x2
	.uahalf	0x925
	.byte	0x1
	.byte	0x3
	.uaword	0x6e85
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x925
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"width"
	.byte	0x2
	.uahalf	0x925
	.uaword	0x5a9b
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setRxBufferMode"
	.byte	0x2
	.uahalf	0x919
	.byte	0x1
	.byte	0x3
	.uaword	0x6ec3
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x919
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"mode"
	.byte	0x2
	.uahalf	0x919
	.uaword	0x5786
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setTxFifoInterruptLevel"
	.byte	0x2
	.uahalf	0x97b
	.byte	0x1
	.byte	0x3
	.uaword	0x6f0a
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x97b
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"level"
	.byte	0x2
	.uahalf	0x97b
	.uaword	0x6368
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_setRxFifoInterruptLevel"
	.byte	0x2
	.uahalf	0x91f
	.byte	0x1
	.byte	0x3
	.uaword	0x6f51
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x91f
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"level"
	.byte	0x2
	.uahalf	0x91f
	.uaword	0x59ea
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_flushRxFifo"
	.byte	0x2
	.uahalf	0x766
	.byte	0x1
	.byte	0x3
	.uaword	0x6f7e
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x766
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_flushTxFifo"
	.byte	0x2
	.uahalf	0x76c
	.byte	0x1
	.byte	0x3
	.uaword	0x6fab
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x76c
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_disableAllFlags"
	.byte	0x2
	.uahalf	0x6b2
	.byte	0x1
	.byte	0x3
	.uaword	0x6fdc
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x6b2
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_clearAllFlags"
	.byte	0x2
	.uahalf	0x628
	.byte	0x1
	.byte	0x3
	.uaword	0x700b
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x628
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x24
	.string	"IfxSrc_init"
	.byte	0x4
	.byte	0xfe
	.byte	0x1
	.byte	0x3
	.uaword	0x7050
	.uleb128 0x25
	.string	"src"
	.byte	0x4
	.byte	0xfe
	.uaword	0x6a4a
	.uleb128 0x25
	.string	"typOfService"
	.byte	0x4
	.byte	0xfe
	.uaword	0x4e88
	.uleb128 0x25
	.string	"priority"
	.byte	0x4
	.byte	0xfe
	.uaword	0x29d
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_enableRxFifoFillLevelFlag"
	.byte	0x2
	.uahalf	0x71e
	.byte	0x1
	.byte	0x3
	.uaword	0x7097
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x71e
	.uaword	0x4e9a
	.uleb128 0x28
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x71e
	.uaword	0x263
	.byte	0
	.uleb128 0x24
	.string	"IfxSrc_enable"
	.byte	0x4
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0x70ba
	.uleb128 0x25
	.string	"src"
	.byte	0x4
	.byte	0xf8
	.uaword	0x6a4a
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_enableTxFifoFillLevelFlag"
	.byte	0x2
	.uahalf	0x748
	.byte	0x1
	.byte	0x3
	.uaword	0x7101
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x748
	.uaword	0x4e9a
	.uleb128 0x28
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x748
	.uaword	0x263
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_enableFrameErrorFlag"
	.byte	0x2
	.uahalf	0x6dc
	.byte	0x1
	.byte	0x3
	.uaword	0x7143
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x6dc
	.uaword	0x4e9a
	.uleb128 0x28
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x6dc
	.uaword	0x263
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_initSclkPin"
	.byte	0x2
	.uahalf	0x850
	.byte	0x1
	.byte	0x3
	.uaword	0x7189
	.uleb128 0x27
	.string	"sclk"
	.byte	0x2
	.uahalf	0x850
	.uaword	0x680c
	.uleb128 0x28
	.uaword	.LASF25
	.byte	0x2
	.uahalf	0x850
	.uaword	0x4c2f
	.uleb128 0x28
	.uaword	.LASF26
	.byte	0x2
	.uahalf	0x850
	.uaword	0x4dea
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_initRxPin"
	.byte	0x2
	.uahalf	0x845
	.byte	0x1
	.byte	0x3
	.uaword	0x71d1
	.uleb128 0x27
	.string	"rx"
	.byte	0x2
	.uahalf	0x845
	.uaword	0x6812
	.uleb128 0x27
	.string	"inputMode"
	.byte	0x2
	.uahalf	0x845
	.uaword	0x4825
	.uleb128 0x28
	.uaword	.LASF26
	.byte	0x2
	.uahalf	0x845
	.uaword	0x4dea
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_initTxPin"
	.byte	0x2
	.uahalf	0x85e
	.byte	0x1
	.byte	0x3
	.uaword	0x7213
	.uleb128 0x27
	.string	"tx"
	.byte	0x2
	.uahalf	0x85e
	.uaword	0x6818
	.uleb128 0x28
	.uaword	.LASF25
	.byte	0x2
	.uahalf	0x85e
	.uaword	0x4c2f
	.uleb128 0x28
	.uaword	.LASF26
	.byte	0x2
	.uahalf	0x85e
	.uaword	0x4dea
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_initSlsoPin"
	.byte	0x2
	.uahalf	0x857
	.byte	0x1
	.byte	0x3
	.uaword	0x7259
	.uleb128 0x27
	.string	"slso"
	.byte	0x2
	.uahalf	0x857
	.uaword	0x681e
	.uleb128 0x28
	.uaword	.LASF25
	.byte	0x2
	.uahalf	0x857
	.uaword	0x4c2f
	.uleb128 0x28
	.uaword	.LASF26
	.byte	0x2
	.uahalf	0x857
	.uaword	0x4dea
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_enableParity"
	.byte	0x2
	.uahalf	0x706
	.byte	0x1
	.byte	0x3
	.uaword	0x7293
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x706
	.uaword	0x4e9a
	.uleb128 0x28
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x706
	.uaword	0x263
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_enableTxFifoOutlet"
	.byte	0x2
	.uahalf	0x74e
	.byte	0x1
	.byte	0x3
	.uaword	0x72d3
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x74e
	.uaword	0x4e9a
	.uleb128 0x28
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x74e
	.uaword	0x263
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_enableRxFifoInlet"
	.byte	0x2
	.uahalf	0x724
	.byte	0x1
	.byte	0x3
	.uaword	0x7312
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x724
	.uaword	0x4e9a
	.uleb128 0x28
	.uaword	.LASF24
	.byte	0x2
	.uahalf	0x724
	.uaword	0x263
	.byte	0
	.uleb128 0x20
	.string	"IfxAsclin_getFrameErrorFlagStatus"
	.byte	0x2
	.uahalf	0x790
	.byte	0x1
	.uaword	0x263
	.byte	0x3
	.uaword	0x734f
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x790
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_clearFrameErrorFlag"
	.byte	0x2
	.uahalf	0x640
	.byte	0x1
	.byte	0x3
	.uaword	0x7384
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x640
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x20
	.string	"IfxAsclin_getRxFifoOverflowFlagStatus"
	.byte	0x2
	.uahalf	0x7ea
	.byte	0x1
	.uaword	0x263
	.byte	0x3
	.uaword	0x73c5
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x7ea
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_clearRxFifoOverflowFlag"
	.byte	0x2
	.uahalf	0x67c
	.byte	0x1
	.byte	0x3
	.uaword	0x73fe
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x67c
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x20
	.string	"IfxAsclin_getRxFifoUnderflowFlagStatus"
	.byte	0x2
	.uahalf	0x7f0
	.byte	0x1
	.uaword	0x263
	.byte	0x3
	.uaword	0x7440
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x7f0
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_clearRxFifoUnderflowFlag"
	.byte	0x2
	.uahalf	0x682
	.byte	0x1
	.byte	0x3
	.uaword	0x747a
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x682
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x20
	.string	"IfxAsclin_getTxFifoOverflowFlagStatus"
	.byte	0x2
	.uahalf	0x820
	.byte	0x1
	.uaword	0x263
	.byte	0x3
	.uaword	0x74bb
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x820
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_clearTxFifoOverflowFlag"
	.byte	0x2
	.uahalf	0x6a0
	.byte	0x1
	.byte	0x3
	.uaword	0x74f4
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x6a0
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x20
	.string	"__swap"
	.byte	0x3
	.uahalf	0x599
	.byte	0x1
	.uaword	0x233
	.byte	0x3
	.uaword	0x7532
	.uleb128 0x27
	.string	"place"
	.byte	0x3
	.uahalf	0x599
	.uaword	0x294
	.uleb128 0x27
	.string	"value"
	.byte	0x3
	.uahalf	0x599
	.uaword	0x233
	.uleb128 0x21
	.string	"res"
	.byte	0x3
	.uahalf	0x59b
	.uaword	0x233
	.byte	0
	.uleb128 0x20
	.string	"IfxAsclin_getRxFifoFillLevel"
	.byte	0x2
	.uahalf	0x7d8
	.byte	0x1
	.uaword	0x1d6
	.byte	0x3
	.uaword	0x756a
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x7d8
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x29
	.string	"__min"
	.byte	0x3
	.byte	0x9c
	.byte	0x1
	.uaword	0x225
	.byte	0x3
	.uaword	0x759b
	.uleb128 0x25
	.string	"a"
	.byte	0x3
	.byte	0x9c
	.uaword	0x225
	.uleb128 0x25
	.string	"b"
	.byte	0x3
	.byte	0x9c
	.uaword	0x225
	.uleb128 0x2a
	.string	"res"
	.byte	0x3
	.byte	0x9e
	.uaword	0x225
	.byte	0
	.uleb128 0x20
	.string	"IfxAsclin_readRxData"
	.byte	0x2
	.uahalf	0x871
	.byte	0x1
	.uaword	0x233
	.byte	0x3
	.uaword	0x75cb
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x871
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_clearRxFifoFillLevelFlag"
	.byte	0x2
	.uahalf	0x676
	.byte	0x1
	.byte	0x3
	.uaword	0x7605
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x676
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x20
	.string	"IfxCpu_disableInterrupts"
	.byte	0x6
	.uahalf	0x283
	.byte	0x1
	.uaword	0x263
	.byte	0x3
	.uaword	0x763d
	.uleb128 0x21
	.string	"enabled"
	.byte	0x6
	.uahalf	0x285
	.uaword	0x263
	.byte	0
	.uleb128 0x20
	.string	"IfxAsclin_getTxFifoFillLevel"
	.byte	0x2
	.uahalf	0x80e
	.byte	0x1
	.uaword	0x1d6
	.byte	0x3
	.uaword	0x7675
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x80e
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_writeTxData"
	.byte	0x2
	.uahalf	0x981
	.byte	0x1
	.byte	0x3
	.uaword	0x76af
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x981
	.uaword	0x4e9a
	.uleb128 0x27
	.string	"data"
	.byte	0x2
	.uahalf	0x981
	.uaword	0x233
	.byte	0
	.uleb128 0x26
	.string	"IfxCpu_restoreInterrupts"
	.byte	0x6
	.uahalf	0x398
	.byte	0x1
	.byte	0x3
	.uaword	0x76e3
	.uleb128 0x27
	.string	"enabled"
	.byte	0x6
	.uahalf	0x398
	.uaword	0x263
	.byte	0
	.uleb128 0x26
	.string	"IfxAsclin_clearTxFifoFillLevelFlag"
	.byte	0x2
	.uahalf	0x69a
	.byte	0x1
	.byte	0x3
	.uaword	0x771d
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x2
	.uahalf	0x69a
	.uaword	0x4e9a
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_Spi_disableModule"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB363
	.uaword	.LFE363
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7790
	.uleb128 0x2c
	.uaword	.LASF23
	.byte	0x1
	.byte	0x33
	.uaword	0x7790
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x2d
	.uaword	.LASF27
	.byte	0x1
	.byte	0x35
	.uaword	0x4e9a
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x2e
	.string	"psw"
	.byte	0x1
	.byte	0x36
	.uaword	0x201
	.byte	0x2
	.byte	0x8e
	.sleb128 -6
	.uleb128 0x2f
	.uaword	0x6b61
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x1
	.byte	0x38
	.uleb128 0x30
	.uaword	0x6b8d
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x68c8
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_Spi_exchange"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	0x63ed
	.uaword	.LFB364
	.uaword	.LFE364
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x780f
	.uleb128 0x2c
	.uaword	.LASF23
	.byte	0x1
	.byte	0x3d
	.uaword	0x7790
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x32
	.string	"src"
	.byte	0x1
	.byte	0x3d
	.uaword	0x294
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x32
	.string	"dest"
	.byte	0x1
	.byte	0x3d
	.uaword	0x294
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x32
	.string	"count"
	.byte	0x1
	.byte	0x3d
	.uaword	0x233
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x2d
	.uaword	.LASF28
	.byte	0x1
	.byte	0x3f
	.uaword	0x63ed
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxAsclin_Spi_getStatus"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	0x63ed
	.uaword	.LFB365
	.uaword	.LFE365
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x785c
	.uleb128 0x2c
	.uaword	.LASF23
	.byte	0x1
	.byte	0x50
	.uaword	0x7790
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x2d
	.uaword	.LASF28
	.byte	0x1
	.byte	0x52
	.uaword	0x63ed
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_Spi_initModule"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	0x5f92
	.uaword	.LFB366
	.uaword	.LFE366
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x80ef
	.uleb128 0x2c
	.uaword	.LASF23
	.byte	0x1
	.byte	0x5d
	.uaword	0x7790
	.byte	0x3
	.byte	0x8e
	.sleb128 -468
	.uleb128 0x32
	.string	"config"
	.byte	0x1
	.byte	0x5d
	.uaword	0x80ef
	.byte	0x3
	.byte	0x8e
	.sleb128 -472
	.uleb128 0x2d
	.uaword	.LASF27
	.byte	0x1
	.byte	0x5f
	.uaword	0x4e9a
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x2d
	.uaword	.LASF28
	.byte	0x1
	.byte	0x60
	.uaword	0x5f92
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x2e
	.string	"samplePointPosition"
	.byte	0x1
	.byte	0x70
	.uaword	0x5dd7
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x2e
	.string	"pins"
	.byte	0x1
	.byte	0xbf
	.uaword	0x69a6
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x34
	.uaword	0x6b9a
	.uaword	.LBB175
	.uaword	.LBE175
	.byte	0x1
	.byte	0x67
	.uaword	0x791b
	.uleb128 0x30
	.uaword	0x6bc7
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x30
	.uaword	0x6bbb
	.byte	0x2
	.byte	0x8e
	.sleb128 -48
	.byte	0
	.uleb128 0x34
	.uaword	0x6b9a
	.uaword	.LBB177
	.uaword	.LBE177
	.byte	0x1
	.byte	0x6c
	.uaword	0x793f
	.uleb128 0x30
	.uaword	0x6bc7
	.byte	0x2
	.byte	0x8e
	.sleb128 -60
	.uleb128 0x30
	.uaword	0x6bbb
	.byte	0x2
	.byte	0x8e
	.sleb128 -56
	.byte	0
	.uleb128 0x34
	.uaword	0x6bd5
	.uaword	.LBB179
	.uaword	.LBE179
	.byte	0x1
	.byte	0x6d
	.uaword	0x7964
	.uleb128 0x30
	.uaword	0x6c02
	.byte	0x3
	.byte	0x8e
	.sleb128 -66
	.uleb128 0x30
	.uaword	0x6bf6
	.byte	0x2
	.byte	0x8e
	.sleb128 -64
	.byte	0
	.uleb128 0x34
	.uaword	0x6b28
	.uaword	.LBB181
	.uaword	.LBE181
	.byte	0x1
	.byte	0x7b
	.uaword	0x798a
	.uleb128 0x30
	.uaword	0x6b53
	.byte	0x3
	.byte	0x8e
	.sleb128 -76
	.uleb128 0x30
	.uaword	0x6b47
	.byte	0x3
	.byte	0x8e
	.sleb128 -72
	.byte	0
	.uleb128 0x34
	.uaword	0x6c0f
	.uaword	.LBB183
	.uaword	.LBE183
	.byte	0x1
	.byte	0x7c
	.uaword	0x79b0
	.uleb128 0x30
	.uaword	0x6c40
	.byte	0x3
	.byte	0x8e
	.sleb128 -84
	.uleb128 0x30
	.uaword	0x6c34
	.byte	0x3
	.byte	0x8e
	.sleb128 -80
	.byte	0
	.uleb128 0x34
	.uaword	0x6c4e
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x1
	.byte	0x7d
	.uaword	0x79d6
	.uleb128 0x30
	.uaword	0x6c7f
	.byte	0x3
	.byte	0x8e
	.sleb128 -92
	.uleb128 0x30
	.uaword	0x6c73
	.byte	0x3
	.byte	0x8e
	.sleb128 -88
	.byte	0
	.uleb128 0x34
	.uaword	0x6c8d
	.uaword	.LBB187
	.uaword	.LBE187
	.byte	0x1
	.byte	0x7e
	.uaword	0x79fc
	.uleb128 0x30
	.uaword	0x6cc0
	.byte	0x3
	.byte	0x8e
	.sleb128 -97
	.uleb128 0x30
	.uaword	0x6cb4
	.byte	0x3
	.byte	0x8e
	.sleb128 -96
	.byte	0
	.uleb128 0x34
	.uaword	0x6ccd
	.uaword	.LBB189
	.uaword	.LBE189
	.byte	0x1
	.byte	0x81
	.uaword	0x7a22
	.uleb128 0x30
	.uaword	0x6cfa
	.byte	0x3
	.byte	0x8e
	.sleb128 -108
	.uleb128 0x30
	.uaword	0x6cee
	.byte	0x3
	.byte	0x8e
	.sleb128 -104
	.byte	0
	.uleb128 0x34
	.uaword	0x6d09
	.uaword	.LBB191
	.uaword	.LBE191
	.byte	0x1
	.byte	0x82
	.uaword	0x7a48
	.uleb128 0x30
	.uaword	0x6d36
	.byte	0x3
	.byte	0x8e
	.sleb128 -116
	.uleb128 0x30
	.uaword	0x6d2a
	.byte	0x3
	.byte	0x8e
	.sleb128 -112
	.byte	0
	.uleb128 0x34
	.uaword	0x6d45
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x1
	.byte	0x83
	.uaword	0x7a6e
	.uleb128 0x30
	.uaword	0x6d70
	.byte	0x3
	.byte	0x8e
	.sleb128 -124
	.uleb128 0x30
	.uaword	0x6d64
	.byte	0x3
	.byte	0x8e
	.sleb128 -120
	.byte	0
	.uleb128 0x34
	.uaword	0x6d81
	.uaword	.LBB195
	.uaword	.LBE195
	.byte	0x1
	.byte	0x84
	.uaword	0x7a94
	.uleb128 0x30
	.uaword	0x6db3
	.byte	0x3
	.byte	0x8e
	.sleb128 -132
	.uleb128 0x30
	.uaword	0x6da7
	.byte	0x3
	.byte	0x8e
	.sleb128 -128
	.byte	0
	.uleb128 0x34
	.uaword	0x6dc0
	.uaword	.LBB197
	.uaword	.LBE197
	.byte	0x1
	.byte	0x87
	.uaword	0x7aba
	.uleb128 0x30
	.uaword	0x6dee
	.byte	0x3
	.byte	0x8e
	.sleb128 -140
	.uleb128 0x30
	.uaword	0x6de2
	.byte	0x3
	.byte	0x8e
	.sleb128 -136
	.byte	0
	.uleb128 0x34
	.uaword	0x6dfe
	.uaword	.LBB199
	.uaword	.LBE199
	.byte	0x1
	.byte	0x8d
	.uaword	0x7ae0
	.uleb128 0x30
	.uaword	0x6e32
	.byte	0x3
	.byte	0x8e
	.sleb128 -148
	.uleb128 0x30
	.uaword	0x6e26
	.byte	0x3
	.byte	0x8e
	.sleb128 -144
	.byte	0
	.uleb128 0x34
	.uaword	0x6e41
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x1
	.byte	0x8e
	.uaword	0x7b06
	.uleb128 0x30
	.uaword	0x6e76
	.byte	0x3
	.byte	0x8e
	.sleb128 -156
	.uleb128 0x30
	.uaword	0x6e6a
	.byte	0x3
	.byte	0x8e
	.sleb128 -152
	.byte	0
	.uleb128 0x34
	.uaword	0x6dfe
	.uaword	.LBB203
	.uaword	.LBE203
	.byte	0x1
	.byte	0x94
	.uaword	0x7b2c
	.uleb128 0x30
	.uaword	0x6e32
	.byte	0x3
	.byte	0x8e
	.sleb128 -164
	.uleb128 0x30
	.uaword	0x6e26
	.byte	0x3
	.byte	0x8e
	.sleb128 -160
	.byte	0
	.uleb128 0x34
	.uaword	0x6e41
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x1
	.byte	0x95
	.uaword	0x7b52
	.uleb128 0x30
	.uaword	0x6e76
	.byte	0x3
	.byte	0x8e
	.sleb128 -172
	.uleb128 0x30
	.uaword	0x6e6a
	.byte	0x3
	.byte	0x8e
	.sleb128 -168
	.byte	0
	.uleb128 0x34
	.uaword	0x6e85
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0x1
	.byte	0x99
	.uaword	0x7b78
	.uleb128 0x30
	.uaword	0x6eb5
	.byte	0x3
	.byte	0x8e
	.sleb128 -180
	.uleb128 0x30
	.uaword	0x6ea9
	.byte	0x3
	.byte	0x8e
	.sleb128 -176
	.byte	0
	.uleb128 0x34
	.uaword	0x6ec3
	.uaword	.LBB209
	.uaword	.LBE209
	.byte	0x1
	.byte	0x9a
	.uaword	0x7bd4
	.uleb128 0x30
	.uaword	0x6efb
	.byte	0x3
	.byte	0x8e
	.sleb128 -188
	.uleb128 0x30
	.uaword	0x6eef
	.byte	0x3
	.byte	0x8e
	.sleb128 -184
	.uleb128 0x35
	.uaword	0x6aad
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x2
	.uahalf	0x97d
	.uleb128 0x30
	.uaword	0x6aca
	.byte	0x3
	.byte	0x8e
	.sleb128 -196
	.uleb128 0x30
	.uaword	0x6ac1
	.byte	0x3
	.byte	0x8e
	.sleb128 -192
	.uleb128 0x36
	.uaword	.LBB212
	.uaword	.LBE212
	.uleb128 0x37
	.uaword	0x6ad3
	.byte	0x3
	.byte	0x8e
	.sleb128 -200
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x6f0a
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x1
	.byte	0x9b
	.uaword	0x7c30
	.uleb128 0x30
	.uaword	0x6f42
	.byte	0x3
	.byte	0x8e
	.sleb128 -208
	.uleb128 0x30
	.uaword	0x6f36
	.byte	0x3
	.byte	0x8e
	.sleb128 -204
	.uleb128 0x35
	.uaword	0x6aad
	.uaword	.LBB215
	.uaword	.LBE215
	.byte	0x2
	.uahalf	0x921
	.uleb128 0x30
	.uaword	0x6aca
	.byte	0x3
	.byte	0x8e
	.sleb128 -216
	.uleb128 0x30
	.uaword	0x6ac1
	.byte	0x3
	.byte	0x8e
	.sleb128 -212
	.uleb128 0x36
	.uaword	.LBB216
	.uaword	.LBE216
	.uleb128 0x37
	.uaword	0x6ad3
	.byte	0x3
	.byte	0x8e
	.sleb128 -220
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x6f51
	.uaword	.LBB217
	.uaword	.LBE217
	.byte	0x1
	.byte	0x9c
	.uaword	0x7c4d
	.uleb128 0x30
	.uaword	0x6f71
	.byte	0x3
	.byte	0x8e
	.sleb128 -224
	.byte	0
	.uleb128 0x34
	.uaword	0x6f7e
	.uaword	.LBB219
	.uaword	.LBE219
	.byte	0x1
	.byte	0x9d
	.uaword	0x7c6a
	.uleb128 0x30
	.uaword	0x6f9e
	.byte	0x3
	.byte	0x8e
	.sleb128 -228
	.byte	0
	.uleb128 0x34
	.uaword	0x6fab
	.uaword	.LBB221
	.uaword	.LBE221
	.byte	0x1
	.byte	0x9f
	.uaword	0x7c87
	.uleb128 0x30
	.uaword	0x6fcf
	.byte	0x3
	.byte	0x8e
	.sleb128 -232
	.byte	0
	.uleb128 0x34
	.uaword	0x6fdc
	.uaword	.LBB223
	.uaword	.LBE223
	.byte	0x1
	.byte	0xa0
	.uaword	0x7ca4
	.uleb128 0x30
	.uaword	0x6ffe
	.byte	0x3
	.byte	0x8e
	.sleb128 -236
	.byte	0
	.uleb128 0x38
	.uaword	.LBB225
	.uaword	.LBE225
	.uaword	0x7d48
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.byte	0xa5
	.uaword	0x6a4a
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x34
	.uaword	0x700b
	.uaword	.LBB226
	.uaword	.LBE226
	.byte	0x1
	.byte	0xa7
	.uaword	0x7d08
	.uleb128 0x30
	.uaword	0x703f
	.byte	0x3
	.byte	0x8e
	.sleb128 -246
	.uleb128 0x30
	.uaword	0x702b
	.byte	0x3
	.byte	0x8e
	.sleb128 -244
	.uleb128 0x30
	.uaword	0x7020
	.byte	0x3
	.byte	0x8e
	.sleb128 -240
	.uleb128 0x35
	.uaword	0x6a21
	.uaword	.LBB228
	.uaword	.LBE228
	.byte	0x4
	.uahalf	0x102
	.uleb128 0x30
	.uaword	0x6a3e
	.byte	0x3
	.byte	0x8e
	.sleb128 -252
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x7050
	.uaword	.LBB230
	.uaword	.LBE230
	.byte	0x1
	.byte	0xa8
	.uaword	0x7d2e
	.uleb128 0x30
	.uaword	0x708a
	.byte	0x3
	.byte	0x8e
	.sleb128 -257
	.uleb128 0x30
	.uaword	0x707e
	.byte	0x3
	.byte	0x8e
	.sleb128 -256
	.byte	0
	.uleb128 0x2f
	.uaword	0x7097
	.uaword	.LBB232
	.uaword	.LBE232
	.byte	0x1
	.byte	0xa9
	.uleb128 0x30
	.uaword	0x70ae
	.byte	0x3
	.byte	0x8e
	.sleb128 -264
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.LBB234
	.uaword	.LBE234
	.uaword	0x7dec
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.byte	0xae
	.uaword	0x6a4a
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x34
	.uaword	0x700b
	.uaword	.LBB235
	.uaword	.LBE235
	.byte	0x1
	.byte	0xb0
	.uaword	0x7dac
	.uleb128 0x30
	.uaword	0x703f
	.byte	0x3
	.byte	0x8e
	.sleb128 -274
	.uleb128 0x30
	.uaword	0x702b
	.byte	0x3
	.byte	0x8e
	.sleb128 -272
	.uleb128 0x30
	.uaword	0x7020
	.byte	0x3
	.byte	0x8e
	.sleb128 -268
	.uleb128 0x35
	.uaword	0x6a21
	.uaword	.LBB237
	.uaword	.LBE237
	.byte	0x4
	.uahalf	0x102
	.uleb128 0x30
	.uaword	0x6a3e
	.byte	0x3
	.byte	0x8e
	.sleb128 -280
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x70ba
	.uaword	.LBB239
	.uaword	.LBE239
	.byte	0x1
	.byte	0xb1
	.uaword	0x7dd2
	.uleb128 0x30
	.uaword	0x70f4
	.byte	0x3
	.byte	0x8e
	.sleb128 -285
	.uleb128 0x30
	.uaword	0x70e8
	.byte	0x3
	.byte	0x8e
	.sleb128 -284
	.byte	0
	.uleb128 0x2f
	.uaword	0x7097
	.uaword	.LBB241
	.uaword	.LBE241
	.byte	0x1
	.byte	0xb2
	.uleb128 0x30
	.uaword	0x70ae
	.byte	0x3
	.byte	0x8e
	.sleb128 -292
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.LBB243
	.uaword	.LBE243
	.uaword	0x7e90
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.byte	0xb7
	.uaword	0x6a4a
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x34
	.uaword	0x700b
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x1
	.byte	0xb9
	.uaword	0x7e50
	.uleb128 0x30
	.uaword	0x703f
	.byte	0x3
	.byte	0x8e
	.sleb128 -302
	.uleb128 0x30
	.uaword	0x702b
	.byte	0x3
	.byte	0x8e
	.sleb128 -300
	.uleb128 0x30
	.uaword	0x7020
	.byte	0x3
	.byte	0x8e
	.sleb128 -296
	.uleb128 0x35
	.uaword	0x6a21
	.uaword	.LBB246
	.uaword	.LBE246
	.byte	0x4
	.uahalf	0x102
	.uleb128 0x30
	.uaword	0x6a3e
	.byte	0x3
	.byte	0x8e
	.sleb128 -308
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x7101
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x1
	.byte	0xba
	.uaword	0x7e76
	.uleb128 0x30
	.uaword	0x7136
	.byte	0x3
	.byte	0x8e
	.sleb128 -313
	.uleb128 0x30
	.uaword	0x712a
	.byte	0x3
	.byte	0x8e
	.sleb128 -312
	.byte	0
	.uleb128 0x2f
	.uaword	0x7097
	.uaword	.LBB250
	.uaword	.LBE250
	.byte	0x1
	.byte	0xbb
	.uleb128 0x30
	.uaword	0x70ae
	.byte	0x3
	.byte	0x8e
	.sleb128 -320
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.LBB252
	.uaword	.LBE252
	.uaword	0x8080
	.uleb128 0x2e
	.string	"sclk"
	.byte	0x1
	.byte	0xc3
	.uaword	0x680c
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.uleb128 0x2e
	.string	"rx"
	.byte	0x1
	.byte	0xca
	.uaword	0x6812
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.uleb128 0x2e
	.string	"tx"
	.byte	0x1
	.byte	0xd1
	.uaword	0x6818
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.uleb128 0x2e
	.string	"slso"
	.byte	0x1
	.byte	0xd8
	.uaword	0x681e
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.uleb128 0x34
	.uaword	0x7143
	.uaword	.LBB253
	.uaword	.LBE253
	.byte	0x1
	.byte	0xc7
	.uaword	0x7f39
	.uleb128 0x30
	.uaword	0x717c
	.byte	0x3
	.byte	0x8e
	.sleb128 -332
	.uleb128 0x30
	.uaword	0x7170
	.byte	0x3
	.byte	0x8e
	.sleb128 -328
	.uleb128 0x30
	.uaword	0x7163
	.byte	0x3
	.byte	0x8e
	.sleb128 -324
	.uleb128 0x35
	.uaword	0x6a55
	.uaword	.LBB255
	.uaword	.LBE255
	.byte	0x2
	.uahalf	0x852
	.uleb128 0x30
	.uaword	0x6a9e
	.byte	0x3
	.byte	0x8e
	.sleb128 -348
	.uleb128 0x30
	.uaword	0x6a91
	.byte	0x3
	.byte	0x8e
	.sleb128 -344
	.uleb128 0x30
	.uaword	0x6a85
	.byte	0x3
	.byte	0x8e
	.sleb128 -337
	.uleb128 0x30
	.uaword	0x6a78
	.byte	0x3
	.byte	0x8e
	.sleb128 -336
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x7189
	.uaword	.LBB257
	.uaword	.LBE257
	.byte	0x1
	.byte	0xce
	.uaword	0x7fbb
	.uleb128 0x30
	.uaword	0x71c4
	.byte	0x3
	.byte	0x8e
	.sleb128 -360
	.uleb128 0x30
	.uaword	0x71b2
	.byte	0x3
	.byte	0x8e
	.sleb128 -356
	.uleb128 0x30
	.uaword	0x71a7
	.byte	0x3
	.byte	0x8e
	.sleb128 -352
	.uleb128 0x39
	.uaword	0x6adf
	.uaword	.LBB259
	.uaword	.LBE259
	.byte	0x2
	.uahalf	0x849
	.uaword	0x7f97
	.uleb128 0x30
	.uaword	0x6b1a
	.byte	0x3
	.byte	0x8e
	.sleb128 -372
	.uleb128 0x30
	.uaword	0x6b0e
	.byte	0x3
	.byte	0x8e
	.sleb128 -365
	.uleb128 0x30
	.uaword	0x6b01
	.byte	0x3
	.byte	0x8e
	.sleb128 -364
	.byte	0
	.uleb128 0x35
	.uaword	0x6b28
	.uaword	.LBB261
	.uaword	.LBE261
	.byte	0x2
	.uahalf	0x84b
	.uleb128 0x30
	.uaword	0x6b53
	.byte	0x3
	.byte	0x8e
	.sleb128 -380
	.uleb128 0x30
	.uaword	0x6b47
	.byte	0x3
	.byte	0x8e
	.sleb128 -376
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x71d1
	.uaword	.LBB263
	.uaword	.LBE263
	.byte	0x1
	.byte	0xd5
	.uaword	0x801f
	.uleb128 0x30
	.uaword	0x7206
	.byte	0x3
	.byte	0x8e
	.sleb128 -392
	.uleb128 0x30
	.uaword	0x71fa
	.byte	0x3
	.byte	0x8e
	.sleb128 -388
	.uleb128 0x30
	.uaword	0x71ef
	.byte	0x3
	.byte	0x8e
	.sleb128 -384
	.uleb128 0x35
	.uaword	0x6a55
	.uaword	.LBB265
	.uaword	.LBE265
	.byte	0x2
	.uahalf	0x860
	.uleb128 0x30
	.uaword	0x6a9e
	.byte	0x3
	.byte	0x8e
	.sleb128 -408
	.uleb128 0x30
	.uaword	0x6a91
	.byte	0x3
	.byte	0x8e
	.sleb128 -404
	.uleb128 0x30
	.uaword	0x6a85
	.byte	0x3
	.byte	0x8e
	.sleb128 -397
	.uleb128 0x30
	.uaword	0x6a78
	.byte	0x3
	.byte	0x8e
	.sleb128 -396
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x7213
	.uaword	.LBB267
	.uaword	.LBE267
	.byte	0x1
	.byte	0xdc
	.uleb128 0x30
	.uaword	0x724c
	.byte	0x3
	.byte	0x8e
	.sleb128 -420
	.uleb128 0x30
	.uaword	0x7240
	.byte	0x3
	.byte	0x8e
	.sleb128 -416
	.uleb128 0x30
	.uaword	0x7233
	.byte	0x3
	.byte	0x8e
	.sleb128 -412
	.uleb128 0x35
	.uaword	0x6a55
	.uaword	.LBB269
	.uaword	.LBE269
	.byte	0x2
	.uahalf	0x859
	.uleb128 0x30
	.uaword	0x6a9e
	.byte	0x3
	.byte	0x8e
	.sleb128 -436
	.uleb128 0x30
	.uaword	0x6a91
	.byte	0x3
	.byte	0x8e
	.sleb128 -432
	.uleb128 0x30
	.uaword	0x6a85
	.byte	0x3
	.byte	0x8e
	.sleb128 -425
	.uleb128 0x30
	.uaword	0x6a78
	.byte	0x3
	.byte	0x8e
	.sleb128 -424
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x7259
	.uaword	.LBB271
	.uaword	.LBE271
	.byte	0x1
	.byte	0xe0
	.uaword	0x80a6
	.uleb128 0x30
	.uaword	0x7286
	.byte	0x3
	.byte	0x8e
	.sleb128 -441
	.uleb128 0x30
	.uaword	0x727a
	.byte	0x3
	.byte	0x8e
	.sleb128 -440
	.byte	0
	.uleb128 0x34
	.uaword	0x7293
	.uaword	.LBB273
	.uaword	.LBE273
	.byte	0x1
	.byte	0xe5
	.uaword	0x80cc
	.uleb128 0x30
	.uaword	0x72c6
	.byte	0x3
	.byte	0x8e
	.sleb128 -449
	.uleb128 0x30
	.uaword	0x72ba
	.byte	0x3
	.byte	0x8e
	.sleb128 -448
	.byte	0
	.uleb128 0x2f
	.uaword	0x72d3
	.uaword	.LBB275
	.uaword	.LBE275
	.byte	0x1
	.byte	0xe6
	.uleb128 0x30
	.uaword	0x7305
	.byte	0x3
	.byte	0x8e
	.sleb128 -457
	.uleb128 0x30
	.uaword	0x72f9
	.byte	0x3
	.byte	0x8e
	.sleb128 -456
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x80f5
	.uleb128 0x1d
	.uaword	0x69b1
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxAsclin_Spi_initModuleConfig"
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.uaword	.LFB367
	.uaword	.LFE367
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8168
	.uleb128 0x32
	.string	"config"
	.byte	0x1
	.byte	0xec
	.uaword	0x8168
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x2c
	.uaword	.LASF23
	.byte	0x1
	.byte	0xec
	.uaword	0x4e9a
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x2e
	.string	"defaultConfig"
	.byte	0x1
	.byte	0xee
	.uaword	0x80f5
	.byte	0x5
	.byte	0x3
	.uaword	defaultConfig.10215
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x69b1
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxAsclin_Spi_isrError"
	.byte	0x1
	.uahalf	0x12e
	.byte	0x1
	.uaword	.LFB368
	.uaword	.LFE368
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x829d
	.uleb128 0x3c
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x7790
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.uleb128 0x3d
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x130
	.uaword	0x4e9a
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x39
	.uaword	0x7312
	.uaword	.LBB277
	.uaword	.LBE277
	.byte	0x1
	.uahalf	0x133
	.uaword	0x81d5
	.uleb128 0x30
	.uaword	0x7342
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.byte	0
	.uleb128 0x39
	.uaword	0x734f
	.uaword	.LBB279
	.uaword	.LBE279
	.byte	0x1
	.uahalf	0x135
	.uaword	0x81f2
	.uleb128 0x30
	.uaword	0x7377
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.byte	0
	.uleb128 0x39
	.uaword	0x7384
	.uaword	.LBB281
	.uaword	.LBE281
	.byte	0x1
	.uahalf	0x139
	.uaword	0x820f
	.uleb128 0x30
	.uaword	0x73b8
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.byte	0
	.uleb128 0x39
	.uaword	0x73c5
	.uaword	.LBB283
	.uaword	.LBE283
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x822c
	.uleb128 0x30
	.uaword	0x73f1
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.uaword	0x73fe
	.uaword	.LBB285
	.uaword	.LBE285
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x8249
	.uleb128 0x30
	.uaword	0x7433
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.uaword	0x7440
	.uaword	.LBB287
	.uaword	.LBE287
	.byte	0x1
	.uahalf	0x141
	.uaword	0x8266
	.uleb128 0x30
	.uaword	0x746d
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.byte	0
	.uleb128 0x39
	.uaword	0x747a
	.uaword	.LBB289
	.uaword	.LBE289
	.byte	0x1
	.uahalf	0x145
	.uaword	0x8283
	.uleb128 0x30
	.uaword	0x74ae
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.uaword	0x74bb
	.uaword	.LBB291
	.uaword	.LBE291
	.byte	0x1
	.uahalf	0x147
	.uleb128 0x30
	.uaword	0x74e7
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxAsclin_Spi_isrReceive"
	.byte	0x1
	.uahalf	0x14d
	.byte	0x1
	.uaword	.LFB369
	.uaword	.LFE369
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8303
	.uleb128 0x3c
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x7790
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x3d
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x4e9a
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x35
	.uaword	0x75cb
	.uaword	.LBB293
	.uaword	.LBE293
	.byte	0x1
	.uahalf	0x150
	.uleb128 0x30
	.uaword	0x75f8
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxAsclin_Spi_isrTransmit"
	.byte	0x1
	.uahalf	0x155
	.byte	0x1
	.uaword	.LFB370
	.uaword	.LFE370
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x836a
	.uleb128 0x3c
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x155
	.uaword	0x7790
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x3d
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x157
	.uaword	0x4e9a
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x35
	.uaword	0x76e3
	.uaword	.LBB295
	.uaword	.LBE295
	.byte	0x1
	.uahalf	0x158
	.uleb128 0x30
	.uaword	0x7710
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.byte	0
	.byte	0
	.uleb128 0x3f
	.string	"IfxAsclin_Spi_lock"
	.byte	0x1
	.uahalf	0x15d
	.byte	0x1
	.uaword	0x63ed
	.uaword	.LFB371
	.uaword	.LFE371
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x83eb
	.uleb128 0x3c
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x7790
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x40
	.string	"sending"
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x225
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x35
	.uaword	0x74f4
	.uaword	.LBB297
	.uaword	.LBE297
	.byte	0x1
	.uahalf	0x15f
	.uleb128 0x30
	.uaword	0x7517
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x30
	.uaword	0x7509
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x36
	.uaword	.LBB298
	.uaword	.LBE298
	.uleb128 0x37
	.uaword	0x7525
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxAsclin_Spi_read"
	.byte	0x1
	.uahalf	0x164
	.byte	0x1
	.uaword	.LFB372
	.uaword	.LFE372
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x84d6
	.uleb128 0x3c
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x164
	.uaword	0x7790
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.uleb128 0x3d
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x166
	.uaword	0x4e9a
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x40
	.string	"job"
	.byte	0x1
	.uahalf	0x167
	.uaword	0x84d6
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x40
	.string	"count"
	.byte	0x1
	.uahalf	0x169
	.uaword	0x233
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x39
	.uaword	0x7532
	.uaword	.LBB299
	.uaword	.LBE299
	.byte	0x1
	.uahalf	0x169
	.uaword	0x846e
	.uleb128 0x30
	.uaword	0x755d
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.uaword	0x756a
	.uaword	.LBB301
	.uaword	.LBE301
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x84a5
	.uleb128 0x30
	.uaword	0x7586
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x30
	.uaword	0x757d
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x36
	.uaword	.LBB302
	.uaword	.LBE302
	.uleb128 0x37
	.uaword	0x758f
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	.LBB303
	.uaword	.LBE303
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x233
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x35
	.uaword	0x759b
	.uaword	.LBB304
	.uaword	.LBE304
	.byte	0x1
	.uahalf	0x173
	.uleb128 0x30
	.uaword	0x75be
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x675d
	.uleb128 0x41
	.string	"IfxAsclin_Spi_unlock"
	.byte	0x1
	.uahalf	0x191
	.byte	0x1
	.uaword	.LFB373
	.uaword	.LFE373
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8515
	.uleb128 0x3c
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x191
	.uaword	0x7790
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxAsclin_Spi_write"
	.byte	0x1
	.uahalf	0x197
	.byte	0x1
	.uaword	.LFB374
	.uaword	.LFE374
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x86bb
	.uleb128 0x3c
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x197
	.uaword	0x7790
	.byte	0x3
	.byte	0x8e
	.sleb128 -68
	.uleb128 0x3d
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x199
	.uaword	0x4e9a
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x40
	.string	"job"
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x84d6
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x36
	.uaword	.LBB306
	.uaword	.LBE306
	.uleb128 0x40
	.string	"interruptState"
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x263
	.byte	0x2
	.byte	0x8e
	.sleb128 -13
	.uleb128 0x40
	.string	"count"
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0x233
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x39
	.uaword	0x7605
	.uaword	.LBB307
	.uaword	.LBE307
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x8610
	.uleb128 0x36
	.uaword	.LBB308
	.uaword	.LBE308
	.uleb128 0x37
	.uaword	0x762c
	.byte	0x2
	.byte	0x8e
	.sleb128 -25
	.uleb128 0x39
	.uaword	0x69ce
	.uaword	.LBB309
	.uaword	.LBE309
	.byte	0x6
	.uahalf	0x286
	.uaword	0x85fe
	.uleb128 0x36
	.uaword	.LBB310
	.uaword	.LBE310
	.uleb128 0x37
	.uaword	0x69f8
	.byte	0x2
	.byte	0x8e
	.sleb128 -60
	.uleb128 0x36
	.uaword	.LBB311
	.uaword	.LBE311
	.uleb128 0x37
	.uaword	0x6a05
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.uaword	0x6a15
	.uaword	.LBB312
	.uaword	.LBE312
	.byte	0x6
	.uahalf	0x288
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	0x763d
	.uaword	.LBB314
	.uaword	.LBE314
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0x862d
	.uleb128 0x30
	.uaword	0x7668
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.byte	0
	.uleb128 0x39
	.uaword	0x756a
	.uaword	.LBB316
	.uaword	.LBE316
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0x8664
	.uleb128 0x30
	.uaword	0x7586
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.uleb128 0x30
	.uaword	0x757d
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.uleb128 0x36
	.uaword	.LBB317
	.uaword	.LBE317
	.uleb128 0x37
	.uaword	0x758f
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.LBB318
	.uaword	.LBE318
	.uaword	0x86a0
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x1a6
	.uaword	0x233
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x35
	.uaword	0x7675
	.uaword	.LBB319
	.uaword	.LBE319
	.byte	0x1
	.uahalf	0x1ab
	.uleb128 0x30
	.uaword	0x76a1
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x30
	.uaword	0x7695
	.byte	0x2
	.byte	0x8e
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x76af
	.uaword	.LBB321
	.uaword	.LBE321
	.byte	0x1
	.uahalf	0x1c1
	.uleb128 0x30
	.uaword	0x76d2
	.byte	0x2
	.byte	0x8e
	.sleb128 -53
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x35e
	.uaword	0x86cb
	.uleb128 0x1a
	.uaword	0x227a
	.byte	0x2
	.byte	0
	.uleb128 0x43
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x10
	.byte	0x96
	.uaword	0x86e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.uaword	0x86bb
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
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
	.uleb128 0x33
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x3c
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x43
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
.LASF15:
	.string	"INTLEVEL"
.LASF11:
	.string	"MODNUMBER"
.LASF20:
	.string	"select"
.LASF21:
	.string	"baudrate"
.LASF19:
	.string	"pinIndex"
.LASF24:
	.string	"enable"
.LASF27:
	.string	"asclinSFR"
.LASF12:
	.string	"reserved_10"
.LASF2:
	.string	"reserved_12"
.LASF18:
	.string	"reserved_16"
.LASF10:
	.string	"reserved_18"
.LASF26:
	.string	"padDriver"
.LASF25:
	.string	"outputMode"
.LASF3:
	.string	"reserved_20"
.LASF16:
	.string	"reserved_21"
.LASF7:
	.string	"reserved_24"
.LASF4:
	.string	"reserved_28"
.LASF9:
	.string	"reserved_29"
.LASF1:
	.string	"reserved_0"
.LASF13:
	.string	"reserved_1"
.LASF5:
	.string	"reserved_2"
.LASF6:
	.string	"reserved_4"
.LASF8:
	.string	"reserved_7"
.LASF14:
	.string	"reserved_8"
.LASF22:
	.string	"prescaler"
.LASF0:
	.string	"module"
.LASF17:
	.string	"reserved_54"
.LASF28:
	.string	"status"
.LASF23:
	.string	"asclin"
	.extern	IfxAsclin_write16,STT_FUNC,0
	.extern	IfxAsclin_write8,STT_FUNC,0
	.extern	IfxAsclin_read16,STT_FUNC,0
	.extern	IfxAsclin_read8,STT_FUNC,0
	.extern	IfxPort_setPinPadDriver,STT_FUNC,0
	.extern	IfxPort_setPinMode,STT_FUNC,0
	.extern	IfxAsclin_getSrcPointerEr,STT_FUNC,0
	.extern	IfxAsclin_getSrcPointerTx,STT_FUNC,0
	.extern	IfxAsclin_getSrcPointerRx,STT_FUNC,0
	.extern	IfxAsclin_setBitTiming,STT_FUNC,0
	.extern	IfxAsclin_setClockSource,STT_FUNC,0
	.extern	IfxAsclin_enableModule,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"