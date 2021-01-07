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

/*! \file Ifx_mtxSubRealF32.c
 *
 * \brief subtract two matrices
 *
 * Function to substract two matrices dast = src1-src2
 */

#include "dsplib-internal.h"

static void
Ifx_mtxSubRealF32_ref (struct Ifx_mtxSubRealF32State * state)
{
    float32 * dst = state->dst;
    float32 * src1 = state->src1; // IN  vector[m*n], first addend.
    float32 * src2 = state->src2; // IN  vector[m*n], second addend.
    uint32 m = state->m;          // IN  number of rows in matrix.
    uint32 n = state->n;          // IN  number of columns in matrix.

    uint32 i,j;
    for (i=0; i<m; i++)
        for (j=0; j<n; j++)
            dst[i*n+j] = src1[i*n+j] - src2[i*n+j];

}

void
Ifx_mtxSubRealF32 (struct Ifx_mtxSubRealF32State * state)
{
    enum Ifx_mode mode = state->mode;
    switch (mode) {
    case IFX_MODE_REFERENCE_IMPLEMENTATION:
        Ifx_mtxSubRealF32_ref (state);
        return;
#if IFX_TRICORE_TARGET && __TASKING__
    case IFX_MODE_OPTIMIZED_ASM:
    	Ifx_mtxSubRealF32_fast (state->m, state->n, state->dst, state->src1, state->src2);
    	return;
#endif /* IFX_TRICORE_TARGET && __TASKING__ */
    default:
        Ifx_warnAboutUnimplementedMode (mode, "mtxSubRealF32");
    }
}
