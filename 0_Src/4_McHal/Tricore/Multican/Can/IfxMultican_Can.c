/**
 * \file IfxMultican_Can.c
 * \brief MULTICAN CAN details
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
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxMultican_Can.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void IfxMultican_Can_MsgObj_getConfig(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Can_MsgObjConfig *config)
{
    Ifx_CAN_MO    *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

    Ifx_CAN_MO_AR  ar;
    Ifx_CAN_MO_AMR amr;
    Ifx_CAN_MO_FCR fcr;

    ar.U  = hwObj->AR.U;
    amr.U = hwObj->AMR.U;
    fcr.U = hwObj->FCR.U;

    // TODO: distinguish remote frame
    config->frame                      = (hwObj->STAT.B.DIR != 0) ? IfxMultican_Frame_transmit : IfxMultican_Frame_receive;

    config->control.singleDataTransfer = fcr.B.SDT;
    config->control.messageLen         = (IfxMultican_DataLengthCode)fcr.B.DLC;
    config->control.extendedFrame      = ar.B.IDE;
    config->control.matchingId         = amr.B.MIDE;

    config->messageId                  = ar.B.ID >> ((config->control.extendedFrame != 0) ? 0 : 18);
    config->priority                   = ar.B.PRI;
    config->acceptanceMask             = amr.B.AM >> ((config->control.extendedFrame != 0) ? 0 : 18);

    // TODO: check if these parameters are used:
    //config->control.singleTransmitTrial = FALSE;
    //config->firstId = 0;
    //config->lastId = 0;

    // TODO: config->nodeId;
}


IfxMultican_Status IfxMultican_Can_MsgObj_init(IfxMultican_Can_MsgObj *msgObj, const IfxMultican_Can_MsgObjConfig *config)
{
    msgObj->node        = config->node;
    msgObj->msgObjId    = config->msgObjId;
    msgObj->msgObjCount = config->msgObjCount;
    msgObj->fifoPointer = 0;

    Ifx_CAN           *mcanSFR   = msgObj->node->mcan;

    Ifx_CAN_MO        *hwObj     = IfxMultican_MsgObj_getPointer(mcanSFR, msgObj->msgObjId);

    IfxMultican_Status status    = IfxMultican_Status_ok;

    boolean            longFrame = (config->control.messageLen > IfxMultican_DataLengthCode_8) ? TRUE : FALSE;

    /* check for the receive frame */
    boolean            receiveFrame = (config->frame == IfxMultican_Frame_receive) ||
                                      (config->frame == IfxMultican_Frame_remoteAnswer) ||
                                      (config->frame == IfxMultican_Frame_remoteRequest);

    /* check for the transmit frame */
    boolean transmitFrame = ((config->frame == IfxMultican_Frame_transmit) ||
                             (config->frame == IfxMultican_Frame_remoteAnswer) ||
                             (config->frame == IfxMultican_Frame_remoteRequest)) &&
                            (config->gatewayTransfers != 1);

    /* check for gateway source object */
    boolean gatewaySourceObj = (config->gatewayTransfers != 0) ? TRUE : FALSE;

    /* check for the receive FIFO and trabsmit FIFO */
    boolean receiveFifo = FALSE, transmitFifo = FALSE;

    if (config->gatewayTransfers != 1)
    {
        receiveFifo  = (config->msgObjCount > 1) && (receiveFrame);
        transmitFifo = (config->msgObjCount > 1) && (transmitFrame);
    }

    /* check for the gateway FIFO */
    boolean              gatewayFifo = (config->msgObjCount > 1) && (gatewaySourceObj);

    /* will be used for Fifo slave objects */
    IfxMultican_MsgObjId objId, firstSlaveObjId, lastSlaveObjId, gatewayDstObjId = 0;

    /* select the first slave object */
    if (!config->firstSlaveObjId)
    {                              // if not selected
        firstSlaveObjId = config->msgObjId + 1;
    }
    else
    {
        firstSlaveObjId = config->firstSlaveObjId;
    }

    /* select the last slave object */
    lastSlaveObjId = firstSlaveObjId + (config->msgObjCount - 1);

    uint32 i;

    /* for standard and FIFO (Tx & Rx) base objects */
    {
        /* MSGVAL: Set message as not valid */
        IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageValid);

        /*  reset RXPND */
        IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_receivePending);

        /*  reset TXPND */
        IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_transmitPending);

        /*  reset RXUPD */
        IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_receiveUpdating);

        /*  reset NEWDAT */
        IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_newData);

        /*  reset MSGLST */
        IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageLost);

        /*  reset RTSEL */
        IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_receiveTransmitSelected);

        /*  reset RXPND */
        IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_transmitRequest);

        /* Configuration of the CAN Message Object List Structure */
        /* Allocate MO for the node associated list */
        {
            /* for standard, gateway and FIFO (Tx & Rx) base objects  */
            /* Append message object to the end of the list */
            IfxMultican_setListCommand(mcanSFR, 0x2, msgObj->node->nodeId + 1, msgObj->msgObjId);

            /* long frame CAN FD */
            if (longFrame)
            {
                /* Allocate MO with extended Data fields slected by FGPR.B.TOP and FGPR.B.BOT, for the unallocated list (0) */
                /* Append message object to the end of the list(0) */
                IfxMultican_setListCommand(mcanSFR, 0x2, 0, config->control.topMsgObjId);
                IfxMultican_setListCommand(mcanSFR, 0x2, 0, config->control.bottomMsgObjId);
            }

            /* for all standard FIFO (Tx and Rx) and gateway FIFO slave objects */
            if (config->msgObjCount > 1)
            {
                for (i = 0; i < config->msgObjCount; i++)
                {
                    objId = firstSlaveObjId + i;

                    IfxMultican_setListCommand(mcanSFR, 0x2, msgObj->node->nodeId + 1, objId);
                }
            }
        }

        if ((config->frame == IfxMultican_Frame_receive) || (config->frame == IfxMultican_Frame_remoteAnswer))
        {
            /*  set RXEN, in case of recieve frame or remote answer*/
            IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_receiveEnable);
        }

        /*  in case of transmit frame */
        if ((transmitFrame) && (config->gatewayTransfers != 1))
        {
            /*  set TXEN0  */
            IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_transmitEnable0);

            /*  set TXEN1  */
            IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_transmitEnable1);

            /*  reset RTSEL */
            IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_receiveTransmitSelected);

            /* MSGVAL: Set message as valid */
            IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageValid);
        }

        if (((config->frame == IfxMultican_Frame_transmit) || (config->frame == IfxMultican_Frame_remoteAnswer)) && (config->gatewayTransfers != 1))
        {
            /*  set DIR, in case of transmit frame or remote answer*/
            IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageDirection);
        }
        else
        {
            /*  clear DIR, in case of receive frame or gateway transfers*/
            IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageDirection);
        }
    }
    {
        /* for standard message object */
        if (config->msgObjCount == 1)
        {
            /* gateway transfers */
            if (gatewaySourceObj)
            {
                /* select Gateway Source mode for FCR.MMC */
                IfxMultican_MsgObj_setMessageMode(hwObj, IfxMultican_MsgObjMode_gatewaySource);

                /* select the gateway destination object as the next object if not selected */
                if (!config->gatewayConfig.gatewayDstObjId)
                {
                    gatewayDstObjId = msgObj->msgObjId + 1;
                }
                else
                {
                    gatewayDstObjId = config->gatewayConfig.gatewayDstObjId;
                }
            }
            /* long frame CAN FD */
            /* FDEN = 1, EDL = 1 and BRS = 0/1 */
            else if (config->node->fastNode && longFrame)
            {
                /* select CAN FD object mode for FCR.MMC */
                IfxMultican_MsgObj_setMessageMode(hwObj, IfxMultican_MsgObjMode_canFD64);
            }
            /* standard frame */
            /* FDEN = 0/1, EDL = 0 and BRS = 0 (BRS = 1 also has no effect here) */
            else
            {
                /* select standard object for FCR.MMC */
                IfxMultican_MsgObj_setMessageMode(hwObj, IfxMultican_MsgObjMode_standard);
            }
        }
        /* for receive FIFO base object */
        else if (receiveFifo)
        {
            /* select receive FIFO base object for FCR.MMC */
            IfxMultican_MsgObj_setMessageMode(hwObj, IfxMultican_MsgObjMode_receiveFifoBase);
        }
        /* for transmit FIFO base object */
        else if (transmitFifo)
        {
            /* select transmit FIFO base object for FCR.MMC */
            IfxMultican_MsgObj_setMessageMode(hwObj, IfxMultican_MsgObjMode_transmitFifoBase);
        }
        /* for gateway FIFO source object */
        else if (gatewayFifo)
        {
            /* select transmit Gateway Source for FCR.MMC */
            IfxMultican_MsgObj_setMessageMode(hwObj, IfxMultican_MsgObjMode_gatewaySource);
        }
        else
        {}

        /* for standard and FIFO (Tx & Rx) base objects  */
        /* enable receive interrupt FCR.RXIE if choosen in case of receive frame */
        boolean receiveInterruptEnabled = (config->rxInterrupt.enabled) && (receiveFrame);
        IfxMultican_MsgObj_setReceiveInterrupt(hwObj, receiveInterruptEnabled);

        /* enable transmit interrupt FCR.TXIE if choosen in case of transmit frame */
        boolean transmitInterruptEnabled = (config->txInterrupt.enabled) && (transmitFrame);
        IfxMultican_MsgObj_setTransmitInterrupt(hwObj, transmitInterruptEnabled);

        /* set FCR.RMM in case of remote answer */
        boolean remoteMonitoringEnabled = (config->frame == IfxMultican_Frame_remoteAnswer);
        IfxMultican_MsgObj_setRemoteMonitoring(hwObj, remoteMonitoringEnabled);

        /* long frame CAN FD */
        /* FDEN = 1, EDL = 1 and BRS = 0/1 */
        /* in case of recieve Msg Obj, it recieves long and long+fast frames */
        if (config->node->fastNode && longFrame)
        {
            /* enable extended data length */
            IfxMultican_MsgObj_setExtendedDataLength(hwObj, TRUE);

            /* set data length code FCR.DLC */
            IfxMultican_MsgObj_setDataLengthCode(hwObj, config->control.messageLen);

            /* set bit rate switch (fast bit rate enable/disable) */
            IfxMultican_MsgObj_setBitRateSwitch(hwObj, config->control.fastBitRate);
        }
        /* standard frame */
        /* FDEN = 0/1, EDL = 0 and BRS = 0 (BRS = 1 also has no effect here) */
        /* in case of recieve Msg Obj, it recieves only standard frames */
        else
        {
            /* set data length code FCR.DLC */
            IfxMultican_MsgObj_setDataLengthCode(hwObj, config->control.messageLen);
        }

        /* only for standard message object */
        if ((config->msgObjCount == 1) && (!gatewaySourceObj))
        {
            /* set single transmit trial FCR.STT if choosen */
            IfxMultican_MsgObj_setSingleTransmitTrial(hwObj, config->control.singleTransmitTrial);

            /* set single data transfer FCR.SDT if choosen */
            IfxMultican_MsgObj_setSingleDataTransfer(hwObj, config->control.singleDataTransfer);
        }
        /* for FIFO (Tx or Rx) base object and gateway objects*/
        else
        {
            /* clear single transmit trial FCR.STT */
            IfxMultican_MsgObj_setSingleTransmitTrial(hwObj, FALSE);

            /* clear single data transfer FCR.SDT */
            IfxMultican_MsgObj_setSingleDataTransfer(hwObj, FALSE);
        }
    }

    {
        /* for standard message object */
        if (config->msgObjCount == 1)
        {
            /* long frame CAN FD */
            if (longFrame)
            {
                /* set bottom pointer FGPR.BOT */
                IfxMultican_MsgObj_setBottomObjectPointer(hwObj, config->control.bottomMsgObjId);

                /* set top pointer FGPR.TOP */
                IfxMultican_MsgObj_setTopObjectPointer(hwObj, config->control.topMsgObjId);
            }
            /* standard gateway transfers */
            else if (gatewaySourceObj)
            {
                /* set (current pointer) FGPR.CUR, to gateway destination object */
                IfxMultican_MsgObj_setCurrentObjectPointer(hwObj, gatewayDstObjId);
            }
            /* standard frame */
            else
            {
                /* clear all pointers */
                IfxMultican_MsgObj_clearFifoGatewayPointers(hwObj);
            }
        }

        /* for FIFO (Tx or Rx) base object and gateway FIFO object */
        else
        {
            /* set bottom pointer FGPR.BOT, to the next message object (first FIFO slave object) */
            IfxMultican_MsgObj_setBottomObjectPointer(hwObj, firstSlaveObjId);

            /* store the first slave object Id as the fifoPointer in msgObj structure for FIFO transfers */
            msgObj->fifoPointer = firstSlaveObjId;

            /* set top pointer FGPR.TOP, to the last FIFO slave object */
            IfxMultican_MsgObj_setTopObjectPointer(hwObj, lastSlaveObjId);

            /* set start of FIFO (current pointer) FGPR.CUR, to first FIFO slave object (bottom pointer) */
            IfxMultican_MsgObj_setCurrentObjectPointer(hwObj, firstSlaveObjId);

            if (receiveFifo || transmitFifo)
            {
                /* set select object pointer FGPR.SEL to one object before last FIFO slave object */
                IfxMultican_MsgObj_setSelectObjectPointer(hwObj, lastSlaveObjId - 1);
            }
        }
    }

    {
        /* for standard, gateway and FIFO (Tx & Rx) base objects  */
        /* set the given acceptance mask */
        IfxMultican_MsgObj_setAcceptanceMask(hwObj, config->acceptanceMask, config->control.extendedFrame);

        /* enable matching ID if choosen */
        IfxMultican_MsgObj_setMatchingId(hwObj, config->control.matchingId);
    }

    {
        /* for standard, gateway  and FIFO (Tx & Rx) base objects  */
        /* set message ID */
        IfxMultican_MsgObj_setMessageId(hwObj, config->messageId, config->control.extendedFrame);

        /* set identifier extension if extended frame is choosen */
        IfxMultican_MsgObj_setIdentifierExtension(hwObj, config->control.extendedFrame);

        /* set filtering priority */
        IfxMultican_MsgObj_setPriorityClass(hwObj, config->priority);
    }

    /* for standard, gateway  and FIFO (Tx & Rx) base objects  */
    /* clear both data registers DATAL and DATAH */
    IfxMultican_MsgObj_clearDataRegisters(hwObj);

    {
        /* for standard, gateway  and FIFO (Tx & Rx) base objects  */
        /* select IPR.RXINP */
        IfxMultican_MsgObj_setReceiveInterruptNodePointer(hwObj, config->rxInterrupt.srcId);

        /* select IPR.TXINP */
        IfxMultican_MsgObj_setTransmitInterruptNodePointer(hwObj, config->txInterrupt.srcId);

        /* set IPR.MNP */
        IfxMultican_MsgObj_setMessagePendingNumber(hwObj, msgObj->msgObjId);
    }

    /* for each receive FIFO slave object */
    if (receiveFifo)
    {
        for (i = 0; i < config->msgObjCount; i++)
        {
            objId = firstSlaveObjId + i; /* increment the message object ID */

            Ifx_CAN_MO *hwSlaveObj = IfxMultican_MsgObj_getPointer(mcanSFR, objId);

            /* clear all RXEN flag */
            IfxMultican_MsgObj_clearStatusFlag(hwSlaveObj, IfxMultican_MsgObjStatusFlag_receiveEnable);

            /* set data length code */
            IfxMultican_MsgObj_setDataLengthCode(hwSlaveObj, config->control.messageLen);

            /* clear DATAL and DATAH registers */
            IfxMultican_MsgObj_clearDataRegisters(hwSlaveObj);
        }
    }

    /* for each transmit FIFO slave object */
    if (transmitFifo)
    {
        /* configure each transmit FIFO slave object as an independent transmit object */
        for (i = 0; i < config->msgObjCount; i++)
        {
            objId = firstSlaveObjId + i; /* increment the message object ID */

            Ifx_CAN_MO *hwSlaveObj = IfxMultican_MsgObj_getPointer(mcanSFR, objId);

            /* set message mode as transmit FIFO slave mode  */
            IfxMultican_MsgObj_setMessageMode(hwSlaveObj, IfxMultican_MsgObjMode_transmitFifoSlave);

            /* point current pointer(FGPR.CUR) back to the base FIFO object */
            IfxMultican_MsgObj_setCurrentObjectPointer(hwSlaveObj, msgObj->msgObjId);

            /* set data length code */
            IfxMultican_MsgObj_setDataLengthCode(hwSlaveObj, config->control.messageLen);

            /* clear DATAL and DATAH registers */
            IfxMultican_MsgObj_clearDataRegisters(hwSlaveObj);

            /* set the given acceptance mask */
            IfxMultican_MsgObj_setAcceptanceMask(hwSlaveObj, config->acceptanceMask, config->control.extendedFrame);

            /* enable matching ID if choosen */
            IfxMultican_MsgObj_setMatchingId(hwSlaveObj, config->control.matchingId);

            /* set message ID */
            IfxMultican_MsgObj_setMessageId(hwSlaveObj, config->messageId, config->control.extendedFrame);

            /* set identifier extension if extended frame is choosen */
            IfxMultican_MsgObj_setIdentifierExtension(hwSlaveObj, config->control.extendedFrame);

            /* set filtering priority */
            IfxMultican_MsgObj_setPriorityClass(hwSlaveObj, config->priority);

            /*  set TXEN0  */
            IfxMultican_MsgObj_setStatusFlag(hwSlaveObj, IfxMultican_MsgObjStatusFlag_transmitEnable0);

            /* clear all TXEN1 flags expect for the slave object in the FGPR.CUR of the base FIFO object */
            if (objId == firstSlaveObjId)
            {
                IfxMultican_MsgObj_setStatusFlag(hwSlaveObj, IfxMultican_MsgObjStatusFlag_transmitEnable1);
            }
            else
            {
                IfxMultican_MsgObj_clearStatusFlag(hwSlaveObj, IfxMultican_MsgObjStatusFlag_transmitEnable1);
            }

            /*  set DIR, in case of transmit frame or remote answer*/
            if ((config->frame == IfxMultican_Frame_transmit) || (config->frame == IfxMultican_Frame_remoteAnswer))
            {
                IfxMultican_MsgObj_setStatusFlag(hwSlaveObj, IfxMultican_MsgObjStatusFlag_messageDirection);
            }
        }
    }

    /* for standard and receive FIFO base objects */
    if (config->frame == IfxMultican_Frame_receive)
    {
        /*  set RTSEL */
        IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_receiveTransmitSelected);

        /* MSGVAL: Set message as valid */
        IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageValid);
    }

    /* for each receive FIFO slave object */
    if (config->msgObjCount > 1)
    {
        IfxMultican_MsgObjId nextFifoObj;

        for (i = 0; i < config->msgObjCount; i++)
        {
            objId = firstSlaveObjId + i;

            Ifx_CAN_MO *hwSlaveObj = IfxMultican_MsgObj_getPointer(mcanSFR, objId);

            /* for receive FIFO and gateway FIFO */
            if (!transmitFifo)
            {
                /* MSGVAL: Set message as valid */
                IfxMultican_MsgObj_setStatusFlag(hwSlaveObj, IfxMultican_MsgObjStatusFlag_messageValid);
            }

            /* for transmit FIFO and receive FIFO */
            if (!gatewayFifo)
            {
                /* store the next FIFO object number in the bottom pointer (FGPR.BOT) of the current FIFO object (for ease of use in transfers)*/
                /* if it is the last FIFO object */
                if (i == (config->msgObjCount - 1))
                {            /* wrap around the FIFO by making the next pointer of last object as the first FIFO object */
                    nextFifoObj = firstSlaveObjId;
                }
                else
                {
                    nextFifoObj = objId + 1;
                }

                IfxMultican_MsgObj_setBottomObjectPointer(hwSlaveObj, nextFifoObj);
            }
        }
    }

    if (gatewaySourceObj)
    {
        /* set FCR.DLCC if chosen*/
        IfxMultican_MsgObj_setDataLengthCodeCopy(hwObj, config->gatewayConfig.copyDataLengthCode);

        /* set FCR.DATC if chosen*/
        IfxMultican_MsgObj_setDataCopy(hwObj, config->gatewayConfig.copyData);

        /* set FCR.IDC if chosen*/
        IfxMultican_MsgObj_setIdentifierCopy(hwObj, config->gatewayConfig.copyId);

        /* set FCR.GDFS if chosen*/
        IfxMultican_MsgObj_setGatewayDataFrameSend(hwObj, config->gatewayConfig.enableTransmit);
    }

    return status;
}


