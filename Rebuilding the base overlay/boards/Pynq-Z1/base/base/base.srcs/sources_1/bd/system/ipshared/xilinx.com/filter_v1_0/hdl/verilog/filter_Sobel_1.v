// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module filter_Sobel_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_src_data_stream_0_V_dout,
        p_src_data_stream_0_V_empty_n,
        p_src_data_stream_0_V_read,
        p_src_data_stream_1_V_dout,
        p_src_data_stream_1_V_empty_n,
        p_src_data_stream_1_V_read,
        p_src_data_stream_2_V_dout,
        p_src_data_stream_2_V_empty_n,
        p_src_data_stream_2_V_read,
        p_dst_data_stream_0_V_din,
        p_dst_data_stream_0_V_full_n,
        p_dst_data_stream_0_V_write,
        p_dst_data_stream_1_V_din,
        p_dst_data_stream_1_V_full_n,
        p_dst_data_stream_1_V_write,
        p_dst_data_stream_2_V_din,
        p_dst_data_stream_2_V_full_n,
        p_dst_data_stream_2_V_write
);

parameter    ap_ST_st1_fsm_0 = 2'b1;
parameter    ap_ST_st2_fsm_1 = 2'b10;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv3_2 = 3'b10;
parameter    ap_const_lv2_1 = 2'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] p_src_data_stream_0_V_dout;
input   p_src_data_stream_0_V_empty_n;
output   p_src_data_stream_0_V_read;
input  [7:0] p_src_data_stream_1_V_dout;
input   p_src_data_stream_1_V_empty_n;
output   p_src_data_stream_1_V_read;
input  [7:0] p_src_data_stream_2_V_dout;
input   p_src_data_stream_2_V_empty_n;
output   p_src_data_stream_2_V_read;
output  [7:0] p_dst_data_stream_0_V_din;
input   p_dst_data_stream_0_V_full_n;
output   p_dst_data_stream_0_V_write;
output  [7:0] p_dst_data_stream_1_V_din;
input   p_dst_data_stream_1_V_full_n;
output   p_dst_data_stream_1_V_write;
output  [7:0] p_dst_data_stream_2_V_din;
input   p_dst_data_stream_2_V_full_n;
output   p_dst_data_stream_2_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_data_stream_0_V_read;
reg p_src_data_stream_1_V_read;
reg p_src_data_stream_2_V_read;
reg p_dst_data_stream_0_V_write;
reg p_dst_data_stream_1_V_write;
reg p_dst_data_stream_2_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_20;
wire    grp_filter_Filter2D_fu_38_ap_start;
wire    grp_filter_Filter2D_fu_38_ap_done;
wire    grp_filter_Filter2D_fu_38_ap_idle;
wire    grp_filter_Filter2D_fu_38_ap_ready;
wire    grp_filter_Filter2D_fu_38_p_src_data_stream_0_V_read;
wire    grp_filter_Filter2D_fu_38_p_src_data_stream_1_V_read;
wire    grp_filter_Filter2D_fu_38_p_src_data_stream_2_V_read;
wire   [7:0] grp_filter_Filter2D_fu_38_p_dst_data_stream_0_V_din;
wire    grp_filter_Filter2D_fu_38_p_dst_data_stream_0_V_write;
wire   [7:0] grp_filter_Filter2D_fu_38_p_dst_data_stream_1_V_din;
wire    grp_filter_Filter2D_fu_38_p_dst_data_stream_1_V_write;
wire   [7:0] grp_filter_Filter2D_fu_38_p_dst_data_stream_2_V_din;
wire    grp_filter_Filter2D_fu_38_p_dst_data_stream_2_V_write;
reg    ap_reg_grp_filter_Filter2D_fu_38_ap_start;
reg    ap_sig_86;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_94;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'b1;
#0 ap_reg_grp_filter_Filter2D_fu_38_ap_start = 1'b0;
end

