/**
 * \file IfxQspi_PinMap.c
 * \brief QSPI I/O map
 * \ingroup IfxLld_Qspi
 *
 * \version iLLD_1_0_1_7_0
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
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

#include "IfxQspi_PinMap.h"

IfxQspi_Mrst_In IfxQspi0_MRSTA_P20_12_IN = {&MODULE_QSPI0, {&MODULE_P20,12}, Ifx_RxSel_a};
IfxQspi_Mrst_In IfxQspi0_MRSTB_P22_9_IN = {&MODULE_QSPI0, {&MODULE_P22, 9}, Ifx_RxSel_b};
IfxQspi_Mrst_In IfxQspi0_MRSTC_P22_6_IN = {&MODULE_QSPI0, {&MODULE_P22, 6}, Ifx_RxSel_c};
IfxQspi_Mrst_In IfxQspi1_MRSTA_P10_1_IN = {&MODULE_QSPI1, {&MODULE_P10, 1}, Ifx_RxSel_a};
IfxQspi_Mrst_In IfxQspi1_MRSTB_P11_3_IN = {&MODULE_QSPI1, {&MODULE_P11, 3}, Ifx_RxSel_b};
IfxQspi_Mrst_In IfxQspi2_MRSTA_P15_4_IN = {&MODULE_QSPI2, {&MODULE_P15, 4}, Ifx_RxSel_a};
IfxQspi_Mrst_In IfxQspi2_MRSTB_P15_7_IN = {&MODULE_QSPI2, {&MODULE_P15, 7}, Ifx_RxSel_b};
IfxQspi_Mrst_In IfxQspi2_MRSTCN_P21_2_IN = {&MODULE_QSPI2, {&MODULE_P21, 2}, Ifx_RxSel_c};
IfxQspi_Mrst_In IfxQspi2_MRSTCP_P21_3_IN = {&MODULE_QSPI2, {&MODULE_P21, 3}, Ifx_RxSel_c};
IfxQspi_Mrst_In IfxQspi2_MRSTD_P34_4_IN = {&MODULE_QSPI2, {&MODULE_P34, 4}, Ifx_RxSel_d};
IfxQspi_Mrst_In IfxQspi2_MRSTE_P15_2_IN = {&MODULE_QSPI2, {&MODULE_P15, 2}, Ifx_RxSel_e};
IfxQspi_Mrst_In IfxQspi3_MRSTA_P02_5_IN = {&MODULE_QSPI3, {&MODULE_P02, 5}, Ifx_RxSel_a};
IfxQspi_Mrst_In IfxQspi3_MRSTB_P10_7_IN = {&MODULE_QSPI3, {&MODULE_P10, 7}, Ifx_RxSel_b};
IfxQspi_Mrst_In IfxQspi3_MRSTC_P01_5_IN = {&MODULE_QSPI3, {&MODULE_P01, 5}, Ifx_RxSel_c};
IfxQspi_Mrst_In IfxQspi3_MRSTD_P33_13_IN = {&MODULE_QSPI3, {&MODULE_P33,13}, Ifx_RxSel_d};
IfxQspi_Mrst_In IfxQspi3_MRSTE_P22_1_IN = {&MODULE_QSPI3, {&MODULE_P22, 1}, Ifx_RxSel_e};
IfxQspi_Mrst_In IfxQspi3_MRSTFN_P21_2_IN = {&MODULE_QSPI3, {&MODULE_P21, 2}, Ifx_RxSel_f};
IfxQspi_Mrst_In IfxQspi3_MRSTFP_P21_3_IN = {&MODULE_QSPI3, {&MODULE_P21, 3}, Ifx_RxSel_f};
IfxQspi_Mrst_Out IfxQspi0_MRST_P20_12_OUT = {&MODULE_QSPI0, {&MODULE_P20,12}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi0_MRST_P22_6_OUT = {&MODULE_QSPI0, {&MODULE_P22, 6}, IfxPort_OutputIdx_alt4};
IfxQspi_Mrst_Out IfxQspi0_MRST_P22_9_OUT = {&MODULE_QSPI0, {&MODULE_P22, 9}, IfxPort_OutputIdx_alt4};
IfxQspi_Mrst_Out IfxQspi1_MRST_P10_1_OUT = {&MODULE_QSPI1, {&MODULE_P10, 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi1_MRST_P10_6_OUT = {&MODULE_QSPI1, {&MODULE_P10, 6}, IfxPort_OutputIdx_alt6};
IfxQspi_Mrst_Out IfxQspi1_MRST_P11_3_OUT = {&MODULE_QSPI1, {&MODULE_P11, 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi2_MRST_P15_4_OUT = {&MODULE_QSPI2, {&MODULE_P15, 4}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi2_MRST_P15_7_OUT = {&MODULE_QSPI2, {&MODULE_P15, 7}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi2_MRST_P34_4_OUT = {&MODULE_QSPI2, {&MODULE_P34, 4}, IfxPort_OutputIdx_alt4};
IfxQspi_Mrst_Out IfxQspi3_MRST_P01_5_OUT = {&MODULE_QSPI3, {&MODULE_P01, 5}, IfxPort_OutputIdx_alt4};
IfxQspi_Mrst_Out IfxQspi3_MRST_P02_5_OUT = {&MODULE_QSPI3, {&MODULE_P02, 5}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi3_MRST_P10_7_OUT = {&MODULE_QSPI3, {&MODULE_P10, 7}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi3_MRST_P22_1_OUT = {&MODULE_QSPI3, {&MODULE_P22, 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Mrst_Out IfxQspi3_MRST_P33_13_OUT = {&MODULE_QSPI3, {&MODULE_P33,13}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_In IfxQspi0_MTSRA_P20_14_IN = {&MODULE_QSPI0, {&MODULE_P20,14}, Ifx_RxSel_a};
IfxQspi_Mtsr_In IfxQspi0_MTSRB_P22_10_IN = {&MODULE_QSPI0, {&MODULE_P22,10}, Ifx_RxSel_b};
IfxQspi_Mtsr_In IfxQspi0_MTSRC_P22_5_IN = {&MODULE_QSPI0, {&MODULE_P22, 5}, Ifx_RxSel_c};
IfxQspi_Mtsr_In IfxQspi1_MTSRA_P10_3_IN = {&MODULE_QSPI1, {&MODULE_P10, 3}, Ifx_RxSel_a};
IfxQspi_Mtsr_In IfxQspi1_MTSRB_P11_9_IN = {&MODULE_QSPI1, {&MODULE_P11, 9}, Ifx_RxSel_b};
IfxQspi_Mtsr_In IfxQspi1_MTSRC_P10_4_IN = {&MODULE_QSPI1, {&MODULE_P10, 4}, Ifx_RxSel_c};
IfxQspi_Mtsr_In IfxQspi2_MTSRA_P15_5_IN = {&MODULE_QSPI2, {&MODULE_P15, 5}, Ifx_RxSel_a};
IfxQspi_Mtsr_In IfxQspi2_MTSRB_P15_6_IN = {&MODULE_QSPI2, {&MODULE_P15, 6}, Ifx_RxSel_b};
IfxQspi_Mtsr_In IfxQspi2_MTSRD_P34_5_IN = {&MODULE_QSPI2, {&MODULE_P34, 5}, Ifx_RxSel_d};
IfxQspi_Mtsr_In IfxQspi3_MTSRA_P02_6_IN = {&MODULE_QSPI3, {&MODULE_P02, 6}, Ifx_RxSel_a};
IfxQspi_Mtsr_In IfxQspi3_MTSRB_P10_6_IN = {&MODULE_QSPI3, {&MODULE_P10, 6}, Ifx_RxSel_b};
IfxQspi_Mtsr_In IfxQspi3_MTSRC_P01_6_IN = {&MODULE_QSPI3, {&MODULE_P01, 6}, Ifx_RxSel_c};
IfxQspi_Mtsr_In IfxQspi3_MTSRD_P33_12_IN = {&MODULE_QSPI3, {&MODULE_P33,12}, Ifx_RxSel_d};
IfxQspi_Mtsr_In IfxQspi3_MTSRE_P22_0_IN = {&MODULE_QSPI3, {&MODULE_P22, 0}, Ifx_RxSel_e};
IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_12_OUT = {&MODULE_QSPI0, {&MODULE_P20,12}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_14_OUT = {&MODULE_QSPI0, {&MODULE_P20,14}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi0_MTSR_P22_10_OUT = {&MODULE_QSPI0, {&MODULE_P22,10}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi0_MTSR_P22_5_OUT = {&MODULE_QSPI0, {&MODULE_P22, 5}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_1_OUT = {&MODULE_QSPI1, {&MODULE_P10, 1}, IfxPort_OutputIdx_alt2};
IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_3_OUT = {&MODULE_QSPI1, {&MODULE_P10, 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_4_OUT = {&MODULE_QSPI1, {&MODULE_P10, 4}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi1_MTSR_P11_9_OUT = {&MODULE_QSPI1, {&MODULE_P11, 9}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi2_MTSRN_P13_2_OUT = {&MODULE_QSPI2, {&MODULE_P13, 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi2_MTSRP_P13_3_OUT = {&MODULE_QSPI2, {&MODULE_P13, 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_5_OUT = {&MODULE_QSPI2, {&MODULE_P15, 5}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_6_OUT = {&MODULE_QSPI2, {&MODULE_P15, 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi2_MTSR_P34_5_OUT = {&MODULE_QSPI2, {&MODULE_P34, 5}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi3_MTSRN_P22_2_OUT = {&MODULE_QSPI3, {&MODULE_P22, 2}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi3_MTSRP_P22_3_OUT = {&MODULE_QSPI3, {&MODULE_P22, 3}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi3_MTSR_P01_6_OUT = {&MODULE_QSPI3, {&MODULE_P01, 6}, IfxPort_OutputIdx_alt4};
IfxQspi_Mtsr_Out IfxQspi3_MTSR_P02_6_OUT = {&MODULE_QSPI3, {&MODULE_P02, 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi3_MTSR_P10_6_OUT = {&MODULE_QSPI3, {&MODULE_P10, 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi3_MTSR_P22_0_OUT = {&MODULE_QSPI3, {&MODULE_P22, 0}, IfxPort_OutputIdx_alt3};
IfxQspi_Mtsr_Out IfxQspi3_MTSR_P33_12_OUT = {&MODULE_QSPI3, {&MODULE_P33,12}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_In IfxQspi0_SCLKA_P20_11_IN = {&MODULE_QSPI0, {&MODULE_P20,11}, Ifx_RxSel_a};
IfxQspi_Sclk_In IfxQspi0_SCLKB_P22_8_IN = {&MODULE_QSPI0, {&MODULE_P22, 8}, Ifx_RxSel_b};
IfxQspi_Sclk_In IfxQspi0_SCLKC_P22_7_IN = {&MODULE_QSPI0, {&MODULE_P22, 7}, Ifx_RxSel_c};
IfxQspi_Sclk_In IfxQspi1_SCLKA_P10_2_IN = {&MODULE_QSPI1, {&MODULE_P10, 2}, Ifx_RxSel_a};
IfxQspi_Sclk_In IfxQspi1_SCLKB_P11_6_IN = {&MODULE_QSPI1, {&MODULE_P11, 6}, Ifx_RxSel_b};
IfxQspi_Sclk_In IfxQspi2_SCLKA_P15_3_IN = {&MODULE_QSPI2, {&MODULE_P15, 3}, Ifx_RxSel_a};
IfxQspi_Sclk_In IfxQspi2_SCLKB_P15_8_IN = {&MODULE_QSPI2, {&MODULE_P15, 8}, Ifx_RxSel_b};
IfxQspi_Sclk_In IfxQspi2_SCLKD_P33_14_IN = {&MODULE_QSPI2, {&MODULE_P33,14}, Ifx_RxSel_d};
IfxQspi_Sclk_In IfxQspi3_SCLKA_P02_7_IN = {&MODULE_QSPI3, {&MODULE_P02, 7}, Ifx_RxSel_a};
IfxQspi_Sclk_In IfxQspi3_SCLKB_P10_8_IN = {&MODULE_QSPI3, {&MODULE_P10, 8}, Ifx_RxSel_b};
IfxQspi_Sclk_In IfxQspi3_SCLKC_P01_7_IN = {&MODULE_QSPI3, {&MODULE_P01, 7}, Ifx_RxSel_c};
IfxQspi_Sclk_In IfxQspi3_SCLKD_P33_11_IN = {&MODULE_QSPI3, {&MODULE_P33,11}, Ifx_RxSel_d};
IfxQspi_Sclk_In IfxQspi3_SCLKE_P22_3_IN = {&MODULE_QSPI3, {&MODULE_P22, 3}, Ifx_RxSel_e};
IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_11_OUT = {&MODULE_QSPI0, {&MODULE_P20,11}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_13_OUT = {&MODULE_QSPI0, {&MODULE_P20,13}, IfxPort_OutputIdx_alt5};
IfxQspi_Sclk_Out IfxQspi0_SCLK_P22_7_OUT = {&MODULE_QSPI0, {&MODULE_P22, 7}, IfxPort_OutputIdx_alt4};
IfxQspi_Sclk_Out IfxQspi0_SCLK_P22_8_OUT = {&MODULE_QSPI0, {&MODULE_P22, 8}, IfxPort_OutputIdx_alt4};
IfxQspi_Sclk_Out IfxQspi1_SCLK_P10_2_OUT = {&MODULE_QSPI1, {&MODULE_P10, 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi1_SCLK_P11_6_OUT = {&MODULE_QSPI1, {&MODULE_P11, 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi2_SCLKN_P13_0_OUT = {&MODULE_QSPI2, {&MODULE_P13, 0}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi2_SCLKP_P13_1_OUT = {&MODULE_QSPI2, {&MODULE_P13, 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_3_OUT = {&MODULE_QSPI2, {&MODULE_P15, 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_6_OUT = {&MODULE_QSPI2, {&MODULE_P15, 6}, IfxPort_OutputIdx_alt5};
IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_8_OUT = {&MODULE_QSPI2, {&MODULE_P15, 8}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi2_SCLK_P33_14_OUT = {&MODULE_QSPI2, {&MODULE_P33,14}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi3_SCLKN_P22_0_OUT = {&MODULE_QSPI3, {&MODULE_P22, 0}, IfxPort_OutputIdx_alt4};
IfxQspi_Sclk_Out IfxQspi3_SCLKP_P22_1_OUT = {&MODULE_QSPI3, {&MODULE_P22, 1}, IfxPort_OutputIdx_alt4};
IfxQspi_Sclk_Out IfxQspi3_SCLK_P01_7_OUT = {&MODULE_QSPI3, {&MODULE_P01, 7}, IfxPort_OutputIdx_alt4};
IfxQspi_Sclk_Out IfxQspi3_SCLK_P02_7_OUT = {&MODULE_QSPI3, {&MODULE_P02, 7}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi3_SCLK_P10_8_OUT = {&MODULE_QSPI3, {&MODULE_P10, 8}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi3_SCLK_P22_3_OUT = {&MODULE_QSPI3, {&MODULE_P22, 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Sclk_Out IfxQspi3_SCLK_P33_11_OUT = {&MODULE_QSPI3, {&MODULE_P33,11}, IfxPort_OutputIdx_alt3};
IfxQspi_Slsi_In IfxQspi0_SLSIA_P20_13_IN = {&MODULE_QSPI0, {&MODULE_P20,13}, Ifx_RxSel_a};
IfxQspi_Slsi_In IfxQspi0_SLSIB_P20_9_IN = {&MODULE_QSPI0, {&MODULE_P20, 9}, Ifx_RxSel_b};
IfxQspi_Slsi_In IfxQspi1_SLSIA_P11_10_IN = {&MODULE_QSPI1, {&MODULE_P11,10}, Ifx_RxSel_a};
IfxQspi_Slsi_In IfxQspi2_SLSIA_P15_2_IN = {&MODULE_QSPI2, {&MODULE_P15, 2}, Ifx_RxSel_a};
IfxQspi_Slsi_In IfxQspi2_SLSIB_P15_1_IN = {&MODULE_QSPI2, {&MODULE_P15, 1}, Ifx_RxSel_b};
IfxQspi_Slsi_In IfxQspi3_SLSIA_P02_4_IN = {&MODULE_QSPI3, {&MODULE_P02, 4}, Ifx_RxSel_a};
IfxQspi_Slsi_In IfxQspi3_SLSIB_P01_3_IN = {&MODULE_QSPI3, {&MODULE_P01, 3}, Ifx_RxSel_b};
IfxQspi_Slsi_In IfxQspi3_SLSIC_P33_10_IN = {&MODULE_QSPI3, {&MODULE_P33,10}, Ifx_RxSel_c};
IfxQspi_Slsi_In IfxQspi3_SLSID_P22_2_IN = {&MODULE_QSPI3, {&MODULE_P22, 2}, Ifx_RxSel_d};
IfxQspi_Slso_Out IfxQspi0_SLSO0_P20_8_OUT = {&MODULE_QSPI0, 0, {&MODULE_P20, 8}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO10_P22_11_OUT = {&MODULE_QSPI0, 10, {&MODULE_P22,11}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi0_SLSO11_P23_6_OUT = {&MODULE_QSPI0, 11, {&MODULE_P23, 6}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi0_SLSO12_P22_4_OUT = {&MODULE_QSPI0, 12, {&MODULE_P22, 4}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi0_SLSO13_P15_0_OUT = {&MODULE_QSPI0, 13, {&MODULE_P15, 0}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO1_P20_9_OUT = {&MODULE_QSPI0, 1, {&MODULE_P20, 9}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO2_P20_13_OUT = {&MODULE_QSPI0, 2, {&MODULE_P20,13}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO3_P11_10_OUT = {&MODULE_QSPI0, 3, {&MODULE_P11,10}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO4_P11_11_OUT = {&MODULE_QSPI0, 4, {&MODULE_P11,11}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO5_P11_2_OUT = {&MODULE_QSPI0, 5, {&MODULE_P11, 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO6_P20_10_OUT = {&MODULE_QSPI0, 6, {&MODULE_P20,10}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO7_P33_5_OUT = {&MODULE_QSPI0, 7, {&MODULE_P33, 5}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi0_SLSO8_P20_6_OUT = {&MODULE_QSPI0, 8, {&MODULE_P20, 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi0_SLSO9_P20_3_OUT = {&MODULE_QSPI0, 9, {&MODULE_P20, 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi1_SLSO0_P20_8_OUT = {&MODULE_QSPI1, 0, {&MODULE_P20, 8}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO10_P10_0_OUT = {&MODULE_QSPI1, 10, {&MODULE_P10, 0}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi1_SLSO1_P20_9_OUT = {&MODULE_QSPI1, 1, {&MODULE_P20, 9}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO2_P20_13_OUT = {&MODULE_QSPI1, 2, {&MODULE_P20,13}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO3_P11_10_OUT = {&MODULE_QSPI1, 3, {&MODULE_P11,10}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO4_P11_11_OUT = {&MODULE_QSPI1, 4, {&MODULE_P11,11}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO5_P11_2_OUT = {&MODULE_QSPI1, 5, {&MODULE_P11, 2}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi1_SLSO6_P33_10_OUT = {&MODULE_QSPI1, 6, {&MODULE_P33,10}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi1_SLSO7_P33_5_OUT = {&MODULE_QSPI1, 7, {&MODULE_P33, 5}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi1_SLSO8_P10_4_OUT = {&MODULE_QSPI1, 8, {&MODULE_P10, 4}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi1_SLSO9_P10_5_OUT = {&MODULE_QSPI1, 9, {&MODULE_P10, 5}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO0_P15_2_OUT = {&MODULE_QSPI2, 0, {&MODULE_P15, 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO10_P34_3_OUT = {&MODULE_QSPI2, 10, {&MODULE_P34, 3}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO11_P33_15_OUT = {&MODULE_QSPI2, 11, {&MODULE_P33,15}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO12_P32_6_OUT = {&MODULE_QSPI2, 12, {&MODULE_P32, 6}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO1_P14_2_OUT = {&MODULE_QSPI2, 1, {&MODULE_P14, 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO2_P14_6_OUT = {&MODULE_QSPI2, 2, {&MODULE_P14, 6}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO3_P14_3_OUT = {&MODULE_QSPI2, 3, {&MODULE_P14, 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO4_P14_7_OUT = {&MODULE_QSPI2, 4, {&MODULE_P14, 7}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO5_P15_1_OUT = {&MODULE_QSPI2, 5, {&MODULE_P15, 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi2_SLSO6_P33_13_OUT = {&MODULE_QSPI2, 6, {&MODULE_P33,13}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO7_P20_10_OUT = {&MODULE_QSPI2, 7, {&MODULE_P20,10}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO8_P20_6_OUT = {&MODULE_QSPI2, 8, {&MODULE_P20, 6}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi2_SLSO9_P20_3_OUT = {&MODULE_QSPI2, 9, {&MODULE_P20, 3}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi3_SLSO0_P02_4_OUT = {&MODULE_QSPI3, 0, {&MODULE_P02, 4}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO10_P01_4_OUT = {&MODULE_QSPI3, 10, {&MODULE_P01, 4}, IfxPort_OutputIdx_alt4};
IfxQspi_Slso_Out IfxQspi3_SLSO11_P33_10_OUT = {&MODULE_QSPI3, 11, {&MODULE_P33,10}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO12_P22_2_OUT = {&MODULE_QSPI3, 12, {&MODULE_P22, 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO13_P23_1_OUT = {&MODULE_QSPI3, 13, {&MODULE_P23, 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO1_P02_0_OUT = {&MODULE_QSPI3, 1, {&MODULE_P02, 0}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO1_P33_9_OUT = {&MODULE_QSPI3, 1, {&MODULE_P33, 9}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO2_P02_1_OUT = {&MODULE_QSPI3, 2, {&MODULE_P02, 1}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO2_P33_8_OUT = {&MODULE_QSPI3, 2, {&MODULE_P33, 8}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO3_P02_2_OUT = {&MODULE_QSPI3, 3, {&MODULE_P02, 2}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO4_P02_3_OUT = {&MODULE_QSPI3, 4, {&MODULE_P02, 3}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO4_P23_5_OUT = {&MODULE_QSPI3, 4, {&MODULE_P23, 5}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO5_P02_8_OUT = {&MODULE_QSPI3, 5, {&MODULE_P02, 8}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi3_SLSO5_P23_4_OUT = {&MODULE_QSPI3, 5, {&MODULE_P23, 4}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO6_P00_8_OUT = {&MODULE_QSPI3, 6, {&MODULE_P00, 8}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi3_SLSO7_P00_9_OUT = {&MODULE_QSPI3, 7, {&MODULE_P00, 9}, IfxPort_OutputIdx_alt2};
IfxQspi_Slso_Out IfxQspi3_SLSO7_P33_7_OUT = {&MODULE_QSPI3, 7, {&MODULE_P33, 7}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO8_P10_5_OUT = {&MODULE_QSPI3, 8, {&MODULE_P10, 5}, IfxPort_OutputIdx_alt3};
IfxQspi_Slso_Out IfxQspi3_SLSO9_P01_3_OUT = {&MODULE_QSPI3, 9, {&MODULE_P01, 3}, IfxPort_OutputIdx_alt4};


const IfxQspi_Mrst_In *IfxQspi_Mrst_In_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_MRST_IN_NUM_ITEMS] = {
    {
        &IfxQspi0_MRSTA_P20_12_IN,
        &IfxQspi0_MRSTB_P22_9_IN,
        &IfxQspi0_MRSTC_P22_6_IN,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi1_MRSTA_P10_1_IN,
        &IfxQspi1_MRSTB_P11_3_IN,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi2_MRSTA_P15_4_IN,
        &IfxQspi2_MRSTB_P15_7_IN,
        &IfxQspi2_MRSTCN_P21_2_IN,
        &IfxQspi2_MRSTD_P34_4_IN,
        &IfxQspi2_MRSTE_P15_2_IN,
        NULL_PTR
    },
    {
        &IfxQspi3_MRSTA_P02_5_IN,
        &IfxQspi3_MRSTB_P10_7_IN,
        &IfxQspi3_MRSTC_P01_5_IN,
        &IfxQspi3_MRSTD_P33_13_IN,
        &IfxQspi3_MRSTE_P22_1_IN,
        &IfxQspi3_MRSTFN_P21_2_IN
    }
};

const IfxQspi_Mrst_Out *IfxQspi_Mrst_Out_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_MRST_OUT_NUM_ITEMS] = {
    {
        &IfxQspi0_MRST_P20_12_OUT,
        &IfxQspi0_MRST_P22_6_OUT,
        &IfxQspi0_MRST_P22_9_OUT,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi1_MRST_P10_1_OUT,
        &IfxQspi1_MRST_P10_6_OUT,
        &IfxQspi1_MRST_P11_3_OUT,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi2_MRST_P15_4_OUT,
        &IfxQspi2_MRST_P15_7_OUT,
        &IfxQspi2_MRST_P34_4_OUT,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi3_MRST_P01_5_OUT,
        &IfxQspi3_MRST_P02_5_OUT,
        &IfxQspi3_MRST_P10_7_OUT,
        &IfxQspi3_MRST_P22_1_OUT,
        &IfxQspi3_MRST_P33_13_OUT
    }
};

const IfxQspi_Mtsr_In *IfxQspi_Mtsr_In_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_MTSR_IN_NUM_ITEMS] = {
    {
        &IfxQspi0_MTSRA_P20_14_IN,
        &IfxQspi0_MTSRB_P22_10_IN,
        &IfxQspi0_MTSRC_P22_5_IN,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi1_MTSRA_P10_3_IN,
        &IfxQspi1_MTSRB_P11_9_IN,
        &IfxQspi1_MTSRC_P10_4_IN,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi2_MTSRA_P15_5_IN,
        &IfxQspi2_MTSRB_P15_6_IN,
        NULL_PTR,
        &IfxQspi2_MTSRD_P34_5_IN,
        NULL_PTR
    },
    {
        &IfxQspi3_MTSRA_P02_6_IN,
        &IfxQspi3_MTSRB_P10_6_IN,
        &IfxQspi3_MTSRC_P01_6_IN,
        &IfxQspi3_MTSRD_P33_12_IN,
        &IfxQspi3_MTSRE_P22_0_IN
    }
};

const IfxQspi_Mtsr_Out *IfxQspi_Mtsr_Out_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_MTSR_OUT_NUM_ITEMS] = {
    {
        &IfxQspi0_MTSR_P20_12_OUT,
        &IfxQspi0_MTSR_P20_14_OUT,
        &IfxQspi0_MTSR_P22_5_OUT,
        &IfxQspi0_MTSR_P22_10_OUT,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi1_MTSR_P10_1_OUT,
        &IfxQspi1_MTSR_P10_3_OUT,
        &IfxQspi1_MTSR_P10_4_OUT,
        &IfxQspi1_MTSR_P11_9_OUT,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi2_MTSRN_P13_2_OUT,
        &IfxQspi2_MTSRP_P13_3_OUT,
        &IfxQspi2_MTSR_P15_5_OUT,
        &IfxQspi2_MTSR_P15_6_OUT,
        &IfxQspi2_MTSR_P34_5_OUT,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi3_MTSR_P01_6_OUT,
        &IfxQspi3_MTSR_P02_6_OUT,
        &IfxQspi3_MTSR_P10_6_OUT,
        &IfxQspi3_MTSR_P22_0_OUT,
        &IfxQspi3_MTSRN_P22_2_OUT,
        &IfxQspi3_MTSRP_P22_3_OUT,
        &IfxQspi3_MTSR_P33_12_OUT
    }
};

const IfxQspi_Sclk_In *IfxQspi_Sclk_In_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_SCLK_IN_NUM_ITEMS] = {
    {
        &IfxQspi0_SCLKA_P20_11_IN,
        &IfxQspi0_SCLKB_P22_8_IN,
        &IfxQspi0_SCLKC_P22_7_IN,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi1_SCLKA_P10_2_IN,
        &IfxQspi1_SCLKB_P11_6_IN,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi2_SCLKA_P15_3_IN,
        &IfxQspi2_SCLKB_P15_8_IN,
        NULL_PTR,
        &IfxQspi2_SCLKD_P33_14_IN,
        NULL_PTR
    },
    {
        &IfxQspi3_SCLKA_P02_7_IN,
        &IfxQspi3_SCLKB_P10_8_IN,
        &IfxQspi3_SCLKC_P01_7_IN,
        &IfxQspi3_SCLKD_P33_11_IN,
        &IfxQspi3_SCLKE_P22_3_IN
    }
};

const IfxQspi_Sclk_Out *IfxQspi_Sclk_Out_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_SCLK_OUT_NUM_ITEMS] = {
    {
        &IfxQspi0_SCLK_P20_11_OUT,
        &IfxQspi0_SCLK_P20_13_OUT,
        &IfxQspi0_SCLK_P22_7_OUT,
        &IfxQspi0_SCLK_P22_8_OUT,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi1_SCLK_P10_2_OUT,
        &IfxQspi1_SCLK_P11_6_OUT,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi2_SCLKN_P13_0_OUT,
        &IfxQspi2_SCLKP_P13_1_OUT,
        &IfxQspi2_SCLK_P15_3_OUT,
        &IfxQspi2_SCLK_P15_6_OUT,
        &IfxQspi2_SCLK_P15_8_OUT,
        &IfxQspi2_SCLK_P33_14_OUT,
        NULL_PTR
    },
    {
        &IfxQspi3_SCLK_P01_7_OUT,
        &IfxQspi3_SCLK_P02_7_OUT,
        &IfxQspi3_SCLK_P10_8_OUT,
        &IfxQspi3_SCLKN_P22_0_OUT,
        &IfxQspi3_SCLKP_P22_1_OUT,
        &IfxQspi3_SCLK_P22_3_OUT,
        &IfxQspi3_SCLK_P33_11_OUT
    }
};

const IfxQspi_Slsi_In *IfxQspi_Slsi_In_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_SLSI_IN_NUM_ITEMS] = {
    {
        &IfxQspi0_SLSIA_P20_13_IN,
        &IfxQspi0_SLSIB_P20_9_IN,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi1_SLSIA_P11_10_IN,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi2_SLSIA_P15_2_IN,
        &IfxQspi2_SLSIB_P15_1_IN,
        NULL_PTR,
        NULL_PTR
    },
    {
        &IfxQspi3_SLSIA_P02_4_IN,
        &IfxQspi3_SLSIB_P01_3_IN,
        &IfxQspi3_SLSIC_P33_10_IN,
        &IfxQspi3_SLSID_P22_2_IN
    }
};

const IfxQspi_Slso_Out *IfxQspi_Slso_Out_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_NUM_SLAVESELECTS][IFXQSPI_PINMAP_SLSO_OUT_NUM_ITEMS] = {
    {
        {
            &IfxQspi0_SLSO0_P20_8_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO1_P20_9_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO2_P20_13_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO3_P11_10_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO4_P11_11_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO5_P11_2_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO6_P20_10_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO7_P33_5_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO8_P20_6_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO9_P20_3_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO10_P22_11_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO11_P23_6_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO12_P22_4_OUT,
            NULL_PTR
        },
        {
            &IfxQspi0_SLSO13_P15_0_OUT,
            NULL_PTR
        }
    },
    {
        {
            &IfxQspi1_SLSO0_P20_8_OUT,
            NULL_PTR
        },
        {
            &IfxQspi1_SLSO1_P20_9_OUT,
            NULL_PTR
        },
        {
            &IfxQspi1_SLSO2_P20_13_OUT,
            NULL_PTR
        },
        {
            &IfxQspi1_SLSO3_P11_10_OUT,
            NULL_PTR
        },
        {
            &IfxQspi1_SLSO4_P11_11_OUT,
            NULL_PTR
        },
        {
            &IfxQspi1_SLSO5_P11_2_OUT,
            NULL_PTR
        },
        {
            &IfxQspi1_SLSO6_P33_10_OUT,
            NULL_PTR
        },
        {
            &IfxQspi1_SLSO7_P33_5_OUT,
            NULL_PTR
        },
        {
            &IfxQspi1_SLSO8_P10_4_OUT,
            NULL_PTR
        },
        {
            &IfxQspi1_SLSO9_P10_5_OUT,
            NULL_PTR
        },
        {
            &IfxQspi1_SLSO10_P10_0_OUT,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR
        }
    },
    {
        {
            &IfxQspi2_SLSO0_P15_2_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO1_P14_2_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO2_P14_6_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO3_P14_3_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO4_P14_7_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO5_P15_1_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO6_P33_13_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO7_P20_10_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO8_P20_6_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO9_P20_3_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO10_P34_3_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO11_P33_15_OUT,
            NULL_PTR
        },
        {
            &IfxQspi2_SLSO12_P32_6_OUT,
            NULL_PTR
        },
        {
            NULL_PTR,
            NULL_PTR
        }
    },
    {
        {
            &IfxQspi3_SLSO0_P02_4_OUT,
            NULL_PTR
        },
        {
            &IfxQspi3_SLSO1_P02_0_OUT,
            &IfxQspi3_SLSO1_P33_9_OUT
        },
        {
            &IfxQspi3_SLSO2_P02_1_OUT,
            &IfxQspi3_SLSO2_P33_8_OUT
        },
        {
            &IfxQspi3_SLSO3_P02_2_OUT,
            NULL_PTR
        },
        {
            &IfxQspi3_SLSO4_P02_3_OUT,
            &IfxQspi3_SLSO4_P23_5_OUT
        },
        {
            &IfxQspi3_SLSO5_P02_8_OUT,
            &IfxQspi3_SLSO5_P23_4_OUT
        },
        {
            &IfxQspi3_SLSO6_P00_8_OUT,
            NULL_PTR
        },
        {
            &IfxQspi3_SLSO7_P00_9_OUT,
            &IfxQspi3_SLSO7_P33_7_OUT
        },
        {
            &IfxQspi3_SLSO8_P10_5_OUT,
            NULL_PTR
        },
        {
            &IfxQspi3_SLSO9_P01_3_OUT,
            NULL_PTR
        },
        {
            &IfxQspi3_SLSO10_P01_4_OUT,
            NULL_PTR
        },
        {
            &IfxQspi3_SLSO11_P33_10_OUT,
            NULL_PTR
        },
        {
            &IfxQspi3_SLSO12_P22_2_OUT,
            NULL_PTR
        },
        {
            &IfxQspi3_SLSO13_P23_1_OUT,
            NULL_PTR
        }
    }
};