void IfxMultican_Can_MsgObj_initConfig(IfxMultican_Can_MsgObjConfig *config, IfxMultican_Can_Node *node)
{
    //    @$GENTABLE(MsgObjConfig,defaultConfig);

    config->node                             = node;
    config->msgObjId                         = 0;
    config->msgObjCount                      = 1;

    config->control.messageLen               = IfxMultican_DataLengthCode_8;

    config->control.topMsgObjId              = 252;
    config->control.bottomMsgObjId           = 253;
    config->control.fastBitRate              = FALSE; /* fast bit rate enable/disable */

    config->control.extendedFrame            = FALSE;
    config->control.matchingId               = FALSE;
    config->control.singleDataTransfer       = FALSE;
    config->control.singleTransmitTrial      = FALSE;
    config->acceptanceMask                   = 0x7FFFFFFFUL;
    config->messageId                        = 0;

    config->frame                            = IfxMultican_Frame_receive;
    config->priority                         = IfxMultican_Priority_CAN_ID;
    config->rxInterrupt.enabled              = FALSE;
    config->rxInterrupt.srcId                = 0;
    config->txInterrupt.enabled              = FALSE;
    config->txInterrupt.srcId                = 0;

    config->firstSlaveObjId                  = 0;

    config->gatewayTransfers                 = FALSE;
    config->gatewayConfig.copyDataLengthCode = TRUE;
    config->gatewayConfig.copyData           = TRUE;
    config->gatewayConfig.copyId             = TRUE;
    config->gatewayConfig.enableTransmit     = TRUE;
    config->gatewayConfig.gatewayDstObjId    = 0;
}


