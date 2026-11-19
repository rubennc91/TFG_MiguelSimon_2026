// -----------------------------------------------------------------------------
// comparator.sv: Receives Two Inputs and Returns the Greatest
// -----------------------------------------------------------------------------
module comparator import Globals::*; (
    input  int  in1,       // Input 1
    input  int  in2,       // Input 2
    output int  max,       // Greatest input
    output logic idx       // Greatest input index
);
    always_comb begin
        if (in1 >= in2) begin
            idx = 1'b0;
            max = in1;
        end else begin
            idx = 1'b1;
            max = in2;
        end
    end
endmodule : comparator