filter_Filter2D grp_filter_Filter2D_fu_38(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_filter_Filter2D_fu_38_ap_start),
    .ap_done(grp_filter_Filter2D_fu_38_ap_done),
    .ap_idle(grp_filter_Filter2D_fu_38_ap_idle),
    .ap_ready(grp_filter_Filter2D_fu_38_ap_ready),
    .p_src_data_stream_0_V_dout(p_src_data_stream_0_V_dout),
    .p_src_data_stream_0_V_empty_n(p_src_data_stream_0_V_empty_n),
    .p_src_data_stream_0_V_read(grp_filter_Filter2D_fu_38_p_src_data_stream_0_V_read),
    .p_src_data_stream_1_V_dout(p_src_data_stream_1_V_dout),
    .p_src_data_stream_1_V_empty_n(p_src_data_stream_1_V_empty_n),
    .p_src_data_stream_1_V_read(grp_filter_Filter2D_fu_38_p_src_data_stream_1_V_read),
    .p_src_data_stream_2_V_dout(p_src_data_stream_2_V_dout),
    .p_src_data_stream_2_V_empty_n(p_src_data_stream_2_V_empty_n),
    .p_src_data_stream_2_V_read(grp_filter_Filter2D_fu_38_p_src_data_stream_2_V_read),
    .p_dst_data_stream_0_V_din(grp_filter_Filter2D_fu_38_p_dst_data_stream_0_V_din),
    .p_dst_data_stream_0_V_full_n(p_dst_data_stream_0_V_full_n),
    .p_dst_data_stream_0_V_write(grp_filter_Filter2D_fu_38_p_dst_data_stream_0_V_write),
    .p_dst_data_stream_1_V_din(grp_filter_Filter2D_fu_38_p_dst_data_stream_1_V_din),
    .p_dst_data_stream_1_V_full_n(p_dst_data_stream_1_V_full_n),
    .p_dst_data_stream_1_V_write(grp_filter_Filter2D_fu_38_p_dst_data_stream_1_V_write),
    .p_dst_data_stream_2_V_din(grp_filter_Filter2D_fu_38_p_dst_data_stream_2_V_din),
    .p_dst_data_stream_2_V_full_n(p_dst_data_stream_2_V_full_n),
    .p_dst_data_stream_2_V_write(grp_filter_Filter2D_fu_38_p_dst_data_stream_2_V_write),
    .p_kernel_val_0_V_0_read(ap_const_lv2_3),
    .p_kernel_val_0_V_1_read(ap_const_lv2_2),
    .p_kernel_val_1_V_0_read(ap_const_lv4_0),
    .p_kernel_val_1_V_2_read(ap_const_lv3_0),
    .p_kernel_val_2_V_1_read(ap_const_lv3_2),
    .p_kernel_val_2_V_2_read(ap_const_lv2_1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == grp_filter_Filter2D_fu_38_ap_done))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_filter_Filter2D_fu_38_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_86)) begin
            ap_reg_grp_filter_Filter2D_fu_38_ap_start <= 1'b1;
        end else if ((1'b1 == grp_filter_Filter2D_fu_38_ap_ready)) begin
            ap_reg_grp_filter_Filter2D_fu_38_ap_start <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == grp_filter_Filter2D_fu_38_ap_done)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == grp_filter_Filter2D_fu_38_ap_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_94) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_dst_data_stream_0_V_write = grp_filter_Filter2D_fu_38_p_dst_data_stream_0_V_write;
    end else begin
        p_dst_data_stream_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_dst_data_stream_1_V_write = grp_filter_Filter2D_fu_38_p_dst_data_stream_1_V_write;
    end else begin
        p_dst_data_stream_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_dst_data_stream_2_V_write = grp_filter_Filter2D_fu_38_p_dst_data_stream_2_V_write;
    end else begin
        p_dst_data_stream_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_src_data_stream_0_V_read = grp_filter_Filter2D_fu_38_p_src_data_stream_0_V_read;
    end else begin
        p_src_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_src_data_stream_1_V_read = grp_filter_Filter2D_fu_38_p_src_data_stream_1_V_read;
    end else begin
        p_src_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_src_data_stream_2_V_read = grp_filter_Filter2D_fu_38_p_src_data_stream_2_V_read;
    end else begin
        p_src_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_86) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(1'b0 == grp_filter_Filter2D_fu_38_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_20 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_86 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_sig_94 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign grp_filter_Filter2D_fu_38_ap_start = ap_reg_grp_filter_Filter2D_fu_38_ap_start;

assign p_dst_data_stream_0_V_din = grp_filter_Filter2D_fu_38_p_dst_data_stream_0_V_din;

assign p_dst_data_stream_1_V_din = grp_filter_Filter2D_fu_38_p_dst_data_stream_1_V_din;

assign p_dst_data_stream_2_V_din = grp_filter_Filter2D_fu_38_p_dst_data_stream_2_V_din;

endmodule //filter_Sobel_1