boolean IfxMultican_Can_MsgObj_isRxPending(IfxMultican_Can_MsgObj *msgObj)
{
    if (msgObj->msgObjCount > 1)
    {
        Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->fifoPointer);
        return IfxMultican_MsgObj_isRxPending(hwObj);
    }
    else
    {
        Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);
        return IfxMultican_MsgObj_isRxPending(hwObj);
    }
}


boolean IfxMultican_Can_MsgObj_isTransmitRequested(IfxMultican_Can_MsgObj *msgObj)
{
    if (msgObj->msgObjCount > 1)
    {
        Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->fifoPointer);

        return IfxMultican_MsgObj_isTransmitRequested(hwObj);
    }
    else
    {
        Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

        return IfxMultican_MsgObj_isTransmitRequested(hwObj);
    }
}


boolean IfxMultican_Can_MsgObj_isTxPending(IfxMultican_Can_MsgObj *msgObj)
{
    if (msgObj->msgObjCount > 1)
    {
        Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->fifoPointer);

        return IfxMultican_MsgObj_isTxPending(hwObj);
    }
    else
    {
        Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

        return IfxMultican_MsgObj_isTxPending(hwObj);
    }
}


IfxMultican_Status IfxMultican_Can_MsgObj_readMessage(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Message *msg)
{
    IfxMultican_Status   status = IfxMultican_Status_ok;
    IfxMultican_MsgObjId objId;

    if (msgObj->msgObjCount > 1)
    {
        /* for FIFO message Objects */
        objId = msgObj->fifoPointer;
    }
    else
    {
        /* for standard message Objects */
        objId = msgObj->msgObjId;
    }

    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, objId);

    /* clear pending flag */
    IfxMultican_MsgObj_clearRxPending(hwObj);

    /* read the message object */
    status = IfxMultican_MsgObj_readMessage(hwObj, msg);

    /* if successfull: */
    if (status & IfxMultican_Status_newData)
    {
        if (msgObj->msgObjCount > 1)
        {
            /* set next message object(MOSTAT.PNEXT) of the current object as the next txFIFO slave object */
            msgObj->fifoPointer = IfxMultican_MsgObj_getBottomObjectPointer(hwObj);
        }
        else
        {}
    }

    return status;
}


