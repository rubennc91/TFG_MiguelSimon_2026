`timescale 1ns / 1ps

module finn_design_fifo_0 (
    input  wire        s_axis_aresetn,
    input  wire        s_axis_aclk,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire [7:0]  s_axis_tdata,
    output reg         m_axis_tvalid,
    input  wire        m_axis_tready,
    output reg  [7:0]  m_axis_tdata
);

    assign s_axis_tready = (!m_axis_tvalid) || m_axis_tready;

    always @(posedge s_axis_aclk) begin
        if (!s_axis_aresetn) begin
            m_axis_tvalid <= 1'b0;
            m_axis_tdata  <= 8'd0;
        end else begin
            if (s_axis_tready) begin
                m_axis_tvalid <= s_axis_tvalid;
                m_axis_tdata  <= s_axis_tdata;
            end
        end
    end

endmodule


module finn_design_fifo_1 (
    input  wire        s_axis_aresetn,
    input  wire        s_axis_aclk,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire [7:0]  s_axis_tdata,
    output reg         m_axis_tvalid,
    input  wire        m_axis_tready,
    output reg  [7:0]  m_axis_tdata
);

    assign s_axis_tready = (!m_axis_tvalid) || m_axis_tready;

    always @(posedge s_axis_aclk) begin
        if (!s_axis_aresetn) begin
            m_axis_tvalid <= 1'b0;
            m_axis_tdata  <= 8'd0;
        end else begin
            if (s_axis_tready) begin
                m_axis_tvalid <= s_axis_tvalid;
                m_axis_tdata  <= s_axis_tdata;
            end
        end
    end

endmodule
