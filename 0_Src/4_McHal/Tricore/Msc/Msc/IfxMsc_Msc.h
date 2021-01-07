/**
 * \file IfxMsc_Msc.h
 * \brief MSC MSC details
 * \ingroup IfxLld_Msc
 *
 * \version iLLD_1_0_1_7_0
 * \copyright Copyright (c) 2017 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 * \defgroup IfxLld_Msc_Msc_Usage How to use the MSC Interface driver?
 * \ingroup IfxLld_Msc
 *
 * The MSC interface driver provides a default MSC configuration
 *
 *
 *
 * In the following sections it will be described, how to integrate the driver into the application framework.
 *
 * \section IfxLld_Msc_Msc_Preparation Preparation
 * \subsection IfxLld_Msc_Msc_Include Include Files
 *
 * Include following header file into your C code:
 * \code
 *     #include <Msc/Msc/IfxMsc_Msc.h>
 * \endcode
 *
 * \subsection IfxLld_Msc_Msc_Variables Variables
 *
 * Declare the MSC handle as global variable in your C code:
 *
 * \code
 *     // MSC handle
 *     static IfxMsc_Msc *msc;
 *
 *     // IO Pins
 *     static const IfxMsc_Msc_Io IfxMsc_PinMap[IFXMSC_NUM_MODULES] = {
 *     {
 *         { &IfxMsc0_FCLP_P13_1_OUT, IfxPort_OutputMode_pushPull },
 *         { &IfxMsc0_FCLN_P13_0_OUT, IfxPort_OutputMode_pushPull },
 *         { &IfxMsc0_SOP_P13_3_OUT, IfxPort_OutputMode_pushPull },
 *         { &IfxMsc0_SON_P13_2_OUT, IfxPort_OutputMode_pushPull },
 *         { &IfxMsc0_EN0_P10_3_OUT, IfxPort_OutputMode_pushPull },
 *         { &IfxMsc0_EN1_P11_2_OUT, IfxPort_OutputMode_pushPull },
 *          {NULL_PTR},
 *          {NULL_PTR},
 *         { &IfxMsc0_SDI0_P11_10_IN, IfxPort_InputMode_pullUp },
 *         { &IfxMsc0_INJ0_P00_0_IN, IfxPort_InputMode_pullUp },
 *         { &IfxMsc0_INJ1_P10_5_IN, IfxPort_InputMode_pullUp },
 *         IfxPort_PadDriver_cmosAutomotiveSpeed3
 *     },
 *
 *     #if IFXMSC_NUM_MODULES >= 2
 *     {
 *         { &IfxMsc1_FCLP_P22_1_OUT, IfxPort_OutputMode_pushPull },
 *         { &IfxMsc1_FCLN_P22_0_OUT, IfxPort_OutputMode_pushPull },
 *         { &IfxMsc1_SOP_P22_3_OUT, IfxPort_OutputMode_pushPull },
 *         { &IfxMsc1_SON_P22_2_OUT, IfxPort_OutputMode_pushPull },
 *         { &IfxMsc1_EN0_P23_4_OUT, IfxPort_OutputMode_pushPull },
 *         { &IfxMsc1_EN1_P23_5_OUT, IfxPort_OutputMode_pushPull },
 *          {NULL_PTR},
 *          {NULL_PTR},
 *         { &IfxMsc1_SDI0_P23_1_IN, IfxPort_InputMode_pullUp },
 *         { &IfxMsc1_INJ0_P23_3_IN, IfxPort_InputMode_pullUp },
 *         { &IfxMsc1_INJ1_P33_13_IN, IfxPort_InputMode_pullUp },
 *         IfxPort_PadDriver_cmosAutomotiveSpeed3
 *     },
 *     #endif
 * };
 * \endcode
 *
 * \subsection IfxLld_Msc_Msc_Init Module Initialisation
 *
 * The module initialisation can be done as followed:
 * \code
 *     // create configuration (same is used for all MSCs)
 *     IfxMsc_Msc_Config mscConfig;
 *     IfxMsc_Msc_initModuleConfig(&mscConfig, &MODULE_MSC0);
 *
 *     // increase baudrate for faster simulation:
 *     mscConfig.clockConfig.baudrate = 25000000;
 *     mscConfig.clockConfig.dividerMode = IfxMsc_DividerMode_fractional;
 *
 *     // FCL only activated on transfers
 *     mscConfig.outputControlConfig.fclClockControl = IfxMsc_FclClockControlEnabled_activePhaseOnly;
 *
 *     // in this case we also don't need a selection bit
 *     mscConfig.downstreamConfig.srlActivePhaseSelection = IfxMsc_ActivePhaseSelection_none;
 *     mscConfig.downstreamConfig.srhActivePhaseSelection = IfxMsc_ActivePhaseSelection_none;
 *
 *     // initialize MSCs
 *     for(int i=0; i<IFXMSC_NUM_MODULES; ++i) {
 *         // init module pointer
 *         mscConfig.msc = (Ifx_MSC*)IfxMsc_cfg_indexMap[i].module;
 *
 *         // IO Config
 *         mscConfig.io = IfxMsc_PinMap[i];
 *
 *         // initialize module
 *         IfxMsc_Msc_initModule(&msc[i], &mscConfig);
 *     }
 * \endcode
 *
 * The MSC is ready for use now!
 *
 *
 * \section IfxLld_Msc_Msc_DataTransfers Data Transfers
 *
 * The MSC driver provides simple to use transfer function
 *
 * \code
 *     for(int n=0; n<10; ++n) {
 *         // clear IRQ flag of previous transfer
 *         for(int i=0; i<IFXMSC_NUM_MODULES; ++i) {
 *             msc[i].msc->ISC.B.CDEDI = 1;
 *         }
 *
 *         // new transfer
 *         for(int i=0; i<IFXMSC_NUM_MODULES; ++i) {
 *             const unsigned dataL = i*0x1000 + n;
 *             const unsigned dataH = i*0x1000 + 0x0100 + n;
 *             IfxMsc_Msc_sendData(&msc[i], dataL, dataH);
 *         }
 *         // wait until transfers are finished
 *         for(int i=0; i<IFXMSC_NUM_MODULES; ++i) {
 *             while( !msc[i].msc->ISR.B.DEDI ); //  check if new data could be written
 *             while( msc[i].msc->DSS.B.DFA ); //  check if we are still in the active data phase
 *         }
 * }
 * \endcode
 *
 * \defgroup IfxLld_Msc_Msc MSC
 * \ingroup IfxLld_Msc
 * \defgroup IfxLld_Msc_Msc_Enumerations Enumerations
 * \ingroup IfxLld_Msc_Msc
 * \defgroup IfxLld_Msc_Msc_Data_Structures Data Structures
 * \ingroup IfxLld_Msc_Msc
 * \defgroup IfxLld_Msc_Msc_Module_Initialize_Functions Module Initialize Functions
 * \ingroup IfxLld_Msc_Msc
 * \defgroup IfxLld_Msc_Msc_Send_Functions Send Functions
 * \ingroup IfxLld_Msc_Msc
 * \defgroup IfxLld_Msc_Msc_Receive_Functions Receive Functions
 * \ingroup IfxLld_Msc_Msc
 * \defgroup IfxLld_Msc_Msc_Target_Read_Write_Functions Target Read Write Functions
 * \ingroup IfxLld_Msc_Msc
 */