IfxMultican_Status IfxMultican_Can_MsgObj_sendMessage(IfxMultican_Can_MsgObj *msgObj, const IfxMultican_Message *msg)
{
    IfxMultican_Status   status = IfxMultican_Status_ok;
    IfxMultican_MsgObjId objId;

    if (msgObj->msgObjCount > 1)
    {
        /* for FIFO message Objects */
        objId = msgObj->fifoPointer;

        Ifx_CAN_MO *hwBaseObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

        /* set message as valid, in case of FIFO MSGVAL of base object has to be set before setting it to each slave object */
        IfxMultican_MsgObj_setStatusFlag(hwBaseObj, IfxMultican_MsgObjStatusFlag_messageValid);
    }
    else
    {
        /* for standard message Objects */
        objId = msgObj->msgObjId;
    }

    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, objId);

    /* send the message */
    status = IfxMultican_MsgObj_sendMessage(hwObj, msg);

    /* if successfull: */
    if (status == IfxMultican_Status_ok)
    {
        if (msgObj->msgObjCount > 1)
        {
            /* set next message object(MOSTAT.PNEXT) of the current object as the next txFIFO slave object */
            msgObj->fifoPointer = IfxMultican_MsgObj_getBottomObjectPointer(hwObj);
        }
        else
        {}
    }

    return status;
}


