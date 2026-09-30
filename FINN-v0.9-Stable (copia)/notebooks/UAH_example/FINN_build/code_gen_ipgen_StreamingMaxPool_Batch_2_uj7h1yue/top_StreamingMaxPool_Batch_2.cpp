
#define AP_INT_MAX_W 256

#include "bnn-library.h"

// includes for network parameters
#include "maxpool.h"

// defines for network parameters
#define ImgDim 16
 #define PoolDim 2

                #define NumChannels 64
 #define numReps 1

void StreamingMaxPool_Batch_2(hls::stream<ap_uint<256> > &in0, hls::stream<ap_uint<256> > &out)
{
#pragma HLS INTERFACE axis port=in0 name=in0_V
#pragma HLS INTERFACE axis port=out name=out_V
#pragma HLS INTERFACE ap_ctrl_none port=return
StreamingMaxPool_Precision<ImgDim, PoolDim, NumChannels, ap_uint<4>, 0>(in0, out);
}
