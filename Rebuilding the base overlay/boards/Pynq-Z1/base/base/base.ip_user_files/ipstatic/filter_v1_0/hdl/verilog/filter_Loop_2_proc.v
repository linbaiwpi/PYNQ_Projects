// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module filter_Loop_2_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        kernel2_val_0_0_out_din,
        kernel2_val_0_0_out_full_n,
        kernel2_val_0_0_out_write,
        kernel2_val_0_1_out_din,
        kernel2_val_0_1_out_full_n,
        kernel2_val_0_1_out_write,
        kernel2_val_0_2_out_din,
        kernel2_val_0_2_out_full_n,
        kernel2_val_0_2_out_write,
        kernel2_val_1_0_out_din,
        kernel2_val_1_0_out_full_n,
        kernel2_val_1_0_out_write,
        kernel2_val_1_1_out_din,
        kernel2_val_1_1_out_full_n,
        kernel2_val_1_1_out_write,
        kernel2_val_1_2_out_din,
        kernel2_val_1_2_out_full_n,
        kernel2_val_1_2_out_write,
        kernel2_val_2_0_out_din,
        kernel2_val_2_0_out_full_n,
        kernel2_val_2_0_out_write,
        kernel2_val_2_1_out_din,
        kernel2_val_2_1_out_full_n,
        kernel2_val_2_1_out_write,
        kernel2_val_2_2_out_din,
        kernel2_val_2_2_out_full_n,
        kernel2_val_2_2_out_write
);

