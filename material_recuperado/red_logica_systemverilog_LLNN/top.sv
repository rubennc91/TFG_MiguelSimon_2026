// -----------------------------------------------------------------------------
// top.sv: Top Entity of the Logic Network
// -----------------------------------------------------------------------------
module top import Globals::*; (
    input  logic [NET_INPUTS-1:0]  NET_I,   // Input
    output logic [NET_OUTPUT-1:0]  NET_O    // Output
);

    // -------------------------------------------------------------------------
    // Internal signals
    // -------------------------------------------------------------------------
    logic [L0_NEURONS-1:0] F_L0;
    logic [L1_NEURONS-1:0] F_L1;

    int C0, C1, C2, C3, C4, C5, C6, C7, C8, C9;
    int max0, max1, max2, max3, max4, max5, max6, max7;
    logic idx0, idx1, idx2, idx3, idx4, idx5, idx6, idx7, idx8;

    // -------------------------------------------------------------------------
    // Instantiate the Layers
    // (Layer modules vendrán después, aquí solo declaramos conexiones)
    // -------------------------------------------------------------------------
    layer0 L0 (.L0_IN(NET_I), .L0_OUT(F_L0));
    layer1 L1 (.L1_IN(F_L0), .L1_OUT(F_L1));

    // -------------------------------------------------------------------------
    // Sum of Each Output Class (Counting Ones)
    // -------------------------------------------------------------------------
    always_comb begin
        C9 = count_ones(F_L1[2049:1845]);
        C8 = count_ones(F_L1[1844:1640]);
        C7 = count_ones(F_L1[1639:1435]);
        C6 = count_ones(F_L1[1434:1230]);
        C5 = count_ones(F_L1[1229:1025]);
        C4 = count_ones(F_L1[1024:820]);
        C3 = count_ones(F_L1[819:615]);
        C2 = count_ones(F_L1[614:410]);
        C1 = count_ones(F_L1[409:205]);
        C0 = count_ones(F_L1[204:0]);
    end

    // -------------------------------------------------------------------------
    // Binary Tree Comparisons
    // -------------------------------------------------------------------------
    comparator CMP0 (.in1(C0),    .in2(C1),    .max(max0), .idx(idx0));
    comparator CMP1 (.in1(max0),  .in2(C2),    .max(max1), .idx(idx1));
    comparator CMP2 (.in1(max1),  .in2(C3),    .max(max2), .idx(idx2));
    comparator CMP3 (.in1(max2),  .in2(C4),    .max(max3), .idx(idx3));
    comparator CMP4 (.in1(max3),  .in2(C5),    .max(max4), .idx(idx4));
    comparator CMP5 (.in1(max4),  .in2(C6),    .max(max5), .idx(idx5));
    comparator CMP6 (.in1(max5),  .in2(C7),    .max(max6), .idx(idx6));
    comparator CMP7 (.in1(max6),  .in2(C8),    .max(max7), .idx(idx7));
    comparator CMP8 (.in1(max7),  .in2(C9),    .max(),     .idx(idx8));

    // -------------------------------------------------------------------------
    // Connect Net Output
    // (Mismo esquema de comparaciones binarias que en VHDL original)
    // -------------------------------------------------------------------------
    always_comb begin
        case (1'b1)
            (idx0 & ~idx1 & ~idx2 & ~idx3 & ~idx4 & ~idx5 & ~idx6 & ~idx7 & ~idx8): NET_O = 4'b0001;
            (idx1 & ~idx2 & ~idx3 & ~idx4 & ~idx5 & ~idx6 & ~idx7 & ~idx8): NET_O = 4'b0010;
            (idx2 & ~idx3 & ~idx4 & ~idx5 & ~idx6 & ~idx7 & ~idx8): NET_O = 4'b0011;
            (idx3 & ~idx4 & ~idx5 & ~idx6 & ~idx7 & ~idx8): NET_O = 4'b0100;
            (idx4 & ~idx5 & ~idx6 & ~idx7 & ~idx8): NET_O = 4'b0101;
            (idx5 & ~idx6 & ~idx7 & ~idx8): NET_O = 4'b0110;
            (idx6 & ~idx7 & ~idx8): NET_O = 4'b0111;
            (idx7 & ~idx8): NET_O = 4'b1000;
            (idx8): NET_O = 4'b1001;
            default: NET_O = 4'b0000; // por defecto (equivalente a "1111" en VHDL si quieres)
        endcase
    end

endmodule : top
