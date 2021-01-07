/*! \file Ifx_bmpWriteQ15.c
 *
 * \brief writes bitmap image mono-chrome from Q15 data.
 *
 * This program writes a bmp-image in order to check its parameters.
 *
 */

#include "dsplib-internal.h"

#include <stdlib.h>
#include <stdio.h>

#define IFX_BMP_MAGIC 19778
#define IFX_BMP_CLRSIZE 256
#define IFX_BMP_PPM 1000

#define IFX_BMP_SIZE_BITMAPFILEHEADER 14
#define IFX_BMP_SIZE_BITMAPINFOHEADER 40
#define IFX_BMP_SIZE_COLORTABLEENATRY 4

static void
put_uint8 (FILE * f, uint8 data)
{
    if (EOF==fputc(data, f)) {
        perror ("error: writing uint8");
        exit (1);
    }
}

static void
put_uint16 (FILE * f, uint16 data)
{
    if (1!=fwrite(&data,sizeof(uint16),1,f)) {
        perror ("error: writing uint16");
        exit (1);
    }
}

static void
put_uint32 (FILE * f, uint32 data)
{
    if (1!=fwrite(&data,sizeof(uint32),1,f)) {
        perror ("error: writing uint32");
        exit (1);
    }
}

static void
put_sint32 (FILE * f, sint32 data)
{
    if (1!=fwrite(&data,sizeof(sint32),1,f)) {
        perror ("error: writing sint32");
        exit (1);
    }
}

void
Ifx_bmpWriteQ15 (FILE * f, sint16 * data, uint32 width, uint32 height)
{
	uint32 i,j;
    uint32 byte_width;
    /* picture scaling: scaling to 8 bit and maxing the range of values */
    sint32 min_val=1<<17, max_val=-1<<17;

    /* align on 32-bit words */
    byte_width = (width+3) & ~0x3;
    Ifx_assert (width <= byte_width);
    Ifx_assert (byte_width < width+4);
    Ifx_assert ((byte_width & 0x3) == 0);

    /* write BITMAPFILEHEADER */
    put_uint16 (f, IFX_BMP_MAGIC);
    put_uint32 (f,
                IFX_BMP_SIZE_BITMAPFILEHEADER
                + IFX_BMP_SIZE_BITMAPINFOHEADER
                + IFX_BMP_CLRSIZE*IFX_BMP_SIZE_COLORTABLEENATRY
                + byte_width*height);
    put_uint32 (f, 0);
    put_uint32 (f,
                IFX_BMP_SIZE_BITMAPFILEHEADER
                + IFX_BMP_SIZE_BITMAPINFOHEADER
                + IFX_BMP_CLRSIZE*IFX_BMP_SIZE_COLORTABLEENATRY);

    /* write BITMAPINFOHEADER */
    put_uint32 (f, IFX_BMP_SIZE_BITMAPINFOHEADER);
    put_sint32 (f, width);
    put_sint32 (f, height);
    put_uint16 (f, 1); /* planes */
    put_uint16 (f, 8); /* bpp */
    put_uint32 (f, 0); /* compression */
    put_uint32 (f, byte_width*height); /* size of image data in bytes */
    put_sint32 (f, IFX_BMP_PPM);
    put_sint32 (f, IFX_BMP_PPM);
    put_uint32 (f, IFX_BMP_CLRSIZE);
    put_uint32 (f, IFX_BMP_CLRSIZE);

    /* write color table */
    for (i=0; i<IFX_BMP_CLRSIZE; i++) {
        put_uint8 (f, i); /* blue */
        put_uint8 (f, i); /* green */
        put_uint8 (f, i); /* red */
        put_uint8 (f, 0);
    }

    /* picture scaling: finding min and max pixel value */
    for (i=0; i<height; i++) {
        for (j=0; j<width; j++) {
            if (data[i*width+j] < min_val){
                min_val = (sint32) data[i*width+j];
            }
            else if (data[i*width+j] > max_val){
                max_val = (sint32) data[i*width+j];
            }
        }
    }

    /* write image data */
    for (i=0; i<height; i++) {
        for (j=0; j<width; j++) {
            sint32 a = ( (sint32)data[i*width+j] - min_val) * 255;
            put_uint8 (f, (uint8) ( a / (max_val-min_val) ));
        }
        for (; j<byte_width; j++)
            put_uint8 (f, 0);
    }
}

