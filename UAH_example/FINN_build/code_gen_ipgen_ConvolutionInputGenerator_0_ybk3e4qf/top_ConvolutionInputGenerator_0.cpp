
#define AP_INT_MAX_W 8

#include "bnn-library.h"

// includes for network parameters
#include "slidingwindow.h"

// defines for network parameters
#define ConvKernelDim1 3
 #define IFMChannels1 1

            #define Input_precision1 8
 #define IFMDim1 66

            #define OFMDim1 64
 #define SIMD1 1

            #define Stride1 1
 #define numReps 1

void ConvolutionInputGenerator_0(hls::stream<ap_uint<SIMD1*Input_precision1>> &in0,
                hls::stream<ap_uint<SIMD1*Input_precision1>> &out)
{
#pragma HLS INTERFACE axis port=in0 name=in0_V
#pragma HLS INTERFACE axis port=out name=out_V
#pragma HLS INTERFACE ap_ctrl_none port=return
ConvolutionInputGenerator<ConvKernelDim1, IFMChannels1, Input_precision1, IFMDim1,
                    OFMDim1, SIMD1, Stride1> (in0, out, numReps, ap_resource_lutram());
}
