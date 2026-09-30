
#define AP_INT_MAX_W 64

#include "bnn-library.h"

// includes for network parameters
#include "streamtools.h"

// defines for network parameters
#define ImgDim1 32
#define OutputDim1 34

                #define PaddingBefore1 1
#define PaddingBehind1 1

                #define NumChannels1 16
#define SIMD1 16

                #define numReps 1


void FMPadding_Batch_1(hls::stream<ap_uint<64> > &in0, hls::stream<ap_uint<64> > &out)
{
#pragma HLS INTERFACE axis port=in0 name=in0_V
#pragma HLS INTERFACE axis port=out name=out_V
#pragma HLS INTERFACE ap_ctrl_none port=return
FMPadding_Batch<ImgDim1, OutputDim1, PaddingBefore1, PaddingBehind1, NumChannels1, SIMD1,
                ap_uint<4>> (in0, out, numReps);
}
