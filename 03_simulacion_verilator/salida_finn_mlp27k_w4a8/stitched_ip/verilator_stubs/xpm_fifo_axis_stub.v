module xpm_fifo_axis #(
    parameter integer CDC_DEST_SYNC_FF    = 2,
    parameter string  CLOCKING_MODE       = "common_clock",
    parameter string  ECC_MODE            = "no_ecc",
    parameter integer FIFO_DEPTH          = 16,
    parameter string  FIFO_MEMORY_TYPE    = "auto",
    parameter integer PACKET_FIFO         = 0,
    parameter integer PROG_EMPTY_THRESH   = 10,
    parameter integer PROG_FULL_THRESH    = 10,
    parameter integer RD_DATA_COUNT_WIDTH = 1,
    parameter integer RELATED_CLOCKS      = 0,
    parameter integer SIM_ASSERT_CHK      = 0,
    parameter integer TDATA_WIDTH         = 32,
    parameter integer TDEST_WIDTH         = 1,
    parameter integer TID_WIDTH           = 1,
    parameter integer TUSER_WIDTH         = 1,
    parameter string  USE_ADV_FEATURES    = "1000",
    parameter integer WR_DATA_COUNT_WIDTH = 1
)(
    input  wire                         s_aclk,
    input  wire                         m_aclk,
    input  wire                         s_aresetn,

    input  wire [TDATA_WIDTH-1:0]       s_axis_tdata,
    input  wire [TDATA_WIDTH/8-1:0]     s_axis_tkeep,
    input  wire [TDATA_WIDTH/8-1:0]     s_axis_tstrb,
    input  wire [TUSER_WIDTH-1:0]       s_axis_tuser,
    input  wire [TID_WIDTH-1:0]         s_axis_tid,
    input  wire [TDEST_WIDTH-1:0]       s_axis_tdest,
    input  wire                         s_axis_tvalid,
    output wire                         s_axis_tready,
    input  wire                         s_axis_tlast,

    output reg  [TDATA_WIDTH-1:0]       m_axis_tdata,
    output reg  [TDATA_WIDTH/8-1:0]     m_axis_tkeep,
    output reg  [TDATA_WIDTH/8-1:0]     m_axis_tstrb,
    output reg  [TUSER_WIDTH-1:0]       m_axis_tuser,
    output reg  [TID_WIDTH-1:0]         m_axis_tid,
    output reg  [TDEST_WIDTH-1:0]       m_axis_tdest,
    output reg                          m_axis_tvalid,
    input  wire                         m_axis_tready,
    output reg                          m_axis_tlast,

    output wire                         almost_empty_axis,
    output wire                         almost_full_axis,
    output wire                         prog_empty_axis,
    output wire                         prog_full_axis,
    output wire                         sbiterr_axis,
    output wire                         dbiterr_axis,
    output wire [RD_DATA_COUNT_WIDTH-1:0] rd_data_count_axis,
    output wire [WR_DATA_COUNT_WIDTH-1:0] wr_data_count_axis,

    input  wire                         injectsbiterr_axis,
    input  wire                         injectdbiterr_axis
);

    assign almost_empty_axis  = 1'b0;
    assign almost_full_axis   = 1'b0;
    assign prog_empty_axis    = 1'b0;
    assign prog_full_axis     = 1'b0;
    assign sbiterr_axis       = 1'b0;
    assign dbiterr_axis       = 1'b0;
    assign rd_data_count_axis = {RD_DATA_COUNT_WIDTH{1'b0}};
    assign wr_data_count_axis = {WR_DATA_COUNT_WIDTH{1'b0}};

    // Stub simple para Verilator.
    // Acepta un dato si no hay dato pendiente o si el bloque siguiente está listo.
    assign s_axis_tready = (!m_axis_tvalid) || m_axis_tready;

    always @(posedge s_aclk) begin
        if (!s_aresetn) begin
            m_axis_tdata  <= {TDATA_WIDTH{1'b0}};
            m_axis_tkeep  <= {(TDATA_WIDTH/8){1'b0}};
            m_axis_tstrb  <= {(TDATA_WIDTH/8){1'b0}};
            m_axis_tuser  <= {TUSER_WIDTH{1'b0}};
            m_axis_tid    <= {TID_WIDTH{1'b0}};
            m_axis_tdest  <= {TDEST_WIDTH{1'b0}};
            m_axis_tlast  <= 1'b0;
            m_axis_tvalid <= 1'b0;
        end else begin
            if (s_axis_tready) begin
                m_axis_tvalid <= s_axis_tvalid;
                if (s_axis_tvalid) begin
                    m_axis_tdata <= s_axis_tdata;
                    m_axis_tkeep <= s_axis_tkeep;
                    m_axis_tstrb <= s_axis_tstrb;
                    m_axis_tuser <= s_axis_tuser;
                    m_axis_tid   <= s_axis_tid;
                    m_axis_tdest <= s_axis_tdest;
                    m_axis_tlast <= s_axis_tlast;
                end
            end
        end
    end

endmodule