#ifndef IFXMSC_MSC_H
#define IFXMSC_MSC_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Msc/Std/IfxMsc.h"

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Msc_Msc_Enumerations
 * \{ */
/** \brief Msc Instance Number
 */
typedef enum
{
    IfxMsc_Msc_Target_low  = 0, /**< \brief MSC Target Low */
    IfxMsc_Msc_Target_high = 1  /**< \brief MSC Target High */
} IfxMsc_Msc_Target;

/** \} */

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Msc_Msc_Data_Structures
 * \{ */
typedef struct
{
    IfxMsc_En_Out     *pin;
    IfxPort_OutputMode mode;
} IfxMsc_Msc_en;

typedef struct
{
    IfxMsc_Fcln_Out   *pin;
    IfxPort_OutputMode mode;
} IfxMsc_Msc_fcln;

typedef struct
{
    IfxMsc_Fclp_Out   *pin;
    IfxPort_OutputMode mode;
} IfxMsc_Msc_fclp;

typedef struct
{
    IfxMsc_Inj_In    *pin;
    IfxPort_InputMode mode;
} IfxMsc_Msc_inj0;

typedef struct
{
    IfxMsc_Inj_In    *pin;
    IfxPort_InputMode mode;
} IfxMsc_Msc_inj1;

typedef struct
{
    IfxMsc_Sdi_In    *pin;
    IfxPort_InputMode mode;
} IfxMsc_Msc_sdi;

typedef struct
{
    IfxMsc_Son_Out    *pin;
    IfxPort_OutputMode mode;
} IfxMsc_Msc_son;

typedef struct
{
    IfxMsc_Sop_Out    *pin;
    IfxPort_OutputMode mode;
} IfxMsc_Msc_sop;

/** \} */

/** \addtogroup IfxLld_Msc_Msc_Data_Structures
 * \{ */
/** \brief ABRA block Configuration Structure
 */
typedef struct
{
    uint32                         abraDownstreamBlockBaudrate;       /**< \brief Specifies ABRA downstream block baud */
    IfxMsc_ShiftClockPhaseDuration lowPhaseOfShiftClock;              /**< \brief Specifies Low phase of shift clock */
    IfxMsc_ShiftClockPhaseDuration highPhaseOfShiftClock;             /**< \brief Specifies High phase of shift clock */
    IfxMsc_NDividerAbra            nDividerAbra;                      /**< \brief Specifies the N divider */
    IfxMsc_AsynchronousBlock       abraBlockBypass;                   /**< \brief Specifies ABRA block bypass */
    IfxMsc_ClockSelect             clockSelectAbra;                   /**< \brief Specifies the clock select for ABRA */
} IfxMsc_Msc_Abra;

/** \brief Clock configuration data Structure
 */
typedef struct
{
    uint32             baudrate;          /**< \brief Specifies the baud rate */
    IfxMsc_DividerMode dividerMode;       /**< \brief Specifies divided clock properties */
    uint16             step;              /**< \brief Specifies the step value */
} IfxMsc_Msc_Clock;

/** \brief Downstream Control Configuration Structure
 */
typedef struct
{
    IfxMsc_TransmissionMode                 transmissionMode;                      /**< \brief Specifies the transmission Mode */
    IfxMsc_DataFrameLength                  srlDataFrameLength;                    /**< \brief Specifies the Number of SRL bits shifted at data frames */
    IfxMsc_DataFrameLength                  srhDataFrameLength;                    /**< \brief Specifies the Number of SRH bits shifted at data frames */
    IfxMsc_ActivePhaseSelection             srlActivePhaseSelection;               /**< \brief Specifies the Enable SRL active phase selection bit */
    IfxMsc_ActivePhaseSelection             srhActivePhaseSelection;               /**< \brief Specifies the Enable SRL active phase selection bit */
    IfxMsc_CommandFrameLength               commandFrameLength;                    /**< \brief Specifies the Number of bits shifted at command frames */
    IfxMsc_DataFramePassivePhaseLength      dataFramePassivePhaseLength;           /**< \brief Specifies the Passive Phase Length at Data Frames */
    IfxMsc_PassiveTimeFrameCount            passiveTimeFrameCount;                 /**< \brief Specifies the Number of Passive Time Frames */
    IfxMsc_ExternalSignalInjection          externalSignalInjectionPin0;           /**< \brief Specifies the Injection Enable Pin 0 */
    IfxMsc_ExternalBitInjectionPosition     injectionPositionPin0;                 /**< \brief Specifies the Injection Position Pin 0 */
    IfxMsc_ExternalSignalInjection          externalSignalInjectionPin1;           /**< \brief Specifies the Injection Enable Pin 1 */
    IfxMsc_ExternalBitInjectionPosition     injectionPositionPin1;                 /**< \brief Specifies the Injection Position Pin 1 */
    IfxMsc_CommandDataCommandRepetitionMode commandDataCommandReceptionMode;       /**< \brief Specifies the Command-Data-Command in Data Repetition Mode */
    uint32                                  downstreamDataSourcesLow;              /**< \brief Specifies the Downstream Data Source selections Low */
    uint32                                  downstreamDataSourcesHigh;             /**< \brief Specifies the Downstream Data Source selections High */
    uint32                                  emergencyStopEnableBits;               /**< \brief Emergency Stop */
} IfxMsc_Msc_DownstreamControlConfig;

/** \brief Downstream Control Extension Configuration Structure
 */
typedef struct
{
    IfxMsc_Extension                               extension;                                     /**< \brief Specifies the Extension Enable */
    IfxMsc_MsbBitDataExtension                     srlBitsShiftedAtDataFramesExtension;           /**< \brief Specifies the Number of SRLE bits shifted at Data Frames */
    IfxMsc_MsbBitDataExtension                     srhBitsShiftedAtDataFramesExtension;           /**< \brief Specifies the Number of SRHE bits shifted at Data Frames */
    uint32                                         downstreamExtensionDataSourcesLow;             /**< \brief Specifies the Downstream Select Data Source Low Extension */
    uint32                                         downstreamExtensionDataSourcesHigh;            /**< \brief Specifies the Downstream Select Data Source High Extension */
    uint32                                         emergencyStopExtensionEnableBits;              /**< \brief Emergency Stop Extension */
    IfxMsc_DataFrameExtensionPassivePhaseLength    dataFrameExtensionPassivePhaseLength;          /**< \brief Specifies the Passive Phase Length at Data Frames Extension */
    IfxMsc_ControlFrameExtensionPassivePhaseLength controlFrameExtensionPassivePhaseLength;       /**< \brief Specifies the Passive Phase Length at Control Frames Extension */
    IfxMsc_NDividerDownstream                      nDividerDownstream;                            /**< \brief Specifies the division ratio for downstream generator clock */
} IfxMsc_Msc_DownstreamControlExtensionConfig;

/** \brief Interrupt Configuration Structure
 */
typedef struct
{
    IfxMsc_DataFrameInterruptNode       dataFrameInterruptNode;             /**< \brief Specifies the Data Frame Interrupt Node */
    IfxMsc_DataFrameInterrupt           dataFrameInterrupt;                 /**< \brief Specifies the Data Frame Interrupt Mode */
    IfxMsc_CommandFrameInterruptNode    commandFrameInterruptNode;          /**< \brief Specifies the Command Frame Interrupt Node */
    IfxMsc_CommandFrameInterrupt        commandFrameInterrupt;              /**< \brief Specifies the Command Frame Interrupt Mode */
    IfxMsc_TimeFrameInterruptNode       timeFrameInterruptNode;             /**< \brief Specifies the Time Frame Interrupt Node */
    IfxMsc_TimeFrameInterrupt           timeFrameInterrupt;                 /**< \brief Specifies the Time Frame Interrupt Mode */
    IfxMsc_ReceiveDataInterruptNode     receiveDataInterruptNode;           /**< \brief Specifies the Receive Interrupt Node */
    IfxMsc_ReceiveDataInterrupt         receiveDataInterrupt;               /**< \brief Specifies the Receive Interrupt Mode */
    IfxMsc_UpstreamTimeoutInterruptNode upstreamTimeoutInterruptNode;       /**< \brief Specifies the Upstream Timeout Interrupt Node */
    IfxMsc_UpstreamTimeoutInterrupt     upstreamTimeoutInterrupt;           /**< \brief Specifies the Upstream Timeout Interrupt Mode */
    IfxMsc_OverflowInterruptNode        overflowInterruptNode;              /**< \brief Specifies the ABRA Overflow Interrupt Node */
    IfxMsc_OverflowInterrupt            overflowInterrupt;                  /**< \brief Specifies the ABRA Overflow Interrupt Mode */
    IfxMsc_UnderflowInterruptNode       underflowInterruptNode;             /**< \brief Specifies the ABRA Underflow Interrupt Node */
    IfxMsc_UnderflowInterrupt           underflowInterrupt;                 /**< \brief Specifies the ABRA Underflow Interrupt Mode */
} IfxMsc_Msc_InterruptConfig;

/** \brief MSC Pin Configuration Structure
 */
typedef struct
{
    IfxMsc_Msc_fclp   fclp;
    IfxMsc_Msc_fcln   fcln;
    IfxMsc_Msc_sop    sop;
    IfxMsc_Msc_son    son;
    IfxMsc_Msc_en     en0;
    IfxMsc_Msc_en     en1;
    IfxMsc_Msc_en     en2;
    IfxMsc_Msc_en     en3;
    IfxMsc_Msc_sdi    sdi;
    IfxMsc_Msc_inj0   inj0;
    IfxMsc_Msc_inj1   inj1;
    IfxPort_PadDriver pinDriver;
} IfxMsc_Msc_Io;

/** \brief Output Control Configuration Structure
 */
typedef struct
{
    IfxMsc_FclLinePolarity        fclpPolarity;          /**< \brief Specifies the FCLP Polarity */
    IfxMsc_SoLinePolarity         sopPolarity;           /**< \brief Specifies the SLP Polarity */
    IfxMsc_ChipSelectActiveState  cslpPolarity;          /**< \brief Specifies the CSLP Polarity */
    IfxMsc_SdiLinePolarity        sdiLinePolarity;       /**< \brief Specifies the ILP Polarity */
    IfxMsc_FclClockControlEnabled fclClockControl;       /**< \brief Specifies the CLKCTRL Polarity */
} IfxMsc_Msc_OutputControlConfig;

/** \brief Upstream Control Configuration Structure
 */
typedef struct
{
    IfxMsc_UpstreamChannelFrameType     upstreamChannelFrameType;           /**< \brief Specifies the Upstream Channel Frame Type */
    IfxMsc_UpstreamChannelReceivingRate upstreamChannelReceivingRate;       /**< \brief Specifies the Upstream Channel Receiving Rate */
    IfxMsc_Parity                       parity;                             /**< \brief Specifies the Parity Mode */
    IfxMsc_ServiceRequestDelay          serviceRequestDelay;                /**< \brief Specifies the Service Request Delay */
    IfxMsc_UpstreamTimeoutPrescaler     upstreamTimeoutPrescaler;           /**< \brief Specifies the Upstream Timeout Prescaler */
    IfxMsc_UpstreamTimeoutValue         upstreamTimeoutValue;               /**< \brief Specifies the Upstream Timeout Value */
} IfxMsc_Msc_UpstreamStatusConfig;

/** \} */

/** \addtogroup IfxLld_Msc_Msc_Data_Structures
 * \{ */
/** \brief MSC base address data Structure
 */
typedef struct
{
    Ifx_MSC *msc;       /**< \brief Specifies the pointer to the MSC registers */
} IfxMsc_Msc;

/** \brief MSC Module Configuration Structure
 */
typedef struct
{
    Ifx_MSC                                    *msc;                                          /**< \brief Specifies the pointer to the MSC registers */
    IfxMsc_Msc_Clock                            clockConfig;                                  /**< \brief Specifies the Clock configuration */
    IfxMsc_Msc_UpstreamStatusConfig             upstreamConfig;                               /**< \brief Specifies the Upstream configuration */
    IfxMsc_Msc_InterruptConfig                  interruptConfig;                              /**< \brief Specifies the Interrupt configuration */
    IfxMsc_Msc_OutputControlConfig              outputControlConfig;                          /**< \brief Specifies the Output Control configuration */
    IfxMsc_Msc_DownstreamControlConfig          downstreamConfig;                             /**< \brief Specifies the Downstream configuration */
    IfxMsc_Msc_DownstreamControlExtensionConfig downstreamExtensionConfig;                    /**< \brief Specifies the Downstream Extension configuration */
    IfxMsc_Msc_Abra                             abraConfig;                                   /**< \brief Specifies the ABRA configuration */
    IfxMsc_Target                               target[IFXMSC_NUM_ENABLE_SELECT_LINES];       /**< \brief Specifies the Downstream targets */
    IfxMsc_Msc_Io                               io;                                           /**< \brief Specifies the IO Pin configuration */
} IfxMsc_Msc_Config;

/** \} */

/** \addtogroup IfxLld_Msc_Msc_Module_Initialize_Functions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief de-initialize MSC module
 * \param msc pointer to the MSC module handle
 * \return None
 *
 * \code
 *     IfxMsc_Msc_deInitModule(&msc);
 * \endcode
 *
 */
IFX_EXTERN void IfxMsc_Msc_deInitModule(IfxMsc_Msc *msc);

/** \brief initialize the MSC module
 * \param msc pointer to the MSC module handle
 * \param config pointer to the MSC module configuration
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Msc_Msc_Usage
 *
 */
IFX_EXTERN void IfxMsc_Msc_initModule(IfxMsc_Msc *msc, const IfxMsc_Msc_Config *config);

/** \brief initialize the MSC module configuration
 * \param config pointer to the MSC configuration
 * \param msc pointer to the MSC registers
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Msc_Msc_Usage
 *
 */
IFX_EXTERN void IfxMsc_Msc_initModuleConfig(IfxMsc_Msc_Config *config, Ifx_MSC *msc);

/** \brief initialize the ABRA block
 * \param msc pointer to the MSC module handle
 * \param config pointer to the MSC module configuration
 * \return None
 */
IFX_EXTERN void IfxMsc_Msc_initializeAbra(IfxMsc_Msc *msc, const IfxMsc_Msc_Config *config);

/** \brief initialize the MSC data extension block for 64bit operation
 * \param msc pointer to the MSC module handle
 * \param config pointer to the MSC module configuration
 * \return None
 */
IFX_EXTERN void IfxMsc_Msc_initializeDataExtension(IfxMsc_Msc *msc, const IfxMsc_Msc_Config *config);

/** \} */

/** \addtogroup IfxLld_Msc_Msc_Send_Functions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief send downstream command
 * \param msc pointer to the MSC module handle
 * \param command transmit command
 * \return None
 */
IFX_EXTERN void IfxMsc_Msc_sendCommand(IfxMsc_Msc *msc, uint32 command);

/** \brief send complete downstream data, both high and low
 * \param msc pointer to the MSC module handle
 * \param dataLow low data to be transmitted
 * \param dataHigh high data to be transmitted
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Msc_Msc_Usage
 *
 */
IFX_EXTERN void IfxMsc_Msc_sendData(IfxMsc_Msc *msc, uint16 dataLow, uint16 dataHigh);

/** \brief Send downstream data extension (64bit)
 * \param msc pointer to the MSC module handle
 * \param data Data to send
 * \param dataExtension Data extension to send
 * \return None
 */
IFX_EXTERN void IfxMsc_Msc_sendDataExtension(IfxMsc_Msc *msc, uint32 data, uint32 dataExtension);

/** \brief send high downstream data
 * \param msc pointer to the MSC module handle
 * \param data high downstream data to be transmitted
 * \return None
 */
IFX_EXTERN void IfxMsc_Msc_sendDataHigh(IfxMsc_Msc *msc, uint16 data);

/** \brief send high downstream data
 * \param msc pointer to the MSC module handle
 * \param data low downstream data to be transmitted
 * \return None
 */
IFX_EXTERN void IfxMsc_Msc_sendDataLow(IfxMsc_Msc *msc, uint16 data);

/** \} */

/** \addtogroup IfxLld_Msc_Msc_Receive_Functions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief receive upstream data
 * \param msc pointer to the MSC module handle
 * \param upstreamIdx index of the upstream data register
 * \return data
 */
IFX_EXTERN uint32 IfxMsc_Msc_receiveData(IfxMsc_Msc *msc, uint8 upstreamIdx);

/** \} */

/** \addtogroup IfxLld_Msc_Msc_Target_Read_Write_Functions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief get the target during high and low phase
 * \param msc pointer to the MSC module handle
 * \param target low phase target or high phase target
 * \return selected target
 */
IFX_EXTERN IfxMsc_Target IfxMsc_Msc_getTarget(IfxMsc_Msc *msc, IfxMsc_Msc_Target target);

/** \brief set the command for target
 * \param msc pointer to the MSC module handle
 * \param enX enX target to be selected
 * \return None
 */
IFX_EXTERN void IfxMsc_Msc_setCommandTarget(IfxMsc_Msc *msc, IfxMsc_Target enX);

/** \brief set the target data to be transmitted during low and high phase
 * \param msc pointer to the MSC module handle
 * \param enXHigh high target to be selected
 * \param enXLow low target to be selected
 * \return None
 */
IFX_EXTERN void IfxMsc_Msc_setDataTarget(IfxMsc_Msc *msc, IfxMsc_Target enXHigh, IfxMsc_Target enXLow);

/** \} */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/**
 * \param msc pointer to the MSC module handle
 * \return None
 */
IFX_INLINE void IfxMsc_Msc_clearDataFrameInterrupt(IfxMsc_Msc *msc);

/**
 * \param msc pointer to the MSC module handle
 * \return status of the active data frame
 */
IFX_INLINE boolean IfxMsc_Msc_getActiveDataFrameStatus(IfxMsc_Msc *msc);

/**
 * \param msc pointer to the MSC module handle
 * \return status of the data frame interrupt
 */
IFX_INLINE boolean IfxMsc_Msc_getDataFrameInterruptStatus(IfxMsc_Msc *msc);

/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/

IFX_INLINE void IfxMsc_Msc_clearDataFrameInterrupt(IfxMsc_Msc *msc)
{
    IfxMsc_clearDataFrameInterruptFlag(msc->msc);
}


IFX_INLINE boolean IfxMsc_Msc_getActiveDataFrameStatus(IfxMsc_Msc *msc)
{
    return IfxMsc_getActiveDataFrameStatus(msc->msc);
}


IFX_INLINE boolean IfxMsc_Msc_getDataFrameInterruptStatus(IfxMsc_Msc *msc)
{
    return IfxMsc_getDataFrameInterruptFlag(msc->msc);
}


#endif /* IFXMSC_MSC_H */