parameter    ap_ST_st1_fsm_0 = 5'b1;
parameter    ap_ST_st2_fsm_1 = 5'b10;
parameter    ap_ST_st3_fsm_2 = 5'b100;
parameter    ap_ST_st4_fsm_3 = 5'b1000;
parameter    ap_ST_st5_fsm_4 = 5'b10000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_1 = 2'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] kernel2_val_0_0_out_din;
input   kernel2_val_0_0_out_full_n;
output   kernel2_val_0_0_out_write;
output  [7:0] kernel2_val_0_1_out_din;
input   kernel2_val_0_1_out_full_n;
output   kernel2_val_0_1_out_write;
output  [7:0] kernel2_val_0_2_out_din;
input   kernel2_val_0_2_out_full_n;
output   kernel2_val_0_2_out_write;
output  [7:0] kernel2_val_1_0_out_din;
input   kernel2_val_1_0_out_full_n;
output   kernel2_val_1_0_out_write;
output  [7:0] kernel2_val_1_1_out_din;
input   kernel2_val_1_1_out_full_n;
output   kernel2_val_1_1_out_write;
output  [7:0] kernel2_val_1_2_out_din;
input   kernel2_val_1_2_out_full_n;
output   kernel2_val_1_2_out_write;
output  [7:0] kernel2_val_2_0_out_din;
input   kernel2_val_2_0_out_full_n;
output   kernel2_val_2_0_out_write;
output  [7:0] kernel2_val_2_1_out_din;
input   kernel2_val_2_1_out_full_n;
output   kernel2_val_2_1_out_write;
output  [7:0] kernel2_val_2_2_out_din;
input   kernel2_val_2_2_out_full_n;
output   kernel2_val_2_2_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg kernel2_val_0_0_out_write;
reg kernel2_val_0_1_out_write;
reg kernel2_val_0_2_out_write;
reg kernel2_val_1_0_out_write;
reg kernel2_val_1_1_out_write;
reg kernel2_val_1_2_out_write;
reg kernel2_val_2_0_out_write;
reg kernel2_val_2_1_out_write;
reg kernel2_val_2_2_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_23;
wire   [3:0] kernelCoef22_address0;
reg    kernelCoef22_ce0;
wire   [2:0] kernelCoef22_q0;
reg    kernel2_val_0_0_out_blk_n;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_79;
wire   [0:0] exitcond1_i_fu_221_p2;
reg    kernel2_val_0_1_out_blk_n;
reg    kernel2_val_0_2_out_blk_n;
reg    kernel2_val_1_0_out_blk_n;
reg    kernel2_val_1_1_out_blk_n;
reg    kernel2_val_1_2_out_blk_n;
reg    kernel2_val_2_0_out_blk_n;
reg    kernel2_val_2_1_out_blk_n;
reg    kernel2_val_2_2_out_blk_n;
wire   [1:0] i_fu_227_p2;
reg   [1:0] i_reg_687;
reg    ap_sig_122;
wire   [4:0] tmp_3_fu_249_p2;
reg   [4:0] tmp_3_reg_692;
wire   [0:0] sel_tmp_fu_255_p2;
reg   [0:0] sel_tmp_reg_697;
wire   [0:0] sel_tmp2_fu_261_p2;
reg   [0:0] sel_tmp2_reg_703;
wire   [0:0] sel_tmp13_fu_279_p2;
reg   [0:0] sel_tmp13_reg_710;
wire   [1:0] j_fu_291_p2;
reg   [1:0] j_reg_719;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_141;
wire   [0:0] exitcond_i_fu_285_p2;
wire   [0:0] tmp_1_fu_317_p2;
reg   [0:0] tmp_1_reg_729;
reg   [2:0] kernel2_val_2_0_reg_734;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_156;
wire   [0:0] tmp_fu_335_p2;
reg   [0:0] tmp_reg_739;
wire   [0:0] sel_tmp9_fu_341_p2;
reg   [0:0] sel_tmp9_reg_744;
wire   [0:0] sel_tmp4_fu_347_p2;
reg   [0:0] sel_tmp4_reg_750;
wire   [0:0] sel_tmp10_fu_358_p2;
reg   [0:0] sel_tmp10_reg_757;
wire   [0:0] sel_tmp14_fu_363_p2;
reg   [0:0] sel_tmp14_reg_764;
wire   [0:0] sel_tmp15_fu_368_p2;
reg   [0:0] sel_tmp15_reg_769;
wire   [0:0] or_cond_fu_373_p2;
reg   [0:0] or_cond_reg_775;
reg   [1:0] i1_i_reg_161;
reg    ap_sig_178;
reg   [1:0] j2_i_reg_173;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_190;
wire  signed [63:0] tmp_14_cast_fu_306_p1;
reg   [7:0] kernel2_val_2_2_1_fu_50;
wire   [7:0] kernel2_val_2_2_23_fu_577_p3;
reg   [7:0] kernel2_val_2_2_4_fu_54;
wire   [7:0] kernel2_val_2_2_22_fu_554_p3;
reg   [7:0] kernel2_val_2_2_6_fu_58;
wire   [7:0] kernel2_val_2_2_21_fu_530_p3;
reg   [7:0] kernel2_val_2_2_8_fu_62;
wire   [7:0] kernel2_val_2_2_20_fu_499_p3;
reg   [7:0] kernel2_val_2_2_10_fu_66;
wire   [7:0] kernel2_val_2_2_9_fu_484_p3;
reg   [7:0] kernel2_val_2_2_13_fu_70;
wire   [7:0] kernel2_val_2_2_7_fu_462_p3;
reg   [7:0] kernel2_val_2_2_14_fu_74;
wire   [7:0] kernel2_val_2_2_5_fu_448_p3;
reg   [7:0] kernel2_val_2_2_15_fu_78;
wire   [7:0] kernel2_val_2_2_3_fu_441_p3;
reg   [7:0] kernel2_val_2_2_16_fu_82;
wire   [7:0] kernel2_val_2_2_fu_426_p3;
wire   [3:0] tmp_2_fu_237_p3;
wire   [4:0] p_shl_cast_fu_245_p1;
wire   [4:0] tmp_i_cast_fu_233_p1;
wire   [0:0] sel_tmp11_fu_267_p2;
wire   [0:0] sel_tmp12_fu_273_p2;
wire   [4:0] tmp_20_i_cast_fu_297_p1;
wire   [4:0] tmp_4_fu_301_p2;
wire   [1:0] tmp_s_fu_311_p2;
wire   [0:0] sel_tmp3_fu_323_p2;
wire   [0:0] sel_tmp5_fu_329_p2;
wire   [0:0] sel_tmp8_fu_352_p2;
wire   [0:0] sel_tmp7_fu_390_p2;
wire   [0:0] sel_tmp1_fu_386_p2;
wire   [0:0] sel_tmp6_fu_382_p2;
wire   [0:0] or_cond1_fu_394_p2;
wire   [0:0] or_cond2_fu_399_p2;
wire   [0:0] or_cond3_fu_403_p2;
wire   [0:0] or_cond4_fu_409_p2;
wire   [0:0] or_cond5_fu_414_p2;
wire   [0:0] or_cond6_fu_420_p2;
wire  signed [7:0] kernel2_val_2_0_cast_fu_379_p1;
wire   [7:0] kernel2_val_2_2_2_fu_434_p3;
wire   [7:0] newSel_fu_455_p3;
wire   [7:0] newSel2_fu_470_p3;
wire   [7:0] newSel3_fu_477_p3;
wire   [7:0] newSel5_fu_492_p3;
wire   [7:0] newSel7_fu_506_p3;
wire   [7:0] newSel8_fu_514_p3;
wire   [7:0] newSel9_fu_522_p3;
wire   [7:0] newSel1_fu_538_p3;
wire   [7:0] newSel4_fu_546_p3;
wire   [7:0] newSel6_fu_562_p3;
wire   [7:0] newSel10_fu_569_p3;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'b1;
end

