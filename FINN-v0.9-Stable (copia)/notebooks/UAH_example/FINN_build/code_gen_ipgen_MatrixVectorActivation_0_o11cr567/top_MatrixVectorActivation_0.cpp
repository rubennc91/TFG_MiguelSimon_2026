
#define AP_INT_MAX_W 9216

#include "bnn-library.h"

// includes for network parameters
#include "weights.hpp"
#include "activations.hpp"
#include "mvau.hpp"
#include "thresh.h"

// defines for network parameters
#define MW1 576
 #define MH1 256

            #define SIMD1 9
 #define PE1 256
 #define WMEM1 64

            #define TMEM1 1
 #define numReps 1
#define WP1 4


void MatrixVectorActivation_0(
                    hls::stream<ap_uint<72>> &in0,
                    hls::stream<ap_uint<9216>> &weights,
                    hls::stream<ap_uint<1024>> &out
                    )
{
#pragma HLS INTERFACE axis port=in0 name=in0_V
#pragma HLS INTERFACE axis port=out name=out_V
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=weights name=weights_V
#pragma HLS stream depth=8 variable=weights
#pragma HLS ARRAY_PARTITION variable=threshs.m_thresholds complete dim=1
#pragma HLS ARRAY_PARTITION variable=threshs.m_thresholds complete dim=3
Matrix_Vector_Activate_Stream_Batch<MW1, MH1, SIMD1, PE1, Slice<ap_int<8>>, Slice<ap_uint<4>>, Identity, ap_int<4> >
                (in0, out, weights, threshs, numReps, ap_resource_lut());
}
