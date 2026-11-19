// -----------------------------------------------------------------------------
// Globals.sv: Package with Global Parameters, Components, and Functions
// -----------------------------------------------------------------------------
package Globals;

    // -------------------------------------------------------------------------
    // Parameters (equivalent to VHDL constants)
    // -------------------------------------------------------------------------
    localparam int NET_INPUTS  = 400;   // Number of Inputs of the Logic Net
    localparam int L0_NEURONS  = 2048;  // Number of Neurons in Layer 0
    localparam int L1_NEURONS  = 2050;  // Number of Neurons in Layer 1
    localparam int CLASS_OUTS  = 205;   // Number of Binary Outputs per Class
    localparam int NET_OUTPUT  = 4;     // Number of Bits to Represent the Output Classes

    // -------------------------------------------------------------------------
    // Function: Count number of '1's in a vector (equivalent to VHDL count_ones)
    // -------------------------------------------------------------------------
    function automatic int count_ones(input logic [CLASS_OUTS-1:0] s);
        int temp = 0;
        for (int i = 0; i < $size(s); i++) begin
            if (s[i]) temp++;
        end
        return temp;
    endfunction

endpackage : Globals
