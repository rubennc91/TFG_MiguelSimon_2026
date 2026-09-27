
#define AP_INT_MAX_W 16

#include "bnn-library.h"

// includes for network parameters
#include "maxpool.h"

// defines for network parameters


void LabelSelect_Batch_0(hls::stream<ap_uint<1*16>> &in0,
                hls::stream<ap_uint<8> > &out)
{
#pragma HLS INTERFACE axis port=in0 name=in0_V
#pragma HLS INTERFACE axis port=out name=out_V
#pragma HLS INTERFACE ap_ctrl_none port=return
LabelSelect_Batch<14, 1, 1, ap_int<16>, ap_uint<8> > (in0, out, 1);
}