void IfxMultican_Can_Node_getConfig(IfxMultican_Can_Node *node, IfxMultican_Can_NodeConfig *config)
{
    Ifx_CAN_N      *hwNode = node->node;

    IfxMultican_Can mcan;

    mcan.mcan = node->mcan;

    float32         fcan = IfxMultican_Can_getModuleFrequency(&mcan);

    IfxMultican_calcTimingFromBTR(fcan, hwNode->BTR.U, &config->baudrate, &config->samplePoint, &config->synchJumpWidth);

    config->loopBackMode = (hwNode->PCR.B.LBM != 0) ? TRUE : FALSE;
    config->analyzerMode = (hwNode->CR.B.CALM != 0) ? TRUE : FALSE;

    //config->rxPin; // TODO
    //config->txPin; // TODO
}


IfxMultican_Status IfxMultican_Can_Node_init(IfxMultican_Can_Node *node, const IfxMultican_Can_NodeConfig *config)
{
    Ifx_CAN_N         *hwNode = IfxMultican_Node_getPointer(config->module, config->nodeId);
    IfxMultican_Status status = IfxMultican_Status_ok;

    node->mcan     = config->module;
    node->node     = hwNode;
    node->nodeId   = config->nodeId;
    node->fastNode = FALSE;

    {                                                  /* Configure node control */
        IfxMultican_Node_resetControlRegister(hwNode); // default value 0x00000041
        IfxMultican_Node_setTransferInterrupt(hwNode, config->transferInterrupt.enabled);
        IfxMultican_Node_setLastErrorCodeInterrupt(hwNode, config->lastErrorCodeInterrupt.enabled);
        IfxMultican_Node_setAlertInterrupt(hwNode, config->alertInterrupt.enabled);
        IfxMultican_Node_setAnalyzerMode(hwNode, config->analyzerMode);
        IfxMultican_Node_activate(hwNode);
    }

    {                                                    /* Configure the interrupt source to service request node */
        IfxMultican_Node_resetInterruptPointers(hwNode); // default value 0x00000041
        IfxMultican_Node_setTransferInterruptPointer(hwNode, config->transferInterrupt.srcId);
        IfxMultican_Node_setLastErrorCodeInterruptPointer(hwNode, config->lastErrorCodeInterrupt.srcId);
        IfxMultican_Node_setAlertInterruptPointer(hwNode, config->alertInterrupt.srcId);
        IfxMultican_Node_setFrameCounterInterruptPointer(hwNode, config->frameCounterInterrupt.srcId);
        IfxMultican_Node_setTimerEventInterruptPointer(hwNode, config->timerInterrupt.srcId);
    }

    {                           /* NECNT write enabled only of NCR.CCE set */
        IfxMultican_Node_resetErrorCounters(hwNode);
        IfxMultican_Node_setReceiveErrorCounter(hwNode, 0);
        IfxMultican_Node_setTransmitErrorCounter(hwNode, 0);
        IfxMultican_Node_setErrorWarningLevel(hwNode, config->errorWarningLevel);
    }

    {                           /* NPCR write enabled only of NCR.CCE set */
        IfxMultican_Node_setLoopBackMode(hwNode, config->loopBackMode);

        if (config->txPin != NULL_PTR)
        {
            status |= (IfxMultican_Node_initTxPin(hwNode, config->txPin, config->txPinMode, config->pinDriver) ? IfxMultican_Status_ok : IfxMultican_Status_wrongPin);
        }

        if (config->rxPin != NULL_PTR)
        {
            status |= (IfxMultican_Node_initRxPin(hwNode, config->rxPin, config->rxPinMode, config->pinDriver) ? IfxMultican_Status_ok : IfxMultican_Status_wrongPin);
        }
    }

    {
        IfxMultican_Can mcan;
        mcan.mcan = node->mcan;

        float32         fcan = IfxMultican_Can_getModuleFrequency(&mcan);

        if (!config->flexibleDataRate)
        {
            IfxMultican_Node_setBitTiming(hwNode, fcan, config->baudrate, config->samplePoint, config->synchJumpWidth);
        }
        else
        {
            IfxMultican_Node_setFastNode(hwNode, TRUE);
            node->fastNode = TRUE;

            IfxMultican_Node_setNominalBitTiming(hwNode, fcan, config->fdConfig.nominalBaudrate, config->fdConfig.nominalSamplePoint, config->fdConfig.nominalSynchJumpWidth);
            IfxMultican_Node_setFastBitTiming(hwNode, fcan, config->fdConfig.fastBaudrate, config->fdConfig.fastSamplePoint, config->fdConfig.fastSynchJumpWidth);

            if (config->fdConfig.loopDelayOffset)
            {
                IfxMultican_Node_setTransceiverDelayCompensationOffset(hwNode, config->fdConfig.loopDelayOffset);
                IfxMultican_Node_setTransceiverDelayCompensation(hwNode, TRUE);
            }
        }
    }

    {                           /* Configuration of the Frame Counter */
        IfxMultican_Node_setFrameCounterMode(hwNode, IfxMultican_FrameCounterMode_timeStampMode);
        IfxMultican_Node_setFrameCounterInterrupt(hwNode, config->frameCounterInterrupt.enabled);
    }

    IfxMultican_Node_disableConfigurationChange(hwNode);
    /* Configuration of the TTCAN Functionality: Not implemented */

    return status;
}


