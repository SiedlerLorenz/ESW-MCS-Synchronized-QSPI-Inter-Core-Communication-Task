# 1 "0_Src/4_McHal/Tricore/_Impl/IfxSmu_cfg.c"
# 1 "C:\\workspace\\esw_mcs_hightec//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/4_McHal/Tricore/_Impl/IfxSmu_cfg.c"
# 29 "0_Src/4_McHal/Tricore/_Impl/IfxSmu_cfg.c"
# 1 "0_Src/4_McHal/Tricore/_Impl/IfxSmu_cfg.h" 1
# 51 "0_Src/4_McHal/Tricore/_Impl/IfxSmu_cfg.h"
typedef enum
{
    IfxSmu_AlarmGroup_0 = 0,
    IfxSmu_AlarmGroup_1,
    IfxSmu_AlarmGroup_2,
    IfxSmu_AlarmGroup_3,
    IfxSmu_AlarmGroup_4,
    IfxSmu_AlarmGroup_5,
    IfxSmu_AlarmGroup_6
} IfxSmu_AlarmGroup;



typedef enum
{
    IfxSmu_RecoveryTimer_0 = 0,
    IfxSmu_RecoveryTimer_1
} IfxSmu_RecoveryTimer;







typedef enum
{
    IfxSmu_Alarm_Cpu0LockstepComparatorError = (IfxSmu_AlarmGroup_0 << 8) | 0,
    IfxSmu_Alarm_Cpu0BusLevelMpuViolationAccessProtection = (IfxSmu_AlarmGroup_0 << 8) | 1,
    IfxSmu_Alarm_Cpu0PcacheTagUncorrectableError = (IfxSmu_AlarmGroup_0 << 8) | 3,
    IfxSmu_Alarm_Cpu0PcacheTagAddressError = (IfxSmu_AlarmGroup_0 << 8) | 4,
    IfxSmu_Alarm_Cpu0PcacheTagAddressBufferOverflow = (IfxSmu_AlarmGroup_0 << 8) | 5,
    IfxSmu_Alarm_Cpu0UnifiedPcachePsprSingleBitCorrection = (IfxSmu_AlarmGroup_0 << 8) | 6,
    IfxSmu_Alarm_Cpu0UnifiedPcachePsprUncorrectableError = (IfxSmu_AlarmGroup_0 << 8) | 7,
    IfxSmu_Alarm_Cpu0UnifiedPcachePsprAddressError = (IfxSmu_AlarmGroup_0 << 8) | 8,
    IfxSmu_Alarm_Cpu0UnifiedPcachePsprAddressBufferOverflow = (IfxSmu_AlarmGroup_0 << 8) | 9,
    IfxSmu_Alarm_Cpu0UnifiedDcacheDsprSingleBitCorrection = (IfxSmu_AlarmGroup_0 << 8) | 10,
    IfxSmu_Alarm_Cpu0UnifiedDcacheDsprUncorrectableError = (IfxSmu_AlarmGroup_0 << 8) | 11,
    IfxSmu_Alarm_Cpu0UnifiedDcacheDsprAddressError = (IfxSmu_AlarmGroup_0 << 8) | 12,
    IfxSmu_Alarm_Cpu0UnifiedDcacheDsprAddressBufferOverflow = (IfxSmu_AlarmGroup_0 << 8) | 13,
    IfxSmu_Alarm_Cpu0CpuDataSriInterfaceEdcError = (IfxSmu_AlarmGroup_0 << 8) | 19,
    IfxSmu_Alarm_Cpu1LockstepComparatorError = (IfxSmu_AlarmGroup_1 << 8) | 0,
    IfxSmu_Alarm_Cpu1BusLevelMpuViolationAccessProtection = (IfxSmu_AlarmGroup_1 << 8) | 1,
    IfxSmu_Alarm_Cpu1PcacheTagUncorrectableError = (IfxSmu_AlarmGroup_1 << 8) | 3,
    IfxSmu_Alarm_Cpu1PcacheTagAddressError = (IfxSmu_AlarmGroup_1 << 8) | 4,
    IfxSmu_Alarm_Cpu1PcacheTagAddressBufferOverflow = (IfxSmu_AlarmGroup_1 << 8) | 5,
    IfxSmu_Alarm_Cpu1UnifiedPcachePsprSingleBitCorrection = (IfxSmu_AlarmGroup_1 << 8) | 6,
    IfxSmu_Alarm_Cpu1UnifiedPcachePsprUncorrectableError = (IfxSmu_AlarmGroup_1 << 8) | 7,
    IfxSmu_Alarm_Cpu1UnifiedPcachePsprAddressError = (IfxSmu_AlarmGroup_1 << 8) | 8,
    IfxSmu_Alarm_Cpu1UnifiedPcachePsprAddressBufferOverflow = (IfxSmu_AlarmGroup_1 << 8) | 9,
    IfxSmu_Alarm_Cpu1UnifiedDcacheDsprSingleBitCorrection = (IfxSmu_AlarmGroup_1 << 8) | 10,
    IfxSmu_Alarm_Cpu1UnifiedDcacheDsprUncorrectableError = (IfxSmu_AlarmGroup_1 << 8) | 11,
    IfxSmu_Alarm_Cpu1UnifiedDcacheDsprAddressError = (IfxSmu_AlarmGroup_1 << 8) | 12,
    IfxSmu_Alarm_Cpu1UnifiedDcacheDsprAddressBufferOverflow = (IfxSmu_AlarmGroup_1 << 8) | 13,
    IfxSmu_Alarm_Cpu1DcacheTagSramCorrection = (IfxSmu_AlarmGroup_1 << 8) | 14,
    IfxSmu_Alarm_Cpu1DcacheTagSramUncorrectableError = (IfxSmu_AlarmGroup_1 << 8) | 15,
    IfxSmu_Alarm_Cpu1DcacheTagSramAddressError = (IfxSmu_AlarmGroup_1 << 8) | 16,
    IfxSmu_Alarm_Cpu1DcacheTagSramAddressBufferOverflow = (IfxSmu_AlarmGroup_1 << 8) | 17,
    IfxSmu_Alarm_Cpu1CpuInstructionFetchSRIInterfaceEdcError = (IfxSmu_AlarmGroup_1 << 8) | 18,
    IfxSmu_Alarm_Cpu1CpuDataSriInterfaceEdcError = (IfxSmu_AlarmGroup_1 << 8) | 19,
    IfxSmu_Alarm_PmuSingleBitCorrection = (IfxSmu_AlarmGroup_2 << 8) | 2,
    IfxSmu_Alarm_PmuDoubleBitCorrection = (IfxSmu_AlarmGroup_2 << 8) | 3,
    IfxSmu_Alarm_PmuNonCorrectableMultipleBit = (IfxSmu_AlarmGroup_2 << 8) | 4,
    IfxSmu_Alarm_PmuAddressingError = (IfxSmu_AlarmGroup_2 << 8) | 5,
    IfxSmu_Alarm_PmuAddressBufferFull = (IfxSmu_AlarmGroup_2 << 8) | 6,
    IfxSmu_Alarm_PmuPflashEccError = (IfxSmu_AlarmGroup_2 << 8) | 7,
    IfxSmu_Alarm_PmuEdcComparatorError = (IfxSmu_AlarmGroup_2 << 8) | 8,
    IfxSmu_Alarm_LmuEccError = (IfxSmu_AlarmGroup_2 << 8) | 15,
    IfxSmu_Alarm_LmuRegisterAccessProtectionErrorBusLevelMpuError = (IfxSmu_AlarmGroup_2 << 8) | 16,
    IfxSmu_Alarm_LmuSramSingleBitCorrection = (IfxSmu_AlarmGroup_2 << 8) | 17,
    IfxSmu_Alarm_LmuSramUncorrectableError = (IfxSmu_AlarmGroup_2 << 8) | 18,
    IfxSmu_Alarm_LmuSramAddressError = (IfxSmu_AlarmGroup_2 << 8) | 19,
    IfxSmu_Alarm_LmuSramAddressBufferOverflow = (IfxSmu_AlarmGroup_2 << 8) | 20,
    IfxSmu_Alarm_SriEdcAddressPhaseError = (IfxSmu_AlarmGroup_2 << 8) | 21,
    IfxSmu_Alarm_SriEdcWritePhaseError = (IfxSmu_AlarmGroup_2 << 8) | 22,
    IfxSmu_Alarm_SriEdcReadPhaseError = (IfxSmu_AlarmGroup_2 << 8) | 23,
    IfxSmu_Alarm_IrEdcError = (IfxSmu_AlarmGroup_2 << 8) | 25,
    IfxSmu_Alarm_IomPinMismatchIndication = (IfxSmu_AlarmGroup_2 << 8) | 26,
    IfxSmu_Alarm_SmuTimer0TimeOut = (IfxSmu_AlarmGroup_2 << 8) | 29,
    IfxSmu_Alarm_SmuTimer1TimeOut = (IfxSmu_AlarmGroup_2 << 8) | 30,
    IfxSmu_Alarm_SmuErrorPinFaultStateActivation = (IfxSmu_AlarmGroup_2 << 8) | 31,
    IfxSmu_Alarm_ScuCguInputClockOutOfRange = (IfxSmu_AlarmGroup_3 << 8) | 0,
    IfxSmu_Alarm_ScuCguSystemPllVcoLossOfLockEvent = (IfxSmu_AlarmGroup_3 << 8) | 1,
    IfxSmu_Alarm_ScuCguPll_ErayVcoLossOfLockEvent = (IfxSmu_AlarmGroup_3 << 8) | 2,
    IfxSmu_Alarm_ScuCguStmClockOutOfRangeFrequency = (IfxSmu_AlarmGroup_3 << 8) | 3,
    IfxSmu_Alarm_ScuCguPll_ErayOutOfRangeFrequency = (IfxSmu_AlarmGroup_3 << 8) | 4,
    IfxSmu_Alarm_ScuCguSystemPLLOutOfRangeFrequency = (IfxSmu_AlarmGroup_3 << 8) | 5,
    IfxSmu_Alarm_ScuCguSriClockOutOfRangeFrequency = (IfxSmu_AlarmGroup_3 << 8) | 6,
    IfxSmu_Alarm_ScuCguSpbClockOutOfRangeFrequency = (IfxSmu_AlarmGroup_3 << 8) | 7,
    IfxSmu_Alarm_ScuCguGtmClockOutOfRangeFrequency = (IfxSmu_AlarmGroup_3 << 8) | 8,
    IfxSmu_Alarm_ScuCguAdcClockOutOfRangeFrequency = (IfxSmu_AlarmGroup_3 << 8) | 9,
    IfxSmu_Alarm_ScuEvrEvr1Dot3VUnderVoltage = (IfxSmu_AlarmGroup_3 << 8) | 11,
    IfxSmu_Alarm_ScuEvrEvr1Dot3VOverVoltage = (IfxSmu_AlarmGroup_3 << 8) | 12,
    IfxSmu_Alarm_ScuEvrEvr3Dot3VUnderVoltage = (IfxSmu_AlarmGroup_3 << 8) | 13,
    IfxSmu_Alarm_ScuEvrEvr3Dot3VOverVoltage = (IfxSmu_AlarmGroup_3 << 8) | 14,
    IfxSmu_Alarm_ScuEvrExternalSupplyUnderVoltage = (IfxSmu_AlarmGroup_3 << 8) | 15,
    IfxSmu_Alarm_ScuEVRExternalSupplyOverVoltage = (IfxSmu_AlarmGroup_3 << 8) | 16,
    IfxSmu_Alarm_ScuWdtsWatchdogTimeOut = (IfxSmu_AlarmGroup_3 << 8) | 17,
    IfxSmu_Alarm_ScuWdtCpu0WatchdogTimeOut = (IfxSmu_AlarmGroup_3 << 8) | 18,
    IfxSmu_Alarm_ScuWdtCpu1WatchdogTimeOut = (IfxSmu_AlarmGroup_3 << 8) | 19,
    IfxSmu_Alarm_ScuWdtCpu2WatchdogTimeOut = (IfxSmu_AlarmGroup_3 << 8) | 20,
    IfxSmu_Alarm_ScuWdtWatchdogTimeOut = (IfxSmu_AlarmGroup_3 << 8) | 21,
    IfxSmu_Alarm_SpbAccessEnableError = (IfxSmu_AlarmGroup_3 << 8) | 22,
    IfxSmu_Alarm_ScuDtsTemperatureUnderflow = (IfxSmu_AlarmGroup_3 << 8) | 25,
    IfxSmu_Alarm_ScuDtsTemperatureOverflow = (IfxSmu_AlarmGroup_3 << 8) | 26,
    IfxSmu_Alarm_ScuExternalEmergencyStopSignal = (IfxSmu_AlarmGroup_3 << 8) | 29,
    IfxSmu_Alarm_SriBusError = (IfxSmu_AlarmGroup_3 << 8) | 30,
    IfxSmu_Alarm_SpbBusError = (IfxSmu_AlarmGroup_3 << 8) | 31,
    IfxSmu_Alarm_GtmSramSingleBitCorrection = (IfxSmu_AlarmGroup_4 << 8) | 0,
    IfxSmu_Alarm_GtmSramUncorrectableError = (IfxSmu_AlarmGroup_4 << 8) | 1,
    IfxSmu_Alarm_GtmSramAddressError = (IfxSmu_AlarmGroup_4 << 8) | 2,
    IfxSmu_Alarm_GtmSramAddressBufferOverflow = (IfxSmu_AlarmGroup_4 << 8) | 3,
    IfxSmu_Alarm_CanSramSingleBitCorrection = (IfxSmu_AlarmGroup_4 << 8) | 4,
    IfxSmu_Alarm_CanSramUncorrectableError = (IfxSmu_AlarmGroup_4 << 8) | 5,
    IfxSmu_Alarm_CanSramAddressError = (IfxSmu_AlarmGroup_4 << 8) | 6,
    IfxSmu_Alarm_CanSramAddressBufferOverflow = (IfxSmu_AlarmGroup_4 << 8) | 7,
    IfxSmu_Alarm_FlexraySramSingleBitCorrection = (IfxSmu_AlarmGroup_4 << 8) | 8,
    IfxSmu_Alarm_FlexraySramUncorrectableError = (IfxSmu_AlarmGroup_4 << 8) | 9,
    IfxSmu_Alarm_FlexraySramAddressError = (IfxSmu_AlarmGroup_4 << 8) | 10,
    IfxSmu_Alarm_FlexraySramAddressBufferOverflow = (IfxSmu_AlarmGroup_4 << 8) | 11,
    IfxSmu_Alarm_EmemSramSingleBitCorrection = (IfxSmu_AlarmGroup_4 << 8) | 12,
    IfxSmu_Alarm_EmemSramUncorrectableError = (IfxSmu_AlarmGroup_4 << 8) | 13,
    IfxSmu_Alarm_EmemSramAddressBufferOverflow = (IfxSmu_AlarmGroup_4 << 8) | 15,
    IfxSmu_Alarm_SramsSramSingleBitCorrection = (IfxSmu_AlarmGroup_4 << 8) | 16,
    IfxSmu_Alarm_SramsSramUncorrectableError = (IfxSmu_AlarmGroup_4 << 8) | 17,
    IfxSmu_Alarm_SramsSramAddressError = (IfxSmu_AlarmGroup_4 << 8) | 18,
    IfxSmu_Alarm_SramsSramAddressBufferOverflow = (IfxSmu_AlarmGroup_4 << 8) | 19,
    IfxSmu_Alarm_SoftwareAlarm0 = (IfxSmu_AlarmGroup_5 << 8) | 0,
    IfxSmu_Alarm_SoftwareAlarm1 = (IfxSmu_AlarmGroup_5 << 8) | 1,
    IfxSmu_Alarm_SoftwareAlarm2 = (IfxSmu_AlarmGroup_5 << 8) | 2,
    IfxSmu_Alarm_SoftwareAlarm3 = (IfxSmu_AlarmGroup_5 << 8) | 3,
    IfxSmu_Alarm_SoftwareAlarm4 = (IfxSmu_AlarmGroup_5 << 8) | 4,
    IfxSmu_Alarm_SoftwareAlarm5 = (IfxSmu_AlarmGroup_5 << 8) | 5,
    IfxSmu_Alarm_SoftwareAlarm6 = (IfxSmu_AlarmGroup_5 << 8) | 6,
    IfxSmu_Alarm_SoftwareAlarm7 = (IfxSmu_AlarmGroup_5 << 8) | 7,
    IfxSmu_Alarm_SoftwareAlarm8 = (IfxSmu_AlarmGroup_5 << 8) | 8,
    IfxSmu_Alarm_SoftwareAlarm9 = (IfxSmu_AlarmGroup_5 << 8) | 9,
    IfxSmu_Alarm_SoftwareAlarm10 = (IfxSmu_AlarmGroup_5 << 8) | 10,
    IfxSmu_Alarm_SoftwareAlarm11 = (IfxSmu_AlarmGroup_5 << 8) | 11,
    IfxSmu_Alarm_SoftwareAlarm12 = (IfxSmu_AlarmGroup_5 << 8) | 12,
    IfxSmu_Alarm_SoftwareAlarm13 = (IfxSmu_AlarmGroup_5 << 8) | 13,
    IfxSmu_Alarm_SoftwareAlarm14 = (IfxSmu_AlarmGroup_5 << 8) | 14,
    IfxSmu_Alarm_SoftwareAlarm15 = (IfxSmu_AlarmGroup_5 << 8) | 15,
    IfxSmu_Alarm_Cpu2BusLevelMpuViolationAccessProtection = (IfxSmu_AlarmGroup_6 << 8) | 1,
    IfxSmu_Alarm_Cpu2PcacheTagUncorrectableError = (IfxSmu_AlarmGroup_6 << 8) | 3,
    IfxSmu_Alarm_Cpu2PcacheTagAddressError = (IfxSmu_AlarmGroup_6 << 8) | 4,
    IfxSmu_Alarm_Cpu2PcacheTagAddressBufferOverflow = (IfxSmu_AlarmGroup_6 << 8) | 5,
    IfxSmu_Alarm_Cpu2UnifiedPcachePsprSingleBitCorrection = (IfxSmu_AlarmGroup_6 << 8) | 6,
    IfxSmu_Alarm_Cpu2UnifiedPcachePsprUncorrectableError = (IfxSmu_AlarmGroup_6 << 8) | 7,
    IfxSmu_Alarm_Cpu2UnifiedPcachePsprAddressError = (IfxSmu_AlarmGroup_6 << 8) | 8,
    IfxSmu_Alarm_Cpu2UnifiedPcachePsprAddressBufferOverflow = (IfxSmu_AlarmGroup_6 << 8) | 9,
    IfxSmu_Alarm_Cpu2UnifiedDcacheDsprSingleBitCorrection = (IfxSmu_AlarmGroup_6 << 8) | 10,
    IfxSmu_Alarm_Cpu2UnifiedDcacheDsprUncorrectableError = (IfxSmu_AlarmGroup_6 << 8) | 11,
    IfxSmu_Alarm_Cpu2UnifiedDcacheDsprAddressError = (IfxSmu_AlarmGroup_6 << 8) | 12,
    IfxSmu_Alarm_Cpu2UnifiedDcacheDsprAddressBufferOverflow = (IfxSmu_AlarmGroup_6 << 8) | 13,
    IfxSmu_Alarm_Cpu2DcacheTagSramSingleBitCorrection = (IfxSmu_AlarmGroup_6 << 8) | 14,
    IfxSmu_Alarm_Cpu2DcacheTagSramUncorrectableError = (IfxSmu_AlarmGroup_6 << 8) | 15,
    IfxSmu_Alarm_Cpu2DcacheTagSramAddressError = (IfxSmu_AlarmGroup_6 << 8) | 16,
    IfxSmu_Alarm_Cpu2DcacheTagSramAddressBufferOverflow = (IfxSmu_AlarmGroup_6 << 8) | 17,
    IfxSmu_Alarm_Cpu2CpuInstructionFetchSRIInterfaceEdcError = (IfxSmu_AlarmGroup_6 << 8) | 18,
    IfxSmu_Alarm_Cpu2CpuDataSriInterfaceEdcError = (IfxSmu_AlarmGroup_6 << 8) | 19,
    IfxSmu_Alarm_noAlarm
} IfxSmu_Alarm;
# 29 "0_Src/4_McHal/Tricore/_Impl/IfxSmu_cfg.c" 2