filter_Loop_2_proc_kernelCoef22 #(
    .DataWidth( 3 ),
    .AddressRange( 9 ),
    .AddressWidth( 4 ))
kernelCoef22_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(kernelCoef22_address0),
    .ce0(kernelCoef22_ce0),
    .q0(kernelCoef22_q0)
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
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond_i_fu_285_p2))) begin
        i1_i_reg_161 <= i_reg_687;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_178)) begin
        i1_i_reg_161 <= ap_const_lv2_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        j2_i_reg_173 <= j_reg_719;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        j2_i_reg_173 <= ap_const_lv2_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_122)) begin
        i_reg_687 <= i_fu_227_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        j_reg_719 <= j_fu_291_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        kernel2_val_2_0_reg_734 <= kernelCoef22_q0;
        or_cond_reg_775 <= or_cond_fu_373_p2;
        sel_tmp10_reg_757 <= sel_tmp10_fu_358_p2;
        sel_tmp14_reg_764 <= sel_tmp14_fu_363_p2;
        sel_tmp15_reg_769 <= sel_tmp15_fu_368_p2;
        sel_tmp4_reg_750 <= sel_tmp4_fu_347_p2;
        sel_tmp9_reg_744 <= sel_tmp9_fu_341_p2;
        tmp_reg_739 <= tmp_fu_335_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        kernel2_val_2_2_10_fu_66 <= kernel2_val_2_2_9_fu_484_p3;
        kernel2_val_2_2_13_fu_70 <= kernel2_val_2_2_7_fu_462_p3;
        kernel2_val_2_2_14_fu_74 <= kernel2_val_2_2_5_fu_448_p3;
        kernel2_val_2_2_15_fu_78 <= kernel2_val_2_2_3_fu_441_p3;
        kernel2_val_2_2_16_fu_82 <= kernel2_val_2_2_fu_426_p3;
        kernel2_val_2_2_1_fu_50 <= kernel2_val_2_2_23_fu_577_p3;
        kernel2_val_2_2_4_fu_54 <= kernel2_val_2_2_22_fu_554_p3;
        kernel2_val_2_2_6_fu_58 <= kernel2_val_2_2_21_fu_530_p3;
        kernel2_val_2_2_8_fu_62 <= kernel2_val_2_2_20_fu_499_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        sel_tmp13_reg_710 <= sel_tmp13_fu_279_p2;
        sel_tmp2_reg_703 <= sel_tmp2_fu_261_p2;
        sel_tmp_reg_697 <= sel_tmp_fu_255_p2;
        tmp_3_reg_692 <= tmp_3_fu_249_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond_i_fu_285_p2))) begin
        tmp_1_reg_729 <= tmp_1_fu_317_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_79) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_141) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_156) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_190) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0))) begin
        kernel2_val_0_0_out_blk_n = kernel2_val_0_0_out_full_n;
    end else begin
        kernel2_val_0_0_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        kernel2_val_0_0_out_write = 1'b1;
    end else begin
        kernel2_val_0_0_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0))) begin
        kernel2_val_0_1_out_blk_n = kernel2_val_0_1_out_full_n;
    end else begin
        kernel2_val_0_1_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        kernel2_val_0_1_out_write = 1'b1;
    end else begin
        kernel2_val_0_1_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0))) begin
        kernel2_val_0_2_out_blk_n = kernel2_val_0_2_out_full_n;
    end else begin
        kernel2_val_0_2_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        kernel2_val_0_2_out_write = 1'b1;
    end else begin
        kernel2_val_0_2_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0))) begin
        kernel2_val_1_0_out_blk_n = kernel2_val_1_0_out_full_n;
    end else begin
        kernel2_val_1_0_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        kernel2_val_1_0_out_write = 1'b1;
    end else begin
        kernel2_val_1_0_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0))) begin
        kernel2_val_1_1_out_blk_n = kernel2_val_1_1_out_full_n;
    end else begin
        kernel2_val_1_1_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        kernel2_val_1_1_out_write = 1'b1;
    end else begin
        kernel2_val_1_1_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0))) begin
        kernel2_val_1_2_out_blk_n = kernel2_val_1_2_out_full_n;
    end else begin
        kernel2_val_1_2_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        kernel2_val_1_2_out_write = 1'b1;
    end else begin
        kernel2_val_1_2_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0))) begin
        kernel2_val_2_0_out_blk_n = kernel2_val_2_0_out_full_n;
    end else begin
        kernel2_val_2_0_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        kernel2_val_2_0_out_write = 1'b1;
    end else begin
        kernel2_val_2_0_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0))) begin
        kernel2_val_2_1_out_blk_n = kernel2_val_2_1_out_full_n;
    end else begin
        kernel2_val_2_1_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        kernel2_val_2_1_out_write = 1'b1;
    end else begin
        kernel2_val_2_1_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0))) begin
        kernel2_val_2_2_out_blk_n = kernel2_val_2_2_out_full_n;
    end else begin
        kernel2_val_2_2_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
        kernel2_val_2_2_out_write = 1'b1;
    end else begin
        kernel2_val_2_2_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        kernelCoef22_ce0 = 1'b1;
    end else begin
        kernelCoef22_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_178) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if ((~(exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else if (((exitcond1_i_fu_221_p2 == 1'b0) & ~ap_sig_122)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if ((1'b0 == exitcond_i_fu_285_p2)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_122 = ((~(exitcond1_i_fu_221_p2 == 1'b0) & (kernel2_val_0_0_out_full_n == 1'b0)) | (~(exitcond1_i_fu_221_p2 == 1'b0) & (kernel2_val_0_1_out_full_n == 1'b0)) | (~(exitcond1_i_fu_221_p2 == 1'b0) & (kernel2_val_0_2_out_full_n == 1'b0)) | (~(exitcond1_i_fu_221_p2 == 1'b0) & (kernel2_val_1_0_out_full_n == 1'b0)) | (~(exitcond1_i_fu_221_p2 == 1'b0) & (kernel2_val_1_1_out_full_n == 1'b0)) | (~(exitcond1_i_fu_221_p2 == 1'b0) & (kernel2_val_1_2_out_full_n == 1'b0)) | (~(exitcond1_i_fu_221_p2 == 1'b0) & (kernel2_val_2_0_out_full_n == 1'b0)) | (~(exitcond1_i_fu_221_p2 == 1'b0) & (kernel2_val_2_1_out_full_n == 1'b0)) | (~(exitcond1_i_fu_221_p2 == 1'b0) & (kernel2_val_2_2_out_full_n == 1'b0)));
end

always @ (*) begin
    ap_sig_141 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_156 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_178 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_sig_190 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_23 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_79 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign exitcond1_i_fu_221_p2 = ((i1_i_reg_161 == ap_const_lv2_3) ? 1'b1 : 1'b0);

assign exitcond_i_fu_285_p2 = ((j2_i_reg_173 == ap_const_lv2_3) ? 1'b1 : 1'b0);

assign i_fu_227_p2 = (i1_i_reg_161 + ap_const_lv2_1);

assign j_fu_291_p2 = (j2_i_reg_173 + ap_const_lv2_1);

assign kernel2_val_0_0_out_din = kernel2_val_2_2_1_fu_50;

assign kernel2_val_0_1_out_din = kernel2_val_2_2_4_fu_54;

assign kernel2_val_0_2_out_din = kernel2_val_2_2_6_fu_58;

assign kernel2_val_1_0_out_din = kernel2_val_2_2_8_fu_62;

assign kernel2_val_1_1_out_din = kernel2_val_2_2_10_fu_66;

assign kernel2_val_1_2_out_din = kernel2_val_2_2_13_fu_70;

assign kernel2_val_2_0_cast_fu_379_p1 = $signed(kernel2_val_2_0_reg_734);

assign kernel2_val_2_0_out_din = kernel2_val_2_2_14_fu_74;

assign kernel2_val_2_1_out_din = kernel2_val_2_2_15_fu_78;

assign kernel2_val_2_2_20_fu_499_p3 = ((or_cond_reg_775[0:0] === 1'b1) ? kernel2_val_2_2_8_fu_62 : newSel5_fu_492_p3);

assign kernel2_val_2_2_21_fu_530_p3 = ((or_cond6_fu_420_p2[0:0] === 1'b1) ? newSel9_fu_522_p3 : kernel2_val_2_2_6_fu_58);

assign kernel2_val_2_2_22_fu_554_p3 = ((or_cond4_fu_409_p2[0:0] === 1'b1) ? kernel2_val_2_2_4_fu_54 : newSel4_fu_546_p3);

assign kernel2_val_2_2_23_fu_577_p3 = ((or_cond4_fu_409_p2[0:0] === 1'b1) ? kernel2_val_2_2_1_fu_50 : newSel10_fu_569_p3);

assign kernel2_val_2_2_2_fu_434_p3 = ((sel_tmp14_reg_764[0:0] === 1'b1) ? kernel2_val_2_0_cast_fu_379_p1 : kernel2_val_2_2_15_fu_78);

assign kernel2_val_2_2_3_fu_441_p3 = ((sel_tmp15_reg_769[0:0] === 1'b1) ? kernel2_val_2_2_15_fu_78 : kernel2_val_2_2_2_fu_434_p3);

assign kernel2_val_2_2_5_fu_448_p3 = ((sel_tmp15_reg_769[0:0] === 1'b1) ? kernel2_val_2_0_cast_fu_379_p1 : kernel2_val_2_2_14_fu_74);

assign kernel2_val_2_2_7_fu_462_p3 = ((or_cond4_fu_409_p2[0:0] === 1'b1) ? kernel2_val_2_2_13_fu_70 : newSel_fu_455_p3);

assign kernel2_val_2_2_9_fu_484_p3 = ((or_cond4_fu_409_p2[0:0] === 1'b1) ? newSel3_fu_477_p3 : kernel2_val_2_2_10_fu_66);

assign kernel2_val_2_2_fu_426_p3 = ((or_cond6_fu_420_p2[0:0] === 1'b1) ? kernel2_val_2_2_16_fu_82 : kernel2_val_2_0_cast_fu_379_p1);

assign kernel2_val_2_2_out_din = kernel2_val_2_2_16_fu_82;

assign kernelCoef22_address0 = tmp_14_cast_fu_306_p1;

assign newSel10_fu_569_p3 = ((or_cond2_fu_399_p2[0:0] === 1'b1) ? newSel6_fu_562_p3 : kernel2_val_2_2_1_fu_50);

assign newSel1_fu_538_p3 = ((sel_tmp1_fu_386_p2[0:0] === 1'b1) ? kernel2_val_2_0_cast_fu_379_p1 : kernel2_val_2_2_4_fu_54);

assign newSel2_fu_470_p3 = ((sel_tmp10_reg_757[0:0] === 1'b1) ? kernel2_val_2_2_10_fu_66 : kernel2_val_2_0_cast_fu_379_p1);

assign newSel3_fu_477_p3 = ((or_cond_reg_775[0:0] === 1'b1) ? kernel2_val_2_2_10_fu_66 : newSel2_fu_470_p3);

assign newSel4_fu_546_p3 = ((or_cond2_fu_399_p2[0:0] === 1'b1) ? kernel2_val_2_2_4_fu_54 : newSel1_fu_538_p3);

assign newSel5_fu_492_p3 = ((sel_tmp10_reg_757[0:0] === 1'b1) ? kernel2_val_2_0_cast_fu_379_p1 : kernel2_val_2_2_8_fu_62);

assign newSel6_fu_562_p3 = ((sel_tmp4_reg_750[0:0] === 1'b1) ? kernel2_val_2_2_1_fu_50 : kernel2_val_2_0_cast_fu_379_p1);

assign newSel7_fu_506_p3 = ((sel_tmp1_fu_386_p2[0:0] === 1'b1) ? kernel2_val_2_2_6_fu_58 : kernel2_val_2_0_cast_fu_379_p1);

assign newSel8_fu_514_p3 = ((or_cond2_fu_399_p2[0:0] === 1'b1) ? kernel2_val_2_2_6_fu_58 : newSel7_fu_506_p3);

assign newSel9_fu_522_p3 = ((or_cond4_fu_409_p2[0:0] === 1'b1) ? kernel2_val_2_2_6_fu_58 : newSel8_fu_514_p3);

assign newSel_fu_455_p3 = ((sel_tmp4_reg_750[0:0] === 1'b1) ? kernel2_val_2_0_cast_fu_379_p1 : kernel2_val_2_2_13_fu_70);

assign or_cond1_fu_394_p2 = (sel_tmp10_reg_757 | sel_tmp7_fu_390_p2);

assign or_cond2_fu_399_p2 = (sel_tmp4_reg_750 | tmp_1_reg_729);

assign or_cond3_fu_403_p2 = (sel_tmp1_fu_386_p2 | sel_tmp6_fu_382_p2);

assign or_cond4_fu_409_p2 = (or_cond_reg_775 | or_cond1_fu_394_p2);

assign or_cond5_fu_414_p2 = (or_cond2_fu_399_p2 | or_cond3_fu_403_p2);

assign or_cond6_fu_420_p2 = (or_cond4_fu_409_p2 | or_cond5_fu_414_p2);

assign or_cond_fu_373_p2 = (sel_tmp15_fu_368_p2 | sel_tmp14_fu_363_p2);

assign p_shl_cast_fu_245_p1 = tmp_2_fu_237_p3;

assign sel_tmp10_fu_358_p2 = (sel_tmp2_reg_703 & sel_tmp8_fu_352_p2);

assign sel_tmp11_fu_267_p2 = ((i1_i_reg_161 != ap_const_lv2_0) ? 1'b1 : 1'b0);

assign sel_tmp12_fu_273_p2 = ((i1_i_reg_161 != ap_const_lv2_1) ? 1'b1 : 1'b0);

assign sel_tmp13_fu_279_p2 = (sel_tmp11_fu_267_p2 & sel_tmp12_fu_273_p2);

assign sel_tmp14_fu_363_p2 = (sel_tmp13_reg_710 & sel_tmp9_fu_341_p2);

assign sel_tmp15_fu_368_p2 = (sel_tmp13_reg_710 & sel_tmp8_fu_352_p2);

assign sel_tmp1_fu_386_p2 = (sel_tmp_reg_697 & sel_tmp9_reg_744);

assign sel_tmp2_fu_261_p2 = ((i1_i_reg_161 == ap_const_lv2_1) ? 1'b1 : 1'b0);

assign sel_tmp3_fu_323_p2 = ((j2_i_reg_173 != ap_const_lv2_0) ? 1'b1 : 1'b0);

assign sel_tmp4_fu_347_p2 = (tmp_fu_335_p2 & sel_tmp2_reg_703);

assign sel_tmp5_fu_329_p2 = ((j2_i_reg_173 != ap_const_lv2_1) ? 1'b1 : 1'b0);

assign sel_tmp6_fu_382_p2 = (tmp_reg_739 & sel_tmp_reg_697);

assign sel_tmp7_fu_390_p2 = (sel_tmp2_reg_703 & sel_tmp9_reg_744);

assign sel_tmp8_fu_352_p2 = ((j2_i_reg_173 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign sel_tmp9_fu_341_p2 = ((j2_i_reg_173 == ap_const_lv2_1) ? 1'b1 : 1'b0);

assign sel_tmp_fu_255_p2 = ((i1_i_reg_161 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign tmp_14_cast_fu_306_p1 = $signed(tmp_4_fu_301_p2);

assign tmp_1_fu_317_p2 = ((tmp_s_fu_311_p2 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign tmp_20_i_cast_fu_297_p1 = j2_i_reg_173;

assign tmp_2_fu_237_p3 = {{i1_i_reg_161}, {ap_const_lv2_0}};

assign tmp_3_fu_249_p2 = (p_shl_cast_fu_245_p1 - tmp_i_cast_fu_233_p1);

assign tmp_4_fu_301_p2 = (tmp_3_reg_692 + tmp_20_i_cast_fu_297_p1);

assign tmp_fu_335_p2 = (sel_tmp3_fu_323_p2 & sel_tmp5_fu_329_p2);

assign tmp_i_cast_fu_233_p1 = i1_i_reg_161;

assign tmp_s_fu_311_p2 = (i1_i_reg_161 | j2_i_reg_173);

endmodule //filter_Loop_2_proc