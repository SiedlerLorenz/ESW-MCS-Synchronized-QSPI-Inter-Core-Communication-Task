	.file	"IfxStdIf_DPipe.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	IfxStdIf_DPipe_print
	.type	IfxStdIf_DPipe_print, @function
IfxStdIf_DPipe_print:
.LFB17:
	.file 1 "0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.c"
	.loc 1 34 0
	mov.aa	%a14, %SP
.LCFI0:
	lea	%SP, [%SP] -296
	st.a	[%a14] -292, %a4
	st.a	[%a14] -296, %a5
	.loc 1 35 0
	ld.w	%d15, [%a14] -292
	mov.a	%a15, %d15
	ld.bu	%d15, [%a15] 4
	jnz	%d15, .L1
.LBB5:
	.loc 1 40 0
	mov.d	%d15, %a14
	st.w	[%a14] -28, %d15
	.loc 1 41 0
	ld.w	%d2, [%a14] -28
	mov.d	%d3, %a14
	addi	%d15, %d3, -284
	mov.a	%a4, %d15
	ld.a	%a5, [%a14] -296
	mov.a	%a6, %d2
	call	vsprintf
	.loc 1 43 0
	mov.d	%d2, %a14
	addi	%d15, %d2, -284
	mov.a	%a4, %d15
	call	strlen
	mov	%d15, %d2
	extr	%d15, %d15, 0, 16
	st.h	[%a14] -22, %d15
	ld.w	%d15, [%a14] -292
	st.w	[%a14] -4, %d15
	mov.d	%d3, %a14
	addi	%d15, %d3, -284
	st.w	[%a14] -8, %d15
	mov.d	%d2, %a14
	addi	%d15, %d2, -22
	st.w	[%a14] -12, %d15
	mov	%d2, -1
	mov	%d3, -1
	sh	%d3, -1
	st.d	[%a14] -20, %e2
.LBB6:
.LBB7:
	.file 2 "0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
	.loc 2 244 0
	ld.w	%d15, [%a14] -4
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 8
	ld.w	%d2, [%a14] -4
	mov.a	%a15, %d2
	ld.w	%d2, [%a15]0
	mov.a	%a4, %d2
	ld.a	%a5, [%a14] -8
	ld.a	%a6, [%a14] -12
	ld.d	%e4, [%a14] -20
	mov.a	%a15, %d15
	calli	%a15
.L1:
.LBE7:
.LBE6:
.LBE5:
	.loc 1 52 0
	ret
