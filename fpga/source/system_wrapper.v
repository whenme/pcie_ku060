//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Wed Jul 17 15:12:28 2024
//Host        : fwk-nv32-cwillard running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (C0_DDR4_act_n,
    C0_DDR4_adr,
    C0_DDR4_ba,
    C0_DDR4_bg,
    C0_DDR4_ck_c,
    C0_DDR4_ck_t,
    C0_DDR4_cke,
    C0_DDR4_cs_n,
    C0_DDR4_dm_n,
    C0_DDR4_dq,
    C0_DDR4_dqs_c,
    C0_DDR4_dqs_t,
    C0_DDR4_odt,
    C0_DDR4_reset_n,
    button_tri_i,
    led_tri_o,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_ref_clk_n,
    pcie_ref_clk_p,
    pcie_rst_n,
    sysclk_clk_n,
    sysclk_clk_p);
  output C0_DDR4_act_n;
  output [16:0]C0_DDR4_adr;
  output [1:0]C0_DDR4_ba;
  output [0:0]C0_DDR4_bg;
  output [0:0]C0_DDR4_ck_c;
  output [0:0]C0_DDR4_ck_t;
  output [0:0]C0_DDR4_cke;
  output [0:0]C0_DDR4_cs_n;
  inout [0:0]C0_DDR4_dm_n;
  inout [7:0]C0_DDR4_dq;
  inout [0:0]C0_DDR4_dqs_c;
  inout [0:0]C0_DDR4_dqs_t;
  output [0:0]C0_DDR4_odt;
  output C0_DDR4_reset_n;
  input [2:0]button_tri_i;
  output [2:0]led_tri_o;
  input [7:0]pcie_mgt_rxn;
  input [7:0]pcie_mgt_rxp;
  output [7:0]pcie_mgt_txn;
  output [7:0]pcie_mgt_txp;
  input [0:0]pcie_ref_clk_n;
  input [0:0]pcie_ref_clk_p;
  input pcie_rst_n;
  input sysclk_clk_n;
  input sysclk_clk_p;

  wire C0_DDR4_act_n;
  wire [16:0]C0_DDR4_adr;
  wire [1:0]C0_DDR4_ba;
  wire [0:0]C0_DDR4_bg;
  wire [0:0]C0_DDR4_ck_c;
  wire [0:0]C0_DDR4_ck_t;
  wire [0:0]C0_DDR4_cke;
  wire [0:0]C0_DDR4_cs_n;
  wire [0:0]C0_DDR4_dm_n;
  wire [7:0]C0_DDR4_dq;
  wire [0:0]C0_DDR4_dqs_c;
  wire [0:0]C0_DDR4_dqs_t;
  wire [0:0]C0_DDR4_odt;
  wire C0_DDR4_reset_n;
  wire [2:0]button_tri_i;
  wire [2:0]led_tri_o;
  wire [7:0]pcie_mgt_rxn;
  wire [7:0]pcie_mgt_rxp;
  wire [7:0]pcie_mgt_txn;
  wire [7:0]pcie_mgt_txp;
  wire [0:0]pcie_ref_clk_n;
  wire [0:0]pcie_ref_clk_p;
  wire pcie_rst_n;
  wire sysclk_clk_n;
  wire sysclk_clk_p;

  system system_i
       (.C0_DDR4_act_n(C0_DDR4_act_n),
        .C0_DDR4_adr(C0_DDR4_adr),
        .C0_DDR4_ba(C0_DDR4_ba),
        .C0_DDR4_bg(C0_DDR4_bg),
        .C0_DDR4_ck_c(C0_DDR4_ck_c),
        .C0_DDR4_ck_t(C0_DDR4_ck_t),
        .C0_DDR4_cke(C0_DDR4_cke),
        .C0_DDR4_cs_n(C0_DDR4_cs_n),
        .C0_DDR4_dm_n(C0_DDR4_dm_n),
        .C0_DDR4_dq(C0_DDR4_dq),
        .C0_DDR4_dqs_c(C0_DDR4_dqs_c),
        .C0_DDR4_dqs_t(C0_DDR4_dqs_t),
        .C0_DDR4_odt(C0_DDR4_odt),
        .C0_DDR4_reset_n(C0_DDR4_reset_n),
        .button_tri_i(button_tri_i),
        .led_tri_o(led_tri_o),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .pcie_ref_clk_n(pcie_ref_clk_n),
        .pcie_ref_clk_p(pcie_ref_clk_p),
        .pcie_rst_n(pcie_rst_n),
        .sysclk_clk_n(sysclk_clk_n),
        .sysclk_clk_p(sysclk_clk_p));
endmodule
