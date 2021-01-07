/*****************************************************************************
*
* Copyright (c) 2014 Infineon Technologies AG. All rights reserved.
*
*                                 IMPORTANT NOTICE
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
******************************************************************************/

/*! \file Ifx_sumRealF32.c
 *
 * \brief sum of Q31 vector
 *
 * sum of values of a vector of Q31 values.
 */

#include "dsplib-internal.h"

static void
Ifx_sumRealF32_ref (struct Ifx_sumRealF32State * state)
{

    float32 y = 0;
    float32 * x = state->x;
    uint32 n = state->n;

    uint32 i;
    for (i=0; i<n; i++)
        y += x[i];
    state->y = y;
}

void
Ifx_sumRealF32 (struct Ifx_sumRealF32State * state)
{
    enum Ifx_mode mode = state->mode;
    switch (mode) {
    default:
        Ifx_warnAboutUnimplementedMode (mode, "sumRealF32");
    case IFX_MODE_REFERENCE_IMPLEMENTATION:
        Ifx_sumRealF32_ref (state);
    }
}