void IfxMultican_Can_Node_initConfig(IfxMultican_Can_NodeConfig *config, IfxMultican_Can *mcan)
{
    config->module                         = mcan->mcan;

    config->nodeId                         = IfxMultican_NodeId_0;

    config->loopBackMode                   = FALSE;
    config->analyzerMode                   = FALSE;

    config->baudrate                       = 500000;
    config->samplePoint                    = 8000;
    config->synchJumpWidth                 = 2000;

    config->flexibleDataRate               = FALSE;

    config->fdConfig.nominalBaudrate       = 500000;
    config->fdConfig.nominalSynchJumpWidth = 2000;
    config->fdConfig.nominalSamplePoint    = 8000;
    config->fdConfig.fastBaudrate          = 1000000;
    config->fdConfig.fastSynchJumpWidth    = 2000;
    config->fdConfig.fastSamplePoint       = 8000;
    config->fdConfig.loopDelayOffset       = 0;

    config->rxPin                          = NULL_PTR;
    config->rxPinMode                      = IfxPort_InputMode_pullUp;
    config->txPin                          = NULL_PTR;
    config->txPinMode                      = IfxPort_OutputMode_pushPull;
    config->pinDriver                      = IfxPort_PadDriver_cmosAutomotiveSpeed2; //previously hardcoded as this value for Tx pins.Now pad driver option is being given in IfxMultican_Node_initRxPin() and IfxMultican_Node_initTxPin()

    config->transferInterrupt.enabled      = FALSE;
    config->transferInterrupt.srcId        = 0;

    config->lastErrorCodeInterrupt.enabled = FALSE;
    config->lastErrorCodeInterrupt.srcId   = 0;

    config->alertInterrupt.enabled         = FALSE;
    config->alertInterrupt.srcId           = 0;

    config->frameCounterInterrupt.enabled  = FALSE;
    config->frameCounterInterrupt.srcId    = 0;

    config->timerInterrupt.enabled         = FALSE;
    config->timerInterrupt.srcId           = 0;

    config->errorWarningLevel              = 96;
}


