
#define AP_INT_MAX_W 256

#include "bnn-library.h"

// includes for network parameters
#include "streamtools.h"

// defines for network parameters
#define InWidth 4 
#define OutWidth 256 
#define NumInWords 16384 
#define numReps 1

void StreamingDataWidthConverter_Batch_4(hls::stream<ap_uint<4> > &in0, hls::stream<ap_uint<256> > &out)
{
#pragma HLS INTERFACE axis port=in0 name=in0_V
#pragma HLS INTERFACE axis port=out name=out_V
#pragma HLS INTERFACE ap_ctrl_none port=return
StreamingDataWidthConverter_Batch<InWidth, OutWidth, NumInWords>(in0, out, numReps);
}
