
#define AP_INT_MAX_W 8

#include "bnn-library.h"

// includes for network parameters
#include "streamtools.h"

// defines for network parameters
#define ImgDim1 64
#define OutputDim1 66

                #define PaddingBefore1 1
#define PaddingBehind1 1

                #define NumChannels1 1
#define SIMD1 1

                #define numReps 1


void FMPadding_Batch_0(hls::stream<ap_uint<8> > &in0, hls::stream<ap_uint<8> > &out)
{
#pragma HLS INTERFACE axis port=in0 name=in0_V
#pragma HLS INTERFACE axis port=out name=out_V
#pragma HLS INTERFACE ap_ctrl_none port=return
FMPadding_Batch<ImgDim1, OutputDim1, PaddingBefore1, PaddingBehind1, NumChannels1, SIMD1,
                ap_int<8>> (in0, out, numReps);
}