.LFE17:
	.size	IfxStdIf_DPipe_print, .-IfxStdIf_DPipe_print
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
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.byte	0x4
	.uaword	.LCFI0-.LFB17
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 5 "0_Src/1_SrvSw/StdIf/IfxStdIf.h"
	.file 6 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x948
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on "
	.string	"2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O0 -std=gnu11 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.c"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x5a
	.uaword	0x1e9
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x5c
	.uaword	0x173
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5d
	.uaword	0x17f
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
	.byte	0x3
	.byte	0x68
	.uaword	0x1ca
	.uleb128 0x3
	.string	"sint64"
	.byte	0x4
	.byte	0x24
	.uaword	0x19b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"pchar"
	.byte	0x4
	.byte	0x27
	.uaword	0x27f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x285
	.uleb128 0x5
	.uaword	0x28a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x4
	.byte	0x3d
	.uaword	0x24a
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x4
	.byte	0x4a
	.uaword	0x1db
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x5
	.byte	0x61
	.uaword	0x292
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x2
	.byte	0x33
	.uaword	0x2ef
	.uleb128 0x7
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x2
	.byte	0xd5
	.uaword	0x46e
	.uleb128 0x8
	.string	"driver"
	.byte	0x2
	.byte	0xd7
	.uaword	0x2b9
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x2
	.byte	0xd8
	.uaword	0x23b
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x2
	.byte	0xdb
	.uaword	0x4ba
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x2
	.byte	0xdc
	.uaword	0x501
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x2
	.byte	0xdd
	.uaword	0x51c
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x2
	.byte	0xde
	.uaword	0x555
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x2
	.byte	0xdf
	.uaword	0x602
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x2
	.byte	0xe0
	.uaword	0x626
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x2
	.byte	0xe1
	.uaword	0x660
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x2
	.byte	0xe2
	.uaword	0x6a3
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x2
	.byte	0xe3
	.uaword	0x6c7
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x2
	.byte	0xe4
	.uaword	0x730
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x2
	.byte	0xe5
	.uaword	0x700
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x2
	.byte	0xe6
	.uaword	0x74e
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x2
	.byte	0xe7
	.uaword	0x76e
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x2
	.byte	0xe8
	.uaword	0x78f
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x2
	.byte	0xea
	.uaword	0x58e
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x2
	.byte	0xeb
	.uaword	0x5c7
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x2
	.byte	0xec
	.uaword	0x7ad
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x2
	.byte	0x35
	.uaword	0x48f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x495
	.uleb128 0x9
	.uaword	0x23b
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x2
	.byte	0x36
	.uaword	0x48f
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x2
	.byte	0x48
	.uaword	0x4d6
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4dc
	.uleb128 0xa
	.byte	0x1
	.uaword	0x23b
	.uaword	0x4fb
	.uleb128 0xb
	.uaword	0x2b9
	.uleb128 0xb
	.uaword	0x292
	.uleb128 0xb
	.uaword	0x4fb
	.uleb128 0xb
	.uaword	0x294
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2a8
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x2
	.byte	0x57
	.uaword	0x4d6
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x2
	.byte	0x5f
	.uaword	0x53f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x545
	.uleb128 0xa
	.byte	0x1
	.uaword	0x20c
	.uaword	0x555
	.uleb128 0xb
	.uaword	0x2b9
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x2
	.byte	0x67
	.uaword	0x578
	.uleb128 0x4
	.byte	0x4
	.uaword	0x57e
	.uleb128 0xa
	.byte	0x1
	.uaword	0x49a
	.uaword	0x58e
	.uleb128 0xb
	.uaword	0x2b9
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x2
	.byte	0x6f
	.uaword	0x5b1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5b7
	.uleb128 0xa
	.byte	0x1
	.uaword	0x21a
	.uaword	0x5c7
	.uleb128 0xb
	.uaword	0x2b9
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x2
	.byte	0x77
	.uaword	0x5ec
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5f2
	.uleb128 0xa
	.byte	0x1
	.uaword	0x294
	.uaword	0x602
	.uleb128 0xb
	.uaword	0x2b9
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x2
	.byte	0x7f
	.uaword	0x53f
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x2
	.byte	0x87
	.uaword	0x64a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x650
	.uleb128 0xa
	.byte	0x1
	.uaword	0x46e
	.uaword	0x660
	.uleb128 0xb
	.uaword	0x2b9
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x2
	.byte	0x92
	.uaword	0x683
	.uleb128 0x4
	.byte	0x4
	.uaword	0x689
	.uleb128 0xa
	.byte	0x1
	.uaword	0x23b
	.uaword	0x6a3
	.uleb128 0xb
	.uaword	0x2b9
	.uleb128 0xb
	.uaword	0x2a8
	.uleb128 0xb
	.uaword	0x294
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x2
	.byte	0x9d
	.uaword	0x683
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x2
	.byte	0xa6
	.uaword	0x6e5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6eb
	.uleb128 0xa
	.byte	0x1
	.uaword	0x23b
	.uaword	0x700
	.uleb128 0xb
	.uaword	0x2b9
	.uleb128 0xb
	.uaword	0x294
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x2
	.byte	0xad
	.uaword	0x71e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x724
	.uleb128 0xc
	.byte	0x1
	.uaword	0x730
	.uleb128 0xb
	.uaword	0x2b9
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x2
	.byte	0xb4
	.uaword	0x71e
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x2
	.byte	0xbc
	.uaword	0x71e
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x2
	.byte	0xc3
	.uaword	0x71e
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x2
	.byte	0xca
	.uaword	0x71e
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x2
	.byte	0xd1
	.uaword	0x71e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"__gnuc_va_list"
	.byte	0x6
	.byte	0x28
	.uaword	0x804
	.uleb128 0xd
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x3
	.string	"va_list"
	.byte	0x6
	.byte	0x62
	.uaword	0x7ee
	.uleb128 0xe
	.string	"IfxStdIf_DPipe_write"
	.byte	0x2
	.byte	0xf2
	.byte	0x1
	.uaword	0x23b
	.byte	0x3
	.uaword	0x87f
	.uleb128 0xf
	.string	"stdif"
	.byte	0x2
	.byte	0xf2
	.uaword	0x87f
	.uleb128 0xf
	.string	"data"
	.byte	0x2
	.byte	0xf2
	.uaword	0x292
	.uleb128 0xf
	.string	"count"
	.byte	0x2
	.byte	0xf2
	.uaword	0x4fb
	.uleb128 0xf
	.string	"timeout"
	.byte	0x2
	.byte	0xf2
	.uaword	0x294
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d9
	.uleb128 0x10
	.byte	0x1
	.string	"IfxStdIf_DPipe_print"
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x93f
	.uleb128 0x11
	.string	"stdif"
	.byte	0x1
	.byte	0x21
	.uaword	0x87f
	.byte	0x3
	.byte	0x8e
	.sleb128 -292
	.uleb128 0x11
	.string	"format"
	.byte	0x1
	.byte	0x21
	.uaword	0x272
	.byte	0x3
	.byte	0x8e
	.sleb128 -296
	.uleb128 0x12
	.uleb128 0x13
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x14
	.string	"message"
	.byte	0x1
	.byte	0x25
	.uaword	0x93f
	.byte	0x3
	.byte	0x8e
	.sleb128 -284
	.uleb128 0x14
	.string	"count"
	.byte	0x1
	.byte	0x26
	.uaword	0x2a8
	.byte	0x2
	.byte	0x8e
	.sleb128 -22
	.uleb128 0x14
	.string	"args"
	.byte	0x1
	.byte	0x27
	.uaword	0x818
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x15
	.uaword	0x827
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.byte	0x2e
	.uleb128 0x16
	.uaword	0x86f
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x16
	.uaword	0x862
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x16
	.uaword	0x856
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x16
	.uaword	0x849
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x28a
	.uleb128 0x18
	.uaword	0x7e2
	.byte	0xff
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.extern	strlen,STT_FUNC,0
	.extern	vsprintf,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
