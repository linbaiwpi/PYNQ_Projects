// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Sobel_allDirections_Duplicate_1080_1920_0_0_116 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_rows_V_dout,
        src_rows_V_empty_n,
        src_rows_V_read,
        src_cols_V_dout,
        src_cols_V_empty_n,
        src_cols_V_read,
        src_data_stream_V_dout,
        src_data_stream_V_empty_n,
        src_data_stream_V_read,
        dst1_data_stream_V_din,
        dst1_data_stream_V_full_n,
        dst1_data_stream_V_write,
        dst2_data_stream_V_din,
        dst2_data_stream_V_full_n,
        dst2_data_stream_V_write
);

parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st5_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv11_1 = 11'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [11:0] src_rows_V_dout;
input   src_rows_V_empty_n;
output   src_rows_V_read;
input  [11:0] src_cols_V_dout;
input   src_cols_V_empty_n;
output   src_cols_V_read;
input  [7:0] src_data_stream_V_dout;
input   src_data_stream_V_empty_n;
output   src_data_stream_V_read;
output  [7:0] dst1_data_stream_V_din;
input   dst1_data_stream_V_full_n;
output   dst1_data_stream_V_write;
output  [7:0] dst2_data_stream_V_din;
input   dst2_data_stream_V_full_n;
output   dst2_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_rows_V_read;
reg src_cols_V_read;
reg src_data_stream_V_read;
reg dst1_data_stream_V_write;
reg dst2_data_stream_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_22;
reg    src_rows_V_blk_n;
reg    src_cols_V_blk_n;
reg    src_data_stream_V_blk_n;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_62;
reg    ap_reg_ppiten_pp0_it1;
reg    ap_reg_ppiten_pp0_it0;
reg   [0:0] exitcond_i_reg_167;
reg    dst1_data_stream_V_blk_n;
reg    dst2_data_stream_V_blk_n;
reg   [10:0] p_3_i_reg_107;
reg   [11:0] rows_V_reg_148;
reg    ap_sig_84;
reg   [11:0] cols_V_reg_153;
wire   [0:0] exitcond3_i_fu_122_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_96;
wire   [10:0] i_V_fu_127_p2;
reg   [10:0] i_V_reg_162;
wire   [0:0] exitcond_i_fu_137_p2;
reg    ap_sig_109;
wire   [10:0] j_V_fu_142_p2;
reg   [10:0] p_i_reg_96;
reg    ap_sig_cseq_ST_st5_fsm_3;
reg    ap_sig_132;
wire   [11:0] p_cast_i_fu_118_p1;
wire   [11:0] p_3_cast_i_fu_133_p1;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'b1;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp0_it0 = 1'b0;
end

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
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond3_i_fu_122_p2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_109) & ~(1'b0 == exitcond_i_fu_137_p2))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond3_i_fu_122_p2))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_109) & (1'b0 == exitcond_i_fu_137_p2))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b1;
        end else if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond3_i_fu_122_p2)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_109) & ~(1'b0 == exitcond_i_fu_137_p2)))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_109) & (1'b0 == exitcond_i_fu_137_p2))) begin
        p_3_i_reg_107 <= j_V_fu_142_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond3_i_fu_122_p2))) begin
        p_3_i_reg_107 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_3)) begin
        p_i_reg_96 <= i_V_reg_162;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_84)) begin
        p_i_reg_96 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_84)) begin
        cols_V_reg_153 <= src_cols_V_dout;
        rows_V_reg_148 <= src_rows_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_109))) begin
        exitcond_i_reg_167 <= exitcond_i_fu_137_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_V_reg_162 <= i_V_fu_127_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond3_i_fu_122_p2)))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond3_i_fu_122_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_62) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_96) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_132) begin
        ap_sig_cseq_ST_st5_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_167 == 1'b0))) begin
        dst1_data_stream_V_blk_n = dst1_data_stream_V_full_n;
    end else begin
        dst1_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_167 == 1'b0) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_109))) begin
        dst1_data_stream_V_write = 1'b1;
    end else begin
        dst1_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_167 == 1'b0))) begin
        dst2_data_stream_V_blk_n = dst2_data_stream_V_full_n;
    end else begin
        dst2_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_167 == 1'b0) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_109))) begin
        dst2_data_stream_V_write = 1'b1;
    end else begin
        dst2_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~((ap_start == 1'b0) | (ap_done_reg == 1'b1)))) begin
        src_cols_V_blk_n = src_cols_V_empty_n;
    end else begin
        src_cols_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_84)) begin
        src_cols_V_read = 1'b1;
    end else begin
        src_cols_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_167 == 1'b0))) begin
        src_data_stream_V_blk_n = src_data_stream_V_empty_n;
    end else begin
        src_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_167 == 1'b0) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_109))) begin
        src_data_stream_V_read = 1'b1;
    end else begin
        src_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~((ap_start == 1'b0) | (ap_done_reg == 1'b1)))) begin
        src_rows_V_blk_n = src_rows_V_empty_n;
    end else begin
        src_rows_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_84)) begin
        src_rows_V_read = 1'b1;
    end else begin
        src_rows_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_84) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(1'b0 == exitcond3_i_fu_122_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : begin
            if (~((1'b1 == ap_reg_ppiten_pp0_it0) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_109) & ~(1'b0 == exitcond_i_fu_137_p2))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if (((1'b1 == ap_reg_ppiten_pp0_it0) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_109) & ~(1'b0 == exitcond_i_fu_137_p2))) begin
                ap_NS_fsm = ap_ST_st5_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st5_fsm_3 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_109 = (((exitcond_i_reg_167 == 1'b0) & (src_data_stream_V_empty_n == 1'b0)) | ((exitcond_i_reg_167 == 1'b0) & (dst1_data_stream_V_full_n == 1'b0)) | ((exitcond_i_reg_167 == 1'b0) & (dst2_data_stream_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_sig_132 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_22 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_62 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_84 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | (src_rows_V_empty_n == 1'b0) | (src_cols_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_sig_96 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign dst1_data_stream_V_din = src_data_stream_V_dout;

assign dst2_data_stream_V_din = src_data_stream_V_dout;

assign exitcond3_i_fu_122_p2 = ((p_cast_i_fu_118_p1 == rows_V_reg_148) ? 1'b1 : 1'b0);

assign exitcond_i_fu_137_p2 = ((p_3_cast_i_fu_133_p1 == cols_V_reg_153) ? 1'b1 : 1'b0);

assign i_V_fu_127_p2 = (p_i_reg_96 + ap_const_lv11_1);

assign j_V_fu_142_p2 = (p_3_i_reg_107 + ap_const_lv11_1);

assign p_3_cast_i_fu_133_p1 = p_3_i_reg_107;

assign p_cast_i_fu_118_p1 = p_i_reg_96;

endmodule //Sobel_allDirections_Duplicate_1080_1920_0_0_116