void IfxMultican_Can_Node_sendToBusOff(IfxMultican_Can_Node *node)
{
    uint32 i, counter;

    for (counter = 1; counter < 256; counter = counter * 2)
    {
        node->node->ECNT.B.TEC = counter;
    }

    for (i = 0; i < 10; ++i)
    {
        node->node->ECNT.B.TEC = ++counter;
    }
}


void IfxMultican_Can_getConfig(IfxMultican_Can *mcan, IfxMultican_Can_Config *config)
{
    config->clockSelect = IfxMultican_getInputClock(mcan->mcan);

    if (config->clockSelect == IfxMultican_ClockSelect_fclc)
    {
        float32 fcan        = IfxScuCcu_getCanFrequency();

        uint16  dividerMode = IfxMultican_getFractionalDividerMode(mcan->mcan);
        uint16  stepValue   = IfxMultican_getFractionalDividerStepValue(mcan->mcan);

        if (dividerMode == 1)
        {
            config->moduleFreq = fcan / (1024 - stepValue);
        }
        else if (dividerMode == 2)
        {
            config->moduleFreq = (fcan * stepValue) / 1024;
        }
        else
        {
            config->moduleFreq = 0;
        }
    }
    else if (config->clockSelect == IfxMultican_ClockSelect_fosc0)
    {
        config->moduleFreq = IfxScuCcu_getOsc0Frequency();
    }
    else if (config->clockSelect == IfxMultican_ClockSelect_fErayPll)
    {
        config->moduleFreq = IfxScuCcu_getPllErayFrequency();
    }
    else
    {
        config->moduleFreq = 0.0;
    }
}


