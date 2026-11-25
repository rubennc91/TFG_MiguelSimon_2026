// Marca el inicio de trama (TUSER = 1 en el primer píxel tras cada TLAST) en un flujo de 24 bits sin señales de vídeo.
// HIL: el DMA simple entrega la trama de 1280x720 como un solo paquete con TLAST al final; el reductor necesita TUSER en el primer píxel.
module axis_sof (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF s_axis:m_axis, ASSOCIATED_RESET aresetn" *)
    input  wire        aclk,
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input  wire        aresetn,
    input  wire [23:0] s_axis_tdata,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire        s_axis_tlast,
    output wire [23:0] m_axis_tdata,
    output wire        m_axis_tvalid,
    input  wire        m_axis_tready,
    output wire [0:0]  m_axis_tuser,
    output wire        m_axis_tlast
);
    reg primero;
    always @(posedge aclk)
        if (!aresetn) primero <= 1'b1;
        else if (s_axis_tvalid && m_axis_tready) primero <= s_axis_tlast;
    assign m_axis_tdata  = s_axis_tdata;
    assign m_axis_tvalid = s_axis_tvalid;
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tlast  = s_axis_tlast;
    assign m_axis_tuser  = primero;
endmodule