float32 IfxMultican_Can_getModuleFrequency(IfxMultican_Can *mcan)
{
    IfxMultican_Can_Config config;

    IfxMultican_Can_getConfig(mcan, &config);

    return config.moduleFreq;
}


IfxMultican_Status IfxMultican_Can_initModule(IfxMultican_Can *mcan, const IfxMultican_Can_Config *config)
{
    Ifx_CAN *mcanSFR = config->module;

    mcan->mcan = mcanSFR;

    uint16   stepValue, dividerMode, i;

    /* currently supports only fclc */
    if (config->clockSelect == IfxMultican_ClockSelect_fclc)
    {
        {
            uint16  stepN, stepF;
            boolean normalDiv;
            float32 freqN, freqF;

            float32 fsys = IfxScuCcu_getSpbFrequency();

            /* Normal divider mode */
            stepN = (uint16)__minf(__maxf(0, 1024.0 - (fsys / config->moduleFreq)), 1023);
            freqN = fsys / (1024 - stepN);

            /* Fractional divider mode */
            stepF       = (uint16)__minf(((config->moduleFreq * 1024) / fsys), 1023);
            freqF       = (fsys * stepF) / 1024;

            normalDiv   = (__absf(config->moduleFreq - freqN) <= __absf(config->moduleFreq - freqF));

            stepValue   = (normalDiv != 0) ? stepN : stepF;
            dividerMode = (normalDiv != 0) ? 1 : 2;
        }

        uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
        IfxScuWdt_clearCpuEndinit(passwd);

        /* Enable module, disregard Sleep Mode request */
        IfxMultican_enableModule(mcanSFR);
        IfxMultican_disableSleepMode(mcanSFR);

        /* Wait until module is enabled */
        while (IfxMultican_isModuleEnabled(mcanSFR) == FALSE)
        {}

        /* Select the clock input, two writes to the CLKSEL are always necessary */
        IfxMultican_setInputClock(mcanSFR, IfxMultican_ClockSelect_noClock);
        IfxMultican_setInputClock(mcanSFR, IfxMultican_ClockSelect_fclc); /* Selects Fclc = Fspb */

        IfxMultican_setFractionalDividerStepValue(mcanSFR, stepValue);
        IfxMultican_setFractionalDividerMode(mcanSFR, dividerMode);
        IfxScuWdt_setCpuEndinit(passwd);
    }
    else
    {}

    IfxMultican_waitListReady(mcan->mcan);

#if 0
    // TODO

    /* deinitialise all nodes */
    {
        for (i = 0; i < IFXMULTICAN_NUM_NODES; i++)
        {
            IfxMultican_Node_deinit(mcan, IfxMultican_NodeId_0 + i);
        }
    }

    /* deinitialise all message objects */
    for (i = 0; i < IFXMULTICAN_NUM_MESSAGE_OBJECTS; i++)
    {
        IfxMultican_MsgObj_deinit(mcan, i);
    }

#endif

    /* deinitialise all pending bits */
    for (i = 0; i < 8; i++)
    {
        IfxMultican_clearPendingMessageNotification(mcanSFR, i);
    }

    /* The position is simply given by the message pending number MPN */
    IfxMultican_clearMessagePendingSeletor(mcanSFR);

    /* All MO contribute to the calculation of the Message index */
    IfxMultican_setMessageIndexMask(mcanSFR, 0xFFFFFFFF);

    /* Configure interrupt node pointers */
    IfxMultican_SrcId srcId;

    for (srcId = 0; srcId < IFXMULTICAN_NUM_SRC; srcId++)
    {
        volatile Ifx_SRC_SRCR *srcPointer = IfxMultican_getSrcPointer(mcanSFR, srcId);
        IfxSrc_init(srcPointer, config->nodePointer[srcId].typeOfService, config->nodePointer[srcId].priority);

        if (config->nodePointer[srcId].priority)
        {
        	i = config->nodePointer[srcId].priority;
            IfxSrc_enable(srcPointer);
        }
        else
        {
        	i = config->nodePointer[srcId].priority;
            IfxSrc_disable(srcPointer);
        }
    }

    return IfxMultican_Status_ok;
}


void IfxMultican_Can_initModuleConfig(IfxMultican_Can_Config *config, Ifx_CAN *mcan)
{
    IfxMultican_SrcId srcId;
    /** - take over module pointer */
    config->module = mcan;

    /** - Selected input clock is from CLC */
    config->clockSelect = IfxMultican_ClockSelect_fclc;

    /** - Module frequency is fSPB */
    config->moduleFreq = IfxScuCcu_getSpbFrequency();

    for (srcId = 0; srcId < IFXMULTICAN_NUM_SRC; srcId++)
    {
        config->nodePointer[srcId].priority      = 0;
        config->nodePointer[srcId].typeOfService = IfxSrc_Tos_cpu0;
    }
}