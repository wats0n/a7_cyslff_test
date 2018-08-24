// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Aug 12 10:16:43 2018
// Host        : wats0n-miair running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Projects/FPGA/a7_cyslff_test/a7_cyslff_test.srcs/sources_1/bd/design_1/ip/design_1_auto_us_cc_df_1/design_1_auto_us_cc_df_1_sim_netlist.v
// Design      : design_1_auto_us_cc_df_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_auto_us_cc_df_1,axi_dwidth_converter_v2_1_17_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_dwidth_converter_v2_1_17_top,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_auto_us_cc_df_1
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_CLK, FREQ_HZ 12500000, PHASE 0.000, CLK_DOMAIN design_1_udma_wclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 12500000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_udma_wclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 MI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_CLK, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN" *) input m_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 MI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input m_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREGION" *) output [3:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [127:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [15:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 4, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_axi_bready;

  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [127:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_rready_UNCONNECTED;
  wire NLW_inst_s_axi_arready_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_inst_s_axi_rvalid_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_IS_ACLK_ASYNC = "1" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_SUPPORTS_READ = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FIFO_MODE = "2" *) 
  (* C_MAX_SPLIT_BEATS = "16" *) 
  (* C_M_AXI_ACLK_RATIO = "2" *) 
  (* C_M_AXI_BYTES_LOG = "4" *) 
  (* C_M_AXI_DATA_WIDTH = "128" *) 
  (* C_PACKING_LEVEL = "1" *) 
  (* C_RATIO = "0" *) 
  (* C_RATIO_LOG = "0" *) 
  (* C_SUPPORTS_ID = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "1" *) 
  (* C_S_AXI_BYTES_LOG = "2" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_CONVERSION = "2" *) 
  (* P_MAX_SPLIT_BEATS = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_auto_us_cc_df_1_axi_dwidth_converter_v2_1_17_top inst
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b1),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_17_a_upsizer" *) 
module design_1_auto_us_cc_df_1_axi_dwidth_converter_v2_1_17_a_upsizer
   (CO,
    cmd_push_block_reg_0,
    allow_new_cmd__0,
    SR,
    s_axi_aclk,
    DI,
    S,
    \USE_WRITE.wr_cmd_ready ,
    \USE_WRITE.m_axi_awready_i ,
    sr_awvalid);
  output [0:0]CO;
  output cmd_push_block_reg_0;
  output allow_new_cmd__0;
  input [0:0]SR;
  input s_axi_aclk;
  input [3:0]DI;
  input [3:0]S;
  input \USE_WRITE.wr_cmd_ready ;
  input \USE_WRITE.m_axi_awready_i ;
  input sr_awvalid;

  wire [0:0]CO;
  wire [3:0]DI;
  wire \NO_CMD_QUEUE.cmd_cnt14_out ;
  wire \NO_CMD_QUEUE.cmd_cnt[0]_i_1_n_0 ;
  wire \NO_CMD_QUEUE.cmd_cnt[1]_i_1_n_0 ;
  wire \NO_CMD_QUEUE.cmd_cnt[2]_i_1_n_0 ;
  wire \NO_CMD_QUEUE.cmd_cnt[3]_i_1_n_0 ;
  wire \NO_CMD_QUEUE.cmd_cnt[4]_i_1_n_0 ;
  wire \NO_CMD_QUEUE.cmd_cnt[4]_i_2_n_0 ;
  wire \NO_CMD_QUEUE.cmd_cnt[4]_i_3_n_0 ;
  wire \NO_CMD_QUEUE.cmd_cnt[4]_i_4_n_0 ;
  wire [4:0]\NO_CMD_QUEUE.cmd_cnt_reg__0 ;
  wire [3:0]S;
  wire [0:0]SR;
  wire \USE_WRITE.m_axi_awready_i ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire allow_new_cmd__0;
  wire cmd_packed_wrap_i1_carry_n_1;
  wire cmd_packed_wrap_i1_carry_n_2;
  wire cmd_packed_wrap_i1_carry_n_3;
  wire cmd_push_block;
  wire cmd_push_block0;
  wire cmd_push_block_reg_0;
  wire s_axi_aclk;
  wire sr_awvalid;
  wire [3:0]NLW_cmd_packed_wrap_i1_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \NO_CMD_QUEUE.cmd_cnt[0]_i_1 
       (.I0(\NO_CMD_QUEUE.cmd_cnt_reg__0 [0]),
        .O(\NO_CMD_QUEUE.cmd_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \NO_CMD_QUEUE.cmd_cnt[1]_i_1 
       (.I0(\NO_CMD_QUEUE.cmd_cnt_reg__0 [1]),
        .I1(\NO_CMD_QUEUE.cmd_cnt_reg__0 [0]),
        .I2(\NO_CMD_QUEUE.cmd_cnt14_out ),
        .O(\NO_CMD_QUEUE.cmd_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \NO_CMD_QUEUE.cmd_cnt[2]_i_1 
       (.I0(\NO_CMD_QUEUE.cmd_cnt_reg__0 [2]),
        .I1(\NO_CMD_QUEUE.cmd_cnt_reg__0 [1]),
        .I2(\NO_CMD_QUEUE.cmd_cnt_reg__0 [0]),
        .I3(\NO_CMD_QUEUE.cmd_cnt14_out ),
        .O(\NO_CMD_QUEUE.cmd_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \NO_CMD_QUEUE.cmd_cnt[3]_i_1 
       (.I0(\NO_CMD_QUEUE.cmd_cnt_reg__0 [3]),
        .I1(\NO_CMD_QUEUE.cmd_cnt_reg__0 [2]),
        .I2(\NO_CMD_QUEUE.cmd_cnt_reg__0 [1]),
        .I3(\NO_CMD_QUEUE.cmd_cnt_reg__0 [0]),
        .I4(\NO_CMD_QUEUE.cmd_cnt14_out ),
        .O(\NO_CMD_QUEUE.cmd_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE00000000FFFF)) 
    \NO_CMD_QUEUE.cmd_cnt[4]_i_1 
       (.I0(\NO_CMD_QUEUE.cmd_cnt[4]_i_3_n_0 ),
        .I1(\NO_CMD_QUEUE.cmd_cnt_reg__0 [2]),
        .I2(\NO_CMD_QUEUE.cmd_cnt_reg__0 [1]),
        .I3(\NO_CMD_QUEUE.cmd_cnt_reg__0 [0]),
        .I4(\USE_WRITE.wr_cmd_ready ),
        .I5(\NO_CMD_QUEUE.cmd_cnt[4]_i_4_n_0 ),
        .O(\NO_CMD_QUEUE.cmd_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \NO_CMD_QUEUE.cmd_cnt[4]_i_2 
       (.I0(\NO_CMD_QUEUE.cmd_cnt_reg__0 [4]),
        .I1(\NO_CMD_QUEUE.cmd_cnt_reg__0 [3]),
        .I2(\NO_CMD_QUEUE.cmd_cnt_reg__0 [2]),
        .I3(\NO_CMD_QUEUE.cmd_cnt_reg__0 [1]),
        .I4(\NO_CMD_QUEUE.cmd_cnt_reg__0 [0]),
        .I5(\NO_CMD_QUEUE.cmd_cnt14_out ),
        .O(\NO_CMD_QUEUE.cmd_cnt[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \NO_CMD_QUEUE.cmd_cnt[4]_i_3 
       (.I0(\NO_CMD_QUEUE.cmd_cnt_reg__0 [3]),
        .I1(\NO_CMD_QUEUE.cmd_cnt_reg__0 [4]),
        .O(\NO_CMD_QUEUE.cmd_cnt[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \NO_CMD_QUEUE.cmd_cnt[4]_i_4 
       (.I0(cmd_push_block_reg_0),
        .I1(cmd_push_block),
        .O(\NO_CMD_QUEUE.cmd_cnt[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \NO_CMD_QUEUE.cmd_cnt[4]_i_5 
       (.I0(cmd_push_block),
        .I1(cmd_push_block_reg_0),
        .I2(\USE_WRITE.wr_cmd_ready ),
        .O(\NO_CMD_QUEUE.cmd_cnt14_out ));
  FDRE #(
    .INIT(1'b0)) 
    \NO_CMD_QUEUE.cmd_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\NO_CMD_QUEUE.cmd_cnt[4]_i_1_n_0 ),
        .D(\NO_CMD_QUEUE.cmd_cnt[0]_i_1_n_0 ),
        .Q(\NO_CMD_QUEUE.cmd_cnt_reg__0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \NO_CMD_QUEUE.cmd_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\NO_CMD_QUEUE.cmd_cnt[4]_i_1_n_0 ),
        .D(\NO_CMD_QUEUE.cmd_cnt[1]_i_1_n_0 ),
        .Q(\NO_CMD_QUEUE.cmd_cnt_reg__0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \NO_CMD_QUEUE.cmd_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\NO_CMD_QUEUE.cmd_cnt[4]_i_1_n_0 ),
        .D(\NO_CMD_QUEUE.cmd_cnt[2]_i_1_n_0 ),
        .Q(\NO_CMD_QUEUE.cmd_cnt_reg__0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \NO_CMD_QUEUE.cmd_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\NO_CMD_QUEUE.cmd_cnt[4]_i_1_n_0 ),
        .D(\NO_CMD_QUEUE.cmd_cnt[3]_i_1_n_0 ),
        .Q(\NO_CMD_QUEUE.cmd_cnt_reg__0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \NO_CMD_QUEUE.cmd_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\NO_CMD_QUEUE.cmd_cnt[4]_i_1_n_0 ),
        .D(\NO_CMD_QUEUE.cmd_cnt[4]_i_2_n_0 ),
        .Q(\NO_CMD_QUEUE.cmd_cnt_reg__0 [4]),
        .R(SR));
  CARRY4 cmd_packed_wrap_i1_carry
       (.CI(1'b0),
        .CO({CO,cmd_packed_wrap_i1_carry_n_1,cmd_packed_wrap_i1_carry_n_2,cmd_packed_wrap_i1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_cmd_packed_wrap_i1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  LUT2 #(
    .INIT(4'h1)) 
    cmd_push_block_i_1
       (.I0(cmd_push_block_reg_0),
        .I1(\USE_WRITE.m_axi_awready_i ),
        .O(cmd_push_block0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cmd_push_block0),
        .Q(cmd_push_block),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    m_valid_i_i_2
       (.I0(\NO_CMD_QUEUE.cmd_cnt_reg__0 [1]),
        .I1(\NO_CMD_QUEUE.cmd_cnt_reg__0 [2]),
        .I2(\NO_CMD_QUEUE.cmd_cnt_reg__0 [3]),
        .I3(\NO_CMD_QUEUE.cmd_cnt_reg__0 [4]),
        .I4(\NO_CMD_QUEUE.cmd_cnt_reg__0 [0]),
        .I5(cmd_push_block),
        .O(allow_new_cmd__0));
  LUT2 #(
    .INIT(4'h7)) 
    s_ready_i_i_2
       (.I0(allow_new_cmd__0),
        .I1(sr_awvalid),
        .O(cmd_push_block_reg_0));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_17_axi_upsizer" *) 
module design_1_auto_us_cc_df_1_axi_dwidth_converter_v2_1_17_axi_upsizer
   (m_axi_wdata,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    s_axi_bresp,
    s_axi_bvalid,
    m_axi_bready,
    s_axi_awready,
    m_axi_wlast,
    s_axi_wready,
    m_axi_wvalid,
    m_axi_wstrb,
    m_axi_awvalid,
    CLK,
    s_axi_aclk,
    dina,
    s_axi_bready,
    m_axi_bresp,
    m_axi_bvalid,
    s_axi_awvalid,
    D,
    out,
    s_axi_wlast,
    s_axi_wvalid,
    m_axi_wready,
    m_axi_awready,
    s_axi_aresetn);
  output [127:0]m_axi_wdata;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output m_axi_bready;
  output s_axi_awready;
  output m_axi_wlast;
  output s_axi_wready;
  output m_axi_wvalid;
  output [15:0]m_axi_wstrb;
  output m_axi_awvalid;
  input CLK;
  input s_axi_aclk;
  input [35:0]dina;
  input s_axi_bready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input s_axi_awvalid;
  input [60:0]D;
  input out;
  input s_axi_wlast;
  input s_axi_wvalid;
  input m_axi_wready;
  input m_axi_awready;
  input s_axi_aresetn;

  wire CLK;
  wire [60:0]D;
  wire \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_192 ;
  wire \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_198 ;
  wire \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_200 ;
  wire \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_201 ;
  wire \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_219 ;
  wire \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_220 ;
  wire [5:0]\USE_WRITE.m_axi_awaddr_i ;
  wire [1:0]\USE_WRITE.m_axi_awburst_i ;
  wire [7:0]\USE_WRITE.m_axi_awlen_i ;
  wire \USE_WRITE.m_axi_awready_i ;
  wire [2:0]\USE_WRITE.m_axi_awsize_i ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_1 ;
  wire allow_new_cmd__0;
  wire cmd_packed_wrap_i1;
  wire [35:0]dina;
  wire [3:0]f_mi_be_last_index_return;
  wire [2:0]f_si_wrap_be_return;
  wire [1:0]f_si_wrap_word_return;
  wire load_si_ptr;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [127:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire out;
  wire [3:0]p_0_in;
  wire [1:1]p_0_in_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [3:3]s_axi_awlen_ii;
  wire s_axi_awlock_ii;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [0:0]si_buf_addr;
  wire si_register_slice_inst_n_80;
  wire si_register_slice_inst_n_81;
  wire si_register_slice_inst_n_82;
  wire si_register_slice_inst_n_83;
  wire si_register_slice_inst_n_87;
  wire si_register_slice_inst_n_90;
  wire si_register_slice_inst_n_91;
  wire si_register_slice_inst_n_92;
  wire si_register_slice_inst_n_93;
  wire si_register_slice_inst_n_94;
  wire si_register_slice_inst_n_95;
  wire si_register_slice_inst_n_96;
  wire si_register_slice_inst_n_97;
  wire si_register_slice_inst_n_98;
  wire si_register_slice_inst_n_99;
  wire [0:0]si_wrap_cnt_reg;
  wire sm_aresetn;
  wire [31:0]sr_awaddr;
  wire [1:0]sr_awburst;
  wire [3:0]sr_awcache;
  wire [2:0]sr_awprot;
  wire [3:0]sr_awqos;
  wire [3:0]sr_awregion;
  wire [1:0]sr_awsize;
  wire sr_awvalid;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_almost_empty_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_almost_full_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_dbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_overflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_prog_empty_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_prog_full_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_sbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_underflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_dbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_overflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_prog_empty_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_prog_full_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_sbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_underflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_dbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_overflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_prog_empty_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_prog_full_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_sbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_underflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_dbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_overflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_prog_empty_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_prog_full_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_sbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_underflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_dbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_overflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_prog_empty_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_prog_full_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_sbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_underflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_dbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_overflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_prog_empty_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_prog_full_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_sbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_underflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_dbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_empty_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_full_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arvalid_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awvalid_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_rready_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wlast_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wvalid_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tlast_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tvalid_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_overflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_prog_empty_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_prog_full_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_rd_rst_busy_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_arready_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_awready_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_rlast_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_rvalid_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_wready_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axis_tready_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_sbiterr_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_underflow_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_valid_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_wr_ack_UNCONNECTED ;
  wire \NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_wr_rst_busy_UNCONNECTED ;
  wire [4:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_data_count_UNCONNECTED ;
  wire [4:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_data_count_UNCONNECTED ;
  wire [4:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_wr_data_count_UNCONNECTED ;
  wire [5:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_data_count_UNCONNECTED ;
  wire [5:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_rd_data_count_UNCONNECTED ;
  wire [5:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_data_count_UNCONNECTED ;
  wire [10:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_data_count_UNCONNECTED ;
  wire [10:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_data_count_UNCONNECTED ;
  wire [10:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_wr_data_count_UNCONNECTED ;
  wire [9:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_data_count_UNCONNECTED ;
  wire [17:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_dout_UNCONNECTED ;
  wire [31:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_araddr_UNCONNECTED ;
  wire [1:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arburst_UNCONNECTED ;
  wire [3:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arcache_UNCONNECTED ;
  wire [0:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arid_UNCONNECTED ;
  wire [7:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arlen_UNCONNECTED ;
  wire [1:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arlock_UNCONNECTED ;
  wire [2:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arprot_UNCONNECTED ;
  wire [3:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arqos_UNCONNECTED ;
  wire [3:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arregion_UNCONNECTED ;
  wire [2:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arsize_UNCONNECTED ;
  wire [0:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_aruser_UNCONNECTED ;
  wire [31:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awaddr_UNCONNECTED ;
  wire [1:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awburst_UNCONNECTED ;
  wire [3:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awcache_UNCONNECTED ;
  wire [0:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awid_UNCONNECTED ;
  wire [7:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awlen_UNCONNECTED ;
  wire [1:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awlock_UNCONNECTED ;
  wire [2:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awprot_UNCONNECTED ;
  wire [3:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awqos_UNCONNECTED ;
  wire [3:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awregion_UNCONNECTED ;
  wire [2:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awsize_UNCONNECTED ;
  wire [0:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awuser_UNCONNECTED ;
  wire [31:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wdata_UNCONNECTED ;
  wire [0:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wid_UNCONNECTED ;
  wire [3:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wstrb_UNCONNECTED ;
  wire [0:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wuser_UNCONNECTED ;
  wire [63:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tdata_UNCONNECTED ;
  wire [3:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tdest_UNCONNECTED ;
  wire [7:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tid_UNCONNECTED ;
  wire [3:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tkeep_UNCONNECTED ;
  wire [3:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tstrb_UNCONNECTED ;
  wire [3:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tuser_UNCONNECTED ;
  wire [9:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_rd_data_count_UNCONNECTED ;
  wire [0:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_bid_UNCONNECTED ;
  wire [0:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_buser_UNCONNECTED ;
  wire [31:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_rdata_UNCONNECTED ;
  wire [0:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_rid_UNCONNECTED ;
  wire [1:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_rresp_UNCONNECTED ;
  wire [0:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_ruser_UNCONNECTED ;
  wire [9:0]\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_wr_data_count_UNCONNECTED ;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "63" *) 
  (* C_DIN_WIDTH_RDCH = "36" *) 
  (* C_DIN_WIDTH_WACH = "63" *) 
  (* C_DIN_WIDTH_WDCH = "38" *) 
  (* C_DIN_WIDTH_WRCH = "3" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "1" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "11" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "12" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "2" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1021" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1021" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1021" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "29" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "31" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "2" *) 
  (* C_WDCH_TYPE = "2" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "32" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "5" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  design_1_auto_us_cc_df_1_fifo_generator_v13_2_2__parameterized1 \USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async 
       (.almost_empty(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_almost_full_UNCONNECTED ),
        .axi_ar_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_data_count_UNCONNECTED [4:0]),
        .axi_ar_dbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_dbiterr_UNCONNECTED ),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_overflow_UNCONNECTED ),
        .axi_ar_prog_empty(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_prog_empty_UNCONNECTED ),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_prog_full_UNCONNECTED ),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_rd_data_count_UNCONNECTED [4:0]),
        .axi_ar_sbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_sbiterr_UNCONNECTED ),
        .axi_ar_underflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_underflow_UNCONNECTED ),
        .axi_ar_wr_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_ar_wr_data_count_UNCONNECTED [4:0]),
        .axi_aw_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_data_count_UNCONNECTED [4:0]),
        .axi_aw_dbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_dbiterr_UNCONNECTED ),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_overflow_UNCONNECTED ),
        .axi_aw_prog_empty(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_prog_empty_UNCONNECTED ),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_prog_full_UNCONNECTED ),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_rd_data_count_UNCONNECTED [4:0]),
        .axi_aw_sbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_sbiterr_UNCONNECTED ),
        .axi_aw_underflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_underflow_UNCONNECTED ),
        .axi_aw_wr_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_aw_wr_data_count_UNCONNECTED [4:0]),
        .axi_b_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_data_count_UNCONNECTED [5:0]),
        .axi_b_dbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_dbiterr_UNCONNECTED ),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_overflow_UNCONNECTED ),
        .axi_b_prog_empty(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_prog_empty_UNCONNECTED ),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_prog_full_UNCONNECTED ),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_rd_data_count_UNCONNECTED [5:0]),
        .axi_b_sbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_sbiterr_UNCONNECTED ),
        .axi_b_underflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_underflow_UNCONNECTED ),
        .axi_b_wr_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_b_wr_data_count_UNCONNECTED [5:0]),
        .axi_r_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_data_count_UNCONNECTED [10:0]),
        .axi_r_dbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_dbiterr_UNCONNECTED ),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_overflow_UNCONNECTED ),
        .axi_r_prog_empty(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_prog_empty_UNCONNECTED ),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_prog_full_UNCONNECTED ),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_rd_data_count_UNCONNECTED [10:0]),
        .axi_r_sbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_sbiterr_UNCONNECTED ),
        .axi_r_underflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_underflow_UNCONNECTED ),
        .axi_r_wr_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_r_wr_data_count_UNCONNECTED [10:0]),
        .axi_w_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_data_count_UNCONNECTED [10:0]),
        .axi_w_dbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_dbiterr_UNCONNECTED ),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_overflow_UNCONNECTED ),
        .axi_w_prog_empty(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_prog_empty_UNCONNECTED ),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_prog_full_UNCONNECTED ),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_rd_data_count_UNCONNECTED [10:0]),
        .axi_w_sbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_sbiterr_UNCONNECTED ),
        .axi_w_underflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_underflow_UNCONNECTED ),
        .axi_w_wr_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axi_w_wr_data_count_UNCONNECTED [10:0]),
        .axis_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_data_count_UNCONNECTED [10:0]),
        .axis_dbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_dbiterr_UNCONNECTED ),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_overflow_UNCONNECTED ),
        .axis_prog_empty(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_prog_empty_UNCONNECTED ),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_prog_full_UNCONNECTED ),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_rd_data_count_UNCONNECTED [10:0]),
        .axis_sbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_sbiterr_UNCONNECTED ),
        .axis_underflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_underflow_UNCONNECTED ),
        .axis_wr_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_axis_wr_data_count_UNCONNECTED [10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_data_count_UNCONNECTED [9:0]),
        .dbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_dbiterr_UNCONNECTED ),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_dout_UNCONNECTED [17:0]),
        .empty(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_empty_UNCONNECTED ),
        .full(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(CLK),
        .m_aclk_en(1'b0),
        .m_axi_araddr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_araddr_UNCONNECTED [31:0]),
        .m_axi_arburst(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arburst_UNCONNECTED [1:0]),
        .m_axi_arcache(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arcache_UNCONNECTED [3:0]),
        .m_axi_arid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arid_UNCONNECTED [0]),
        .m_axi_arlen(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arlen_UNCONNECTED [7:0]),
        .m_axi_arlock(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arlock_UNCONNECTED [1:0]),
        .m_axi_arprot(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arprot_UNCONNECTED [2:0]),
        .m_axi_arqos(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arqos_UNCONNECTED [3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arregion_UNCONNECTED [3:0]),
        .m_axi_arsize(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arsize_UNCONNECTED [2:0]),
        .m_axi_aruser(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_aruser_UNCONNECTED [0]),
        .m_axi_arvalid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_arvalid_UNCONNECTED ),
        .m_axi_awaddr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awaddr_UNCONNECTED [31:0]),
        .m_axi_awburst(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awburst_UNCONNECTED [1:0]),
        .m_axi_awcache(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awcache_UNCONNECTED [3:0]),
        .m_axi_awid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awid_UNCONNECTED [0]),
        .m_axi_awlen(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awlen_UNCONNECTED [7:0]),
        .m_axi_awlock(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awlock_UNCONNECTED [1:0]),
        .m_axi_awprot(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awprot_UNCONNECTED [2:0]),
        .m_axi_awqos(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awqos_UNCONNECTED [3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awregion_UNCONNECTED [3:0]),
        .m_axi_awsize(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awsize_UNCONNECTED [2:0]),
        .m_axi_awuser(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awuser_UNCONNECTED [0]),
        .m_axi_awvalid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_awvalid_UNCONNECTED ),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_rready_UNCONNECTED ),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wdata_UNCONNECTED [31:0]),
        .m_axi_wid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wid_UNCONNECTED [0]),
        .m_axi_wlast(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wlast_UNCONNECTED ),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wstrb_UNCONNECTED [3:0]),
        .m_axi_wuser(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wuser_UNCONNECTED [0]),
        .m_axi_wvalid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axi_wvalid_UNCONNECTED ),
        .m_axis_tdata(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tdata_UNCONNECTED [63:0]),
        .m_axis_tdest(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tdest_UNCONNECTED [3:0]),
        .m_axis_tid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tid_UNCONNECTED [7:0]),
        .m_axis_tkeep(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tkeep_UNCONNECTED [3:0]),
        .m_axis_tlast(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tlast_UNCONNECTED ),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tstrb_UNCONNECTED [3:0]),
        .m_axis_tuser(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tuser_UNCONNECTED [3:0]),
        .m_axis_tvalid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_m_axis_tvalid_UNCONNECTED ),
        .overflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_overflow_UNCONNECTED ),
        .prog_empty(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_prog_empty_UNCONNECTED ),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_prog_full_UNCONNECTED ),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_rd_data_count_UNCONNECTED [9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_rd_rst_busy_UNCONNECTED ),
        .rst(1'b0),
        .s_aclk(s_axi_aclk),
        .s_aclk_en(1'b0),
        .s_aresetn(sm_aresetn),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_arready_UNCONNECTED ),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_awready_UNCONNECTED ),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_bid_UNCONNECTED [0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_buser_UNCONNECTED [0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_rdata_UNCONNECTED [31:0]),
        .s_axi_rid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_rid_UNCONNECTED [0]),
        .s_axi_rlast(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_rlast_UNCONNECTED ),
        .s_axi_rready(1'b0),
        .s_axi_rresp(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_rresp_UNCONNECTED [1:0]),
        .s_axi_ruser(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_ruser_UNCONNECTED [0]),
        .s_axi_rvalid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_rvalid_UNCONNECTED ),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axi_wready_UNCONNECTED ),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_s_axis_tready_UNCONNECTED ),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_underflow_UNCONNECTED ),
        .valid(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_valid_UNCONNECTED ),
        .wr_ack(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_wr_ack_UNCONNECTED ),
        .wr_clk(1'b0),
        .wr_data_count(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_wr_data_count_UNCONNECTED [9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(\NLW_USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_wr_rst_busy_UNCONNECTED ));
  design_1_auto_us_cc_df_1_axi_dwidth_converter_v2_1_17_w_upsizer_pktfifo \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst 
       (.CLK(CLK),
        .D({p_0_in[3],p_0_in[0]}),
        .Q(si_buf_addr),
        .SR(\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_192 ),
        .\USE_WRITE.m_axi_awready_i (\USE_WRITE.m_axi_awready_i ),
        .\USE_WRITE.wr_cmd_ready (\USE_WRITE.wr_cmd_ready ),
        .allow_new_cmd__0(allow_new_cmd__0),
        .dina(dina),
        .load_si_ptr(load_si_ptr),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\m_payload_i_reg[1] (f_si_wrap_be_return),
        .\m_payload_i_reg[2] (si_register_slice_inst_n_90),
        .\m_payload_i_reg[35] (si_register_slice_inst_n_99),
        .\m_payload_i_reg[36] (si_register_slice_inst_n_80),
        .\m_payload_i_reg[36]_0 (si_register_slice_inst_n_82),
        .\m_payload_i_reg[36]_1 (si_register_slice_inst_n_87),
        .\m_payload_i_reg[39] ({f_mi_be_last_index_return,\USE_WRITE.m_axi_awlen_i ,\USE_WRITE.m_axi_awburst_i ,\USE_WRITE.m_axi_awsize_i ,\USE_WRITE.m_axi_awaddr_i }),
        .\m_payload_i_reg[3] (si_register_slice_inst_n_81),
        .\m_payload_i_reg[46] (f_si_wrap_word_return),
        .\m_payload_i_reg[4] (si_register_slice_inst_n_83),
        .\m_payload_i_reg[61] ({sr_awregion,sr_awqos,s_axi_awlock_ii,s_axi_awlen_ii,sr_awcache,sr_awburst,sr_awsize,sr_awprot,sr_awaddr[31:5],sr_awaddr[3:0]}),
        .m_valid_i_reg(\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_219 ),
        .m_valid_i_reg_0(\USE_WRITE.write_addr_inst_n_1 ),
        .out(out),
        .p_0_in(p_0_in_0),
        .s_aresetn(sm_aresetn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg(\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_220 ),
        .\si_be_reg[0]_0 (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_200 ),
        .\si_be_reg[0]_1 (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_201 ),
        .\si_wrap_cnt_reg[1]_0 (si_wrap_cnt_reg),
        .\si_wrap_cnt_reg[3]_0 (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_198 ),
        .sr_awvalid(sr_awvalid));
  design_1_auto_us_cc_df_1_axi_dwidth_converter_v2_1_17_a_upsizer \USE_WRITE.write_addr_inst 
       (.CO(cmd_packed_wrap_i1),
        .DI({si_register_slice_inst_n_95,si_register_slice_inst_n_96,si_register_slice_inst_n_97,si_register_slice_inst_n_98}),
        .S({si_register_slice_inst_n_91,si_register_slice_inst_n_92,si_register_slice_inst_n_93,si_register_slice_inst_n_94}),
        .SR(\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_192 ),
        .\USE_WRITE.m_axi_awready_i (\USE_WRITE.m_axi_awready_i ),
        .\USE_WRITE.wr_cmd_ready (\USE_WRITE.wr_cmd_ready ),
        .allow_new_cmd__0(allow_new_cmd__0),
        .cmd_push_block_reg_0(\USE_WRITE.write_addr_inst_n_1 ),
        .s_axi_aclk(s_axi_aclk),
        .sr_awvalid(sr_awvalid));
  design_1_auto_us_cc_df_1_axi_register_slice_v2_1_17_axi_register_slice__parameterized0 si_register_slice_inst
       (.CO(cmd_packed_wrap_i1),
        .D({p_0_in[3],p_0_in[0]}),
        .DI({si_register_slice_inst_n_95,si_register_slice_inst_n_96,si_register_slice_inst_n_97,si_register_slice_inst_n_98}),
        .Q({sr_awregion,sr_awqos,s_axi_awlock_ii,s_axi_awlen_ii,sr_awcache,sr_awburst,sr_awsize,sr_awprot,sr_awaddr[31:5],sr_awaddr[3:0]}),
        .S({si_register_slice_inst_n_91,si_register_slice_inst_n_92,si_register_slice_inst_n_93,si_register_slice_inst_n_94}),
        .SR(\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_192 ),
        .\aresetn_d_reg[1] (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_220 ),
        .load_si_ptr(load_si_ptr),
        .\m_payload_i_reg[63] (si_register_slice_inst_n_87),
        .\m_payload_i_reg[65] ({f_mi_be_last_index_return,\USE_WRITE.m_axi_awlen_i ,\USE_WRITE.m_axi_awburst_i ,\USE_WRITE.m_axi_awsize_i ,\USE_WRITE.m_axi_awaddr_i }),
        .p_0_in(p_0_in_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awready(s_axi_awready),
        .\s_axi_awregion[3] (D),
        .s_ready_i_reg(\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_219 ),
        .\si_be_reg[2] (si_register_slice_inst_n_99),
        .\si_be_reg[2]_0 (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_200 ),
        .\si_be_reg[3] (si_register_slice_inst_n_80),
        .\si_ptr_reg[0] (si_register_slice_inst_n_83),
        .\si_ptr_reg[0]_0 (si_buf_addr),
        .\si_size_reg[0] (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_201 ),
        .\si_wrap_be_next_reg[2] (f_si_wrap_be_return),
        .\si_wrap_cnt_reg[0] (si_wrap_cnt_reg),
        .\si_wrap_cnt_reg[1] (si_register_slice_inst_n_81),
        .\si_wrap_cnt_reg[1]_0 (si_register_slice_inst_n_90),
        .\si_wrap_cnt_reg[2] (si_register_slice_inst_n_82),
        .\si_wrap_cnt_reg[2]_0 (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_198 ),
        .\si_wrap_word_next_reg[1] (f_si_wrap_word_return),
        .sr_awvalid(sr_awvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_IS_ACLK_ASYNC = "1" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_SUPPORTS_READ = "0" *) (* C_AXI_SUPPORTS_WRITE = "1" *) (* C_FAMILY = "artix7" *) 
(* C_FIFO_MODE = "2" *) (* C_MAX_SPLIT_BEATS = "16" *) (* C_M_AXI_ACLK_RATIO = "2" *) 
(* C_M_AXI_BYTES_LOG = "4" *) (* C_M_AXI_DATA_WIDTH = "128" *) (* C_PACKING_LEVEL = "1" *) 
(* C_RATIO = "0" *) (* C_RATIO_LOG = "0" *) (* C_SUPPORTS_ID = "0" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "1" *) (* C_S_AXI_BYTES_LOG = "2" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_17_top" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_CONVERSION = "2" *) (* P_MAX_SPLIT_BEATS = "16" *) 
module design_1_auto_us_cc_df_1_axi_dwidth_converter_v2_1_17_top
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* keep = "true" *) input s_axi_aclk;
  (* keep = "true" *) input s_axi_aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  (* keep = "true" *) input m_axi_aclk;
  (* keep = "true" *) input m_axi_aresetn;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [127:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire m_axi_wvalid;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_us_cc_df_1_axi_dwidth_converter_v2_1_17_axi_upsizer \gen_upsizer.gen_full_upsizer.axi_upsizer_inst 
       (.CLK(m_axi_aclk),
        .D({s_axi_awregion,s_axi_awqos,s_axi_awlock,s_axi_awlen,s_axi_awcache,s_axi_awburst,s_axi_awsize,s_axi_awprot,s_axi_awaddr}),
        .dina({s_axi_wstrb[3],s_axi_wdata[31:24],s_axi_wstrb[2],s_axi_wdata[23:16],s_axi_wstrb[1],s_axi_wdata[15:8],s_axi_wstrb[0],s_axi_wdata[7:0]}),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .out(m_axi_aresetn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_17_w_upsizer_pktfifo" *) 
module design_1_auto_us_cc_df_1_axi_dwidth_converter_v2_1_17_w_upsizer_pktfifo
   (m_axi_wdata,
    Q,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    s_aresetn,
    \USE_WRITE.wr_cmd_ready ,
    SR,
    load_si_ptr,
    m_axi_wvalid,
    m_axi_wlast,
    m_axi_awvalid,
    s_axi_wready,
    \si_wrap_cnt_reg[3]_0 ,
    \si_wrap_cnt_reg[1]_0 ,
    \si_be_reg[0]_0 ,
    \si_be_reg[0]_1 ,
    \USE_WRITE.m_axi_awready_i ,
    m_axi_wstrb,
    m_valid_i_reg,
    s_ready_i_reg,
    CLK,
    s_axi_aclk,
    dina,
    \m_payload_i_reg[61] ,
    p_0_in,
    out,
    s_axi_wlast,
    s_axi_wvalid,
    m_valid_i_reg_0,
    \m_payload_i_reg[35] ,
    \m_payload_i_reg[36] ,
    D,
    \m_payload_i_reg[2] ,
    \m_payload_i_reg[3] ,
    \m_payload_i_reg[36]_0 ,
    \m_payload_i_reg[36]_1 ,
    m_axi_wready,
    m_axi_awready,
    s_axi_aresetn,
    s_axi_awready,
    allow_new_cmd__0,
    s_axi_awvalid,
    sr_awvalid,
    \m_payload_i_reg[39] ,
    \m_payload_i_reg[1] ,
    \m_payload_i_reg[46] ,
    \m_payload_i_reg[4] );
  output [127:0]m_axi_wdata;
  output [0:0]Q;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output s_aresetn;
  output \USE_WRITE.wr_cmd_ready ;
  output [0:0]SR;
  output load_si_ptr;
  output m_axi_wvalid;
  output m_axi_wlast;
  output m_axi_awvalid;
  output s_axi_wready;
  output \si_wrap_cnt_reg[3]_0 ;
  output [0:0]\si_wrap_cnt_reg[1]_0 ;
  output [0:0]\si_be_reg[0]_0 ;
  output \si_be_reg[0]_1 ;
  output \USE_WRITE.m_axi_awready_i ;
  output [15:0]m_axi_wstrb;
  output m_valid_i_reg;
  output s_ready_i_reg;
  input CLK;
  input s_axi_aclk;
  input [35:0]dina;
  input [51:0]\m_payload_i_reg[61] ;
  input [0:0]p_0_in;
  input out;
  input s_axi_wlast;
  input s_axi_wvalid;
  input m_valid_i_reg_0;
  input \m_payload_i_reg[35] ;
  input \m_payload_i_reg[36] ;
  input [1:0]D;
  input \m_payload_i_reg[2] ;
  input \m_payload_i_reg[3] ;
  input \m_payload_i_reg[36]_0 ;
  input \m_payload_i_reg[36]_1 ;
  input m_axi_wready;
  input m_axi_awready;
  input s_axi_aresetn;
  input s_axi_awready;
  input allow_new_cmd__0;
  input s_axi_awvalid;
  input sr_awvalid;
  input [22:0]\m_payload_i_reg[39] ;
  input [2:0]\m_payload_i_reg[1] ;
  input [1:0]\m_payload_i_reg[46] ;
  input [0:0]\m_payload_i_reg[4] ;

  wire CLK;
  wire [1:0]D;
  wire \FSM_sequential_mi_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mi_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mi_state[1]_i_2_n_0 ;
  wire \FSM_sequential_mi_state[2]_i_1_n_0 ;
  wire \FSM_sequential_mi_state[2]_i_2_n_0 ;
  wire \FSM_sequential_mi_state[2]_i_3_n_0 ;
  wire \FSM_sequential_mi_state[2]_i_4_n_0 ;
  wire \FSM_sequential_mi_state[2]_i_5_n_0 ;
  wire \FSM_sequential_mi_state[2]_i_6_n_0 ;
  wire \FSM_sequential_mi_state[2]_i_7_n_0 ;
  wire M_AXI_AWVALID_i_i_2_n_0;
  wire M_AXI_WLAST_i_i_1_n_0;
  wire M_AXI_WVALID_i_i_1_n_0;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \USE_WRITE.m_axi_awready_i ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire [3:0]addr;
  wire allow_new_cmd__0;
  wire aw_pop;
  wire aw_pop_event;
  wire aw_pop_resync;
  wire aw_push;
  wire aw_ready;
  wire awpop_reset;
  wire awpop_reset0;
  wire [15:15]be;
  wire [14:0]be__0;
  wire [2:0]buf_cnt;
  wire [35:0]dina;
  wire [3:2]f_mi_be_init0_return;
  wire [15:0]f_si_we_return;
  wire first_load_mi_d1;
  wire first_load_mi_d1_i_1_n_0;
  wire [3:0]index;
  wire load_mi_d1;
  wire load_mi_d2;
  wire load_mi_next;
  wire load_mi_ptr;
  wire load_si_ptr;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [127:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [2:0]\m_payload_i_reg[1] ;
  wire \m_payload_i_reg[2] ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[36] ;
  wire \m_payload_i_reg[36]_0 ;
  wire \m_payload_i_reg[36]_1 ;
  wire [22:0]\m_payload_i_reg[39] ;
  wire \m_payload_i_reg[3] ;
  wire [1:0]\m_payload_i_reg[46] ;
  wire [0:0]\m_payload_i_reg[4] ;
  wire [51:0]\m_payload_i_reg[61] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire \mi_addr[0]_i_1_n_0 ;
  wire \mi_addr[1]_i_1_n_0 ;
  wire \mi_addr[2]_i_1_n_0 ;
  wire \mi_addr[3]_i_2_n_0 ;
  wire \mi_addr_reg_n_0_[0] ;
  wire \mi_addr_reg_n_0_[1] ;
  wire \mi_addr_reg_n_0_[2] ;
  wire \mi_addr_reg_n_0_[3] ;
  wire mi_awvalid;
  wire \mi_be[0]_i_1_n_0 ;
  wire \mi_be[0]_i_2_n_0 ;
  wire \mi_be[0]_i_3_n_0 ;
  wire \mi_be[0]_i_4_n_0 ;
  wire \mi_be[0]_i_5_n_0 ;
  wire \mi_be[10]_i_1_n_0 ;
  wire \mi_be[10]_i_2_n_0 ;
  wire \mi_be[10]_i_3_n_0 ;
  wire \mi_be[10]_i_4_n_0 ;
  wire \mi_be[10]_i_5_n_0 ;
  wire \mi_be[10]_i_6_n_0 ;
  wire \mi_be[11]_i_1_n_0 ;
  wire \mi_be[11]_i_2_n_0 ;
  wire \mi_be[11]_i_3_n_0 ;
  wire \mi_be[11]_i_4_n_0 ;
  wire \mi_be[11]_i_5_n_0 ;
  wire \mi_be[11]_i_6_n_0 ;
  wire \mi_be[12]_i_1_n_0 ;
  wire \mi_be[12]_i_2_n_0 ;
  wire \mi_be[12]_i_3_n_0 ;
  wire \mi_be[12]_i_4_n_0 ;
  wire \mi_be[13]_i_10_n_0 ;
  wire \mi_be[13]_i_1_n_0 ;
  wire \mi_be[13]_i_2_n_0 ;
  wire \mi_be[13]_i_3_n_0 ;
  wire \mi_be[13]_i_4_n_0 ;
  wire \mi_be[13]_i_5_n_0 ;
  wire \mi_be[13]_i_6_n_0 ;
  wire \mi_be[13]_i_7_n_0 ;
  wire \mi_be[13]_i_8_n_0 ;
  wire \mi_be[13]_i_9_n_0 ;
  wire \mi_be[14]_i_1_n_0 ;
  wire \mi_be[14]_i_2_n_0 ;
  wire \mi_be[14]_i_3_n_0 ;
  wire \mi_be[14]_i_4_n_0 ;
  wire \mi_be[14]_i_5_n_0 ;
  wire \mi_be[14]_i_6_n_0 ;
  wire \mi_be[14]_i_7_n_0 ;
  wire \mi_be[14]_i_8_n_0 ;
  wire \mi_be[14]_i_9_n_0 ;
  wire \mi_be[15]_i_10_n_0 ;
  wire \mi_be[15]_i_1_n_0 ;
  wire \mi_be[15]_i_2_n_0 ;
  wire \mi_be[15]_i_3_n_0 ;
  wire \mi_be[15]_i_4_n_0 ;
  wire \mi_be[15]_i_5_n_0 ;
  wire \mi_be[15]_i_6_n_0 ;
  wire \mi_be[15]_i_7_n_0 ;
  wire \mi_be[15]_i_8_n_0 ;
  wire \mi_be[15]_i_9_n_0 ;
  wire \mi_be[1]_i_1_n_0 ;
  wire \mi_be[1]_i_2_n_0 ;
  wire \mi_be[1]_i_3_n_0 ;
  wire \mi_be[1]_i_4_n_0 ;
  wire \mi_be[1]_i_5_n_0 ;
  wire \mi_be[2]_i_1_n_0 ;
  wire \mi_be[2]_i_3_n_0 ;
  wire \mi_be[2]_i_4_n_0 ;
  wire \mi_be[2]_i_5_n_0 ;
  wire \mi_be[3]_i_1_n_0 ;
  wire \mi_be[3]_i_3_n_0 ;
  wire \mi_be[3]_i_4_n_0 ;
  wire \mi_be[3]_i_5_n_0 ;
  wire \mi_be[3]_i_6_n_0 ;
  wire \mi_be[3]_i_7_n_0 ;
  wire \mi_be[4]_i_1_n_0 ;
  wire \mi_be[4]_i_2_n_0 ;
  wire \mi_be[4]_i_3_n_0 ;
  wire \mi_be[4]_i_4_n_0 ;
  wire \mi_be[4]_i_5_n_0 ;
  wire \mi_be[5]_i_1_n_0 ;
  wire \mi_be[5]_i_2_n_0 ;
  wire \mi_be[5]_i_3_n_0 ;
  wire \mi_be[5]_i_4_n_0 ;
  wire \mi_be[5]_i_5_n_0 ;
  wire \mi_be[6]_i_1_n_0 ;
  wire \mi_be[6]_i_2_n_0 ;
  wire \mi_be[6]_i_3_n_0 ;
  wire \mi_be[6]_i_4_n_0 ;
  wire \mi_be[6]_i_5_n_0 ;
  wire \mi_be[7]_i_1_n_0 ;
  wire \mi_be[7]_i_2_n_0 ;
  wire \mi_be[7]_i_3_n_0 ;
  wire \mi_be[7]_i_4_n_0 ;
  wire \mi_be[7]_i_5_n_0 ;
  wire \mi_be[7]_i_6_n_0 ;
  wire \mi_be[7]_i_7_n_0 ;
  wire \mi_be[8]_i_1_n_0 ;
  wire \mi_be[8]_i_2_n_0 ;
  wire \mi_be[8]_i_3_n_0 ;
  wire \mi_be[8]_i_4_n_0 ;
  wire \mi_be[9]_i_1_n_0 ;
  wire \mi_be[9]_i_2_n_0 ;
  wire \mi_be[9]_i_3_n_0 ;
  wire \mi_be[9]_i_4_n_0 ;
  wire \mi_be[9]_i_5_n_0 ;
  wire \mi_be[9]_i_6_n_0 ;
  wire \mi_be_d1_reg_n_0_[0] ;
  wire \mi_be_d1_reg_n_0_[10] ;
  wire \mi_be_d1_reg_n_0_[11] ;
  wire \mi_be_d1_reg_n_0_[12] ;
  wire \mi_be_d1_reg_n_0_[13] ;
  wire \mi_be_d1_reg_n_0_[14] ;
  wire \mi_be_d1_reg_n_0_[15] ;
  wire \mi_be_d1_reg_n_0_[1] ;
  wire \mi_be_d1_reg_n_0_[2] ;
  wire \mi_be_d1_reg_n_0_[3] ;
  wire \mi_be_d1_reg_n_0_[4] ;
  wire \mi_be_d1_reg_n_0_[5] ;
  wire \mi_be_d1_reg_n_0_[6] ;
  wire \mi_be_d1_reg_n_0_[7] ;
  wire \mi_be_d1_reg_n_0_[8] ;
  wire \mi_be_d1_reg_n_0_[9] ;
  wire mi_buf0;
  wire \mi_buf[0]_i_1_n_0 ;
  wire \mi_buf[1]_i_1_n_0 ;
  wire \mi_buf[2]_i_2_n_0 ;
  wire [8:0]mi_buf_addr;
  wire mi_buf_en;
  wire \mi_burst[0]_i_1_n_0 ;
  wire \mi_burst[1]_i_2_n_0 ;
  wire \mi_burst_reg_n_0_[0] ;
  wire \mi_burst_reg_n_0_[1] ;
  wire mi_first;
  wire mi_first_d1;
  wire mi_first_i_1_n_0;
  wire mi_last;
  wire mi_last_d1;
  wire mi_last_d1_i_1_n_0;
  wire mi_last_d1_reg_n_0;
  wire mi_last_i_1_n_0;
  wire mi_last_i_2_n_0;
  wire mi_last_i_3_n_0;
  wire mi_last_i_4_n_0;
  wire mi_last_i_5_n_0;
  wire mi_last_i_6_n_0;
  wire mi_last_i_7_n_0;
  wire [3:0]mi_last_index_reg;
  wire mi_last_index_reg_d0;
  wire \mi_last_index_reg_d0[0]_i_1_n_0 ;
  wire \mi_last_index_reg_d0[1]_i_1_n_0 ;
  wire \mi_last_index_reg_d0[2]_i_1_n_0 ;
  wire \mi_last_index_reg_d0[3]_i_1_n_0 ;
  wire \mi_last_index_reg_d0_reg_n_0_[0] ;
  wire \mi_last_index_reg_d0_reg_n_0_[1] ;
  wire \mi_last_index_reg_d0_reg_n_0_[2] ;
  wire \mi_last_index_reg_d0_reg_n_0_[3] ;
  wire \mi_ptr[0]_i_1_n_0 ;
  wire \mi_ptr[0]_i_2_n_0 ;
  wire \mi_ptr[0]_i_3_n_0 ;
  wire \mi_ptr[0]_i_4_n_0 ;
  wire \mi_ptr[0]_i_5_n_0 ;
  wire \mi_ptr[1]_i_1_n_0 ;
  wire \mi_ptr[1]_i_2_n_0 ;
  wire \mi_ptr[1]_i_3_n_0 ;
  wire \mi_ptr[1]_i_4_n_0 ;
  wire \mi_ptr[1]_i_5_n_0 ;
  wire \mi_ptr[2]_i_1_n_0 ;
  wire \mi_ptr[3]_i_1_n_0 ;
  wire \mi_ptr[4]_i_1_n_0 ;
  wire \mi_ptr[5]_i_1_n_0 ;
  wire \mi_ptr[5]_i_2_n_0 ;
  wire \mi_ptr[5]_i_3_n_0 ;
  wire \mi_ptr[5]_i_4_n_0 ;
  wire \mi_ptr[5]_i_5_n_0 ;
  wire \mi_ptr[5]_i_6_n_0 ;
  wire \mi_size[0]_i_1_n_0 ;
  wire \mi_size[1]_i_1_n_0 ;
  wire \mi_size[2]_i_1_n_0 ;
  wire \mi_size_reg_n_0_[0] ;
  wire \mi_size_reg_n_0_[1] ;
  wire \mi_size_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire [2:0]mi_state;
  wire [0:0]mi_state_ns__0;
  wire mi_w_done__0;
  wire [7:0]mi_wcnt;
  wire \mi_wcnt[0]_i_1_n_0 ;
  wire \mi_wcnt[1]_i_1_n_0 ;
  wire \mi_wcnt[2]_i_1_n_0 ;
  wire \mi_wcnt[2]_i_2_n_0 ;
  wire \mi_wcnt[3]_i_1_n_0 ;
  wire \mi_wcnt[3]_i_2_n_0 ;
  wire \mi_wcnt[4]_i_1_n_0 ;
  wire \mi_wcnt[4]_i_2_n_0 ;
  wire \mi_wcnt[5]_i_1_n_0 ;
  wire \mi_wcnt[5]_i_2_n_0 ;
  wire \mi_wcnt[6]_i_1_n_0 ;
  wire \mi_wcnt[6]_i_2_n_0 ;
  wire \mi_wcnt[7]_i_1_n_0 ;
  wire \mi_wcnt[7]_i_2_n_0 ;
  wire \mi_wcnt[7]_i_3_n_0 ;
  wire [143:8]mi_wpayload;
  wire mi_wrap_be_next;
  wire \mi_wrap_be_next[0]_i_1_n_0 ;
  wire \mi_wrap_be_next[0]_i_2_n_0 ;
  wire \mi_wrap_be_next[0]_i_3_n_0 ;
  wire \mi_wrap_be_next[0]_i_4_n_0 ;
  wire \mi_wrap_be_next[0]_i_5_n_0 ;
  wire \mi_wrap_be_next[10]_i_1_n_0 ;
  wire \mi_wrap_be_next[10]_i_2_n_0 ;
  wire \mi_wrap_be_next[11]_i_1_n_0 ;
  wire \mi_wrap_be_next[11]_i_2_n_0 ;
  wire \mi_wrap_be_next[11]_i_3_n_0 ;
  wire \mi_wrap_be_next[12]_i_1_n_0 ;
  wire \mi_wrap_be_next[12]_i_2_n_0 ;
  wire \mi_wrap_be_next[12]_i_3_n_0 ;
  wire \mi_wrap_be_next[12]_i_4_n_0 ;
  wire \mi_wrap_be_next[12]_i_5_n_0 ;
  wire \mi_wrap_be_next[12]_i_6_n_0 ;
  wire \mi_wrap_be_next[12]_i_7_n_0 ;
  wire \mi_wrap_be_next[13]_i_1_n_0 ;
  wire \mi_wrap_be_next[13]_i_2_n_0 ;
  wire \mi_wrap_be_next[13]_i_3_n_0 ;
  wire \mi_wrap_be_next[13]_i_4_n_0 ;
  wire \mi_wrap_be_next[13]_i_5_n_0 ;
  wire \mi_wrap_be_next[14]_i_1_n_0 ;
  wire \mi_wrap_be_next[14]_i_2_n_0 ;
  wire \mi_wrap_be_next[14]_i_3_n_0 ;
  wire \mi_wrap_be_next[14]_i_4_n_0 ;
  wire \mi_wrap_be_next[1]_i_1_n_0 ;
  wire \mi_wrap_be_next[1]_i_2_n_0 ;
  wire \mi_wrap_be_next[1]_i_3_n_0 ;
  wire \mi_wrap_be_next[2]_i_1_n_0 ;
  wire \mi_wrap_be_next[2]_i_2_n_0 ;
  wire \mi_wrap_be_next[2]_i_3_n_0 ;
  wire \mi_wrap_be_next[2]_i_4_n_0 ;
  wire \mi_wrap_be_next[3]_i_1_n_0 ;
  wire \mi_wrap_be_next[3]_i_2_n_0 ;
  wire \mi_wrap_be_next[3]_i_3_n_0 ;
  wire \mi_wrap_be_next[4]_i_1_n_0 ;
  wire \mi_wrap_be_next[4]_i_2_n_0 ;
  wire \mi_wrap_be_next[4]_i_3_n_0 ;
  wire \mi_wrap_be_next[5]_i_1_n_0 ;
  wire \mi_wrap_be_next[5]_i_2_n_0 ;
  wire \mi_wrap_be_next[5]_i_3_n_0 ;
  wire \mi_wrap_be_next[6]_i_1_n_0 ;
  wire \mi_wrap_be_next[6]_i_2_n_0 ;
  wire \mi_wrap_be_next[6]_i_3_n_0 ;
  wire \mi_wrap_be_next[6]_i_4_n_0 ;
  wire \mi_wrap_be_next[7]_i_1_n_0 ;
  wire \mi_wrap_be_next[8]_i_1_n_0 ;
  wire \mi_wrap_be_next[8]_i_2_n_0 ;
  wire \mi_wrap_be_next[8]_i_3_n_0 ;
  wire \mi_wrap_be_next[8]_i_4_n_0 ;
  wire \mi_wrap_be_next[8]_i_5_n_0 ;
  wire \mi_wrap_be_next[9]_i_1_n_0 ;
  wire \mi_wrap_be_next[9]_i_2_n_0 ;
  wire \mi_wrap_be_next[9]_i_3_n_0 ;
  wire \mi_wrap_be_next_reg_n_0_[0] ;
  wire \mi_wrap_be_next_reg_n_0_[10] ;
  wire \mi_wrap_be_next_reg_n_0_[11] ;
  wire \mi_wrap_be_next_reg_n_0_[12] ;
  wire \mi_wrap_be_next_reg_n_0_[13] ;
  wire \mi_wrap_be_next_reg_n_0_[14] ;
  wire \mi_wrap_be_next_reg_n_0_[1] ;
  wire \mi_wrap_be_next_reg_n_0_[2] ;
  wire \mi_wrap_be_next_reg_n_0_[3] ;
  wire \mi_wrap_be_next_reg_n_0_[4] ;
  wire \mi_wrap_be_next_reg_n_0_[5] ;
  wire \mi_wrap_be_next_reg_n_0_[6] ;
  wire \mi_wrap_be_next_reg_n_0_[7] ;
  wire \mi_wrap_be_next_reg_n_0_[8] ;
  wire \mi_wrap_be_next_reg_n_0_[9] ;
  wire [3:0]mi_wrap_cnt;
  wire \mi_wrap_cnt[0]_i_1_n_0 ;
  wire \mi_wrap_cnt[0]_i_2_n_0 ;
  wire \mi_wrap_cnt[0]_i_3_n_0 ;
  wire \mi_wrap_cnt[0]_i_4_n_0 ;
  wire \mi_wrap_cnt[1]_i_1_n_0 ;
  wire \mi_wrap_cnt[1]_i_2_n_0 ;
  wire \mi_wrap_cnt[1]_i_3_n_0 ;
  wire \mi_wrap_cnt[1]_i_4_n_0 ;
  wire \mi_wrap_cnt[1]_i_5_n_0 ;
  wire \mi_wrap_cnt[2]_i_1_n_0 ;
  wire \mi_wrap_cnt[2]_i_2_n_0 ;
  wire \mi_wrap_cnt[2]_i_3_n_0 ;
  wire \mi_wrap_cnt[2]_i_4_n_0 ;
  wire \mi_wrap_cnt[2]_i_5_n_0 ;
  wire \mi_wrap_cnt[2]_i_6_n_0 ;
  wire \mi_wrap_cnt[3]_i_1_n_0 ;
  wire \mi_wrap_cnt[3]_i_2_n_0 ;
  wire \mi_wrap_cnt[3]_i_3_n_0 ;
  wire \mi_wrap_cnt[3]_i_4_n_0 ;
  wire \mi_wrap_cnt[3]_i_5_n_0 ;
  wire \mi_wrap_cnt[3]_i_6_n_0 ;
  wire \mi_wrap_cnt[3]_i_7_n_0 ;
  wire mi_wstrb_mask_d2;
  wire [15:0]mi_wstrb_mask_d20;
  wire \mi_wstrb_mask_d2[10]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[12]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[12]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[13]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[14]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[14]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[1]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[1]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[2]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[4]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[4]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[5]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[6]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[7]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[7]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[8]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[9]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2_reg_n_0_[0] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[10] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[11] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[12] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[13] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[14] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[15] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[1] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[2] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[3] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[4] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[5] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[6] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[7] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[8] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[9] ;
  wire \next_mi_addr_reg_n_0_[0] ;
  wire \next_mi_addr_reg_n_0_[4] ;
  wire \next_mi_addr_reg_n_0_[5] ;
  wire \next_mi_addr_reg_n_0_[6] ;
  wire \next_mi_addr_reg_n_0_[7] ;
  wire [1:0]next_mi_burst;
  wire [3:0]next_mi_last_index_reg;
  wire \next_mi_len_reg_n_0_[0] ;
  wire \next_mi_len_reg_n_0_[1] ;
  wire \next_mi_len_reg_n_0_[4] ;
  wire \next_mi_len_reg_n_0_[5] ;
  wire \next_mi_len_reg_n_0_[6] ;
  wire \next_mi_len_reg_n_0_[7] ;
  wire \next_mi_size_reg_n_0_[0] ;
  wire \next_mi_size_reg_n_0_[1] ;
  wire \next_mi_size_reg_n_0_[2] ;
  wire next_valid;
  wire next_valid_i_1_n_0;
  wire out;
  wire [0:0]p_0_in;
  wire [2:0]p_0_in_0;
  wire [2:1]p_0_in__0;
  wire p_127_in;
  wire p_1_in;
  wire p_2_in;
  wire p_5_in;
  wire s_aresetn;
  wire s_aw_reg_n_10;
  wire s_aw_reg_n_14;
  wire s_aw_reg_n_15;
  wire s_aw_reg_n_16;
  wire s_aw_reg_n_17;
  wire s_aw_reg_n_18;
  wire s_aw_reg_n_19;
  wire s_aw_reg_n_2;
  wire s_aw_reg_n_21;
  wire s_aw_reg_n_23;
  wire s_aw_reg_n_24;
  wire s_aw_reg_n_25;
  wire s_aw_reg_n_26;
  wire s_aw_reg_n_27;
  wire s_aw_reg_n_28;
  wire s_aw_reg_n_29;
  wire s_aw_reg_n_4;
  wire s_aw_reg_n_5;
  wire s_aw_reg_n_7;
  wire s_aw_reg_n_8;
  wire s_aw_reg_n_9;
  wire [31:0]s_awaddr_reg;
  wire [1:0]s_awburst_reg;
  wire [3:0]s_awcache_reg;
  wire [7:0]s_awlen_reg;
  wire s_awlock_reg;
  wire [2:0]s_awprot_reg;
  wire [3:0]s_awqos_reg;
  wire [3:0]s_awregion_reg;
  wire [2:0]s_awsize_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_ready_i_reg;
  wire \si_be[2]_i_3_n_0 ;
  wire \si_be[3]_i_7_n_0 ;
  wire [0:0]\si_be_reg[0]_0 ;
  wire \si_be_reg[0]_1 ;
  wire \si_be_reg_n_0_[0] ;
  wire \si_be_reg_n_0_[1] ;
  wire \si_buf[0]_i_1_n_0 ;
  wire \si_buf[1]_i_1_n_0 ;
  wire \si_buf[2]_i_1_n_0 ;
  wire [8:1]si_buf_addr;
  wire [1:0]si_burst;
  wire [3:0]si_last_index_reg;
  wire \si_ptr[5]_i_5_n_0 ;
  wire \si_ptr[5]_i_6_n_0 ;
  (* RTL_KEEP = "yes" *) wire [1:0]si_state;
  wire \si_word[1]_i_3_n_0 ;
  wire [2:0]si_wrap_be_next;
  wire [0:0]\si_wrap_cnt_reg[1]_0 ;
  wire \si_wrap_cnt_reg[3]_0 ;
  wire [3:1]si_wrap_cnt_reg__0;
  wire [1:0]si_wrap_word_next;
  wire [1:0]size;
  wire sr_awvalid;
  wire [1:0]word;
  wire NLW_dw_fifogen_aw_almost_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_almost_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axi_arvalid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axi_bready_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axi_rready_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axi_wlast_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axi_wvalid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axis_tlast_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axis_tvalid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_rd_rst_busy_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axi_arready_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axi_bvalid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axi_rlast_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axi_rvalid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axi_wready_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axis_tready_UNCONNECTED;
  wire NLW_dw_fifogen_aw_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_valid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_wr_ack_UNCONNECTED;
  wire NLW_dw_fifogen_aw_wr_rst_busy_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_ar_data_count_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_ar_rd_data_count_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_ar_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_aw_data_count_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_aw_rd_data_count_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_dw_fifogen_aw_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_dw_fifogen_aw_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_dw_fifogen_aw_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_dw_fifogen_aw_data_count_UNCONNECTED;
  wire [17:0]NLW_dw_fifogen_aw_dout_UNCONNECTED;
  wire [31:0]NLW_dw_fifogen_aw_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_dw_fifogen_aw_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_dw_fifogen_aw_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_dw_fifogen_aw_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_dw_fifogen_aw_m_axi_arsize_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_m_axi_awid_UNCONNECTED;
  wire [31:0]NLW_dw_fifogen_aw_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_m_axi_wid_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_dw_fifogen_aw_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_dw_fifogen_aw_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_dw_fifogen_aw_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_dw_fifogen_aw_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_s_axi_buser_UNCONNECTED;
  wire [31:0]NLW_dw_fifogen_aw_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_dw_fifogen_aw_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_dw_fifogen_aw_wr_data_count_UNCONNECTED;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_almost_empty_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_almost_full_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_dbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_overflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_prog_empty_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_prog_full_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_sbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_underflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_dbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_overflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_prog_empty_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_prog_full_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_sbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_underflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_dbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_overflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_prog_empty_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_prog_full_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_sbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_underflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_dbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_overflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_prog_empty_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_prog_full_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_sbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_underflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_dbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_overflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_prog_empty_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_prog_full_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_sbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_underflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_dbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_overflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_prog_empty_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_prog_full_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_sbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_underflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_dbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_full_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arvalid_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awvalid_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_bready_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_rready_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wlast_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wvalid_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tlast_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tvalid_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_overflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_prog_empty_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_prog_full_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_rd_rst_busy_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_arready_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_awready_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_bvalid_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_rlast_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_rvalid_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_wready_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axis_tready_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_sbiterr_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_underflow_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_valid_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_wr_ack_UNCONNECTED ;
  wire \NLW_gen_awpop_fifo.dw_fifogen_awpop_wr_rst_busy_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_data_count_UNCONNECTED ;
  wire [0:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_dout_UNCONNECTED ;
  wire [31:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_araddr_UNCONNECTED ;
  wire [1:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arburst_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arcache_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arid_UNCONNECTED ;
  wire [7:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arlen_UNCONNECTED ;
  wire [1:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arlock_UNCONNECTED ;
  wire [2:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arprot_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arqos_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arregion_UNCONNECTED ;
  wire [2:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arsize_UNCONNECTED ;
  wire [0:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_aruser_UNCONNECTED ;
  wire [31:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awaddr_UNCONNECTED ;
  wire [1:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awburst_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awcache_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awid_UNCONNECTED ;
  wire [7:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awlen_UNCONNECTED ;
  wire [1:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awlock_UNCONNECTED ;
  wire [2:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awprot_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awqos_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awregion_UNCONNECTED ;
  wire [2:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awsize_UNCONNECTED ;
  wire [0:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awuser_UNCONNECTED ;
  wire [63:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wid_UNCONNECTED ;
  wire [7:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wstrb_UNCONNECTED ;
  wire [0:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wuser_UNCONNECTED ;
  wire [63:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tdest_UNCONNECTED ;
  wire [7:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tid_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tkeep_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tstrb_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tuser_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_rd_data_count_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_bid_UNCONNECTED ;
  wire [1:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_bresp_UNCONNECTED ;
  wire [0:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_buser_UNCONNECTED ;
  wire [63:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_rdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_rid_UNCONNECTED ;
  wire [1:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_rresp_UNCONNECTED ;
  wire [0:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_ruser_UNCONNECTED ;
  wire [4:0]\NLW_gen_awpop_fifo.dw_fifogen_awpop_wr_data_count_UNCONNECTED ;
  wire NLW_w_buffer_dbiterr_UNCONNECTED;
  wire NLW_w_buffer_rsta_busy_UNCONNECTED;
  wire NLW_w_buffer_rstb_busy_UNCONNECTED;
  wire NLW_w_buffer_s_axi_arready_UNCONNECTED;
  wire NLW_w_buffer_s_axi_awready_UNCONNECTED;
  wire NLW_w_buffer_s_axi_bvalid_UNCONNECTED;
  wire NLW_w_buffer_s_axi_dbiterr_UNCONNECTED;
  wire NLW_w_buffer_s_axi_rlast_UNCONNECTED;
  wire NLW_w_buffer_s_axi_rvalid_UNCONNECTED;
  wire NLW_w_buffer_s_axi_sbiterr_UNCONNECTED;
  wire NLW_w_buffer_s_axi_wready_UNCONNECTED;
  wire NLW_w_buffer_sbiterr_UNCONNECTED;
  wire [143:0]NLW_w_buffer_douta_UNCONNECTED;
  wire [8:0]NLW_w_buffer_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_w_buffer_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_w_buffer_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_w_buffer_s_axi_rdaddrecc_UNCONNECTED;
  wire [143:0]NLW_w_buffer_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_w_buffer_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_w_buffer_s_axi_rresp_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_mi_state[0]_i_1 
       (.I0(mi_state_ns__0),
        .I1(\FSM_sequential_mi_state[2]_i_5_n_0 ),
        .I2(mi_state[0]),
        .O(\FSM_sequential_mi_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFC0FF883F00FF)) 
    \FSM_sequential_mi_state[0]_i_2 
       (.I0(mi_awvalid),
        .I1(mi_w_done__0),
        .I2(m_axi_awready),
        .I3(mi_state[0]),
        .I4(mi_state[1]),
        .I5(mi_state[2]),
        .O(mi_state_ns__0));
  LUT6 #(
    .INIT(64'h0FE0FFFF0FE00000)) 
    \FSM_sequential_mi_state[1]_i_1 
       (.I0(\FSM_sequential_mi_state[1]_i_2_n_0 ),
        .I1(mi_state[2]),
        .I2(mi_state[1]),
        .I3(mi_state[0]),
        .I4(\FSM_sequential_mi_state[2]_i_5_n_0 ),
        .I5(mi_state[1]),
        .O(\FSM_sequential_mi_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_mi_state[1]_i_2 
       (.I0(m_axi_awready),
        .I1(m_axi_wlast),
        .I2(m_axi_wvalid),
        .I3(m_axi_wready),
        .O(\FSM_sequential_mi_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \FSM_sequential_mi_state[2]_i_1 
       (.I0(\FSM_sequential_mi_state[2]_i_2_n_0 ),
        .I1(mi_w_done__0),
        .I2(\FSM_sequential_mi_state[2]_i_3_n_0 ),
        .I3(\FSM_sequential_mi_state[2]_i_4_n_0 ),
        .I4(\FSM_sequential_mi_state[2]_i_5_n_0 ),
        .I5(mi_state[2]),
        .O(\FSM_sequential_mi_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1010001C)) 
    \FSM_sequential_mi_state[2]_i_2 
       (.I0(mi_w_done__0),
        .I1(mi_state[1]),
        .I2(mi_state[2]),
        .I3(mi_state[0]),
        .I4(m_axi_awready),
        .O(\FSM_sequential_mi_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_mi_state[2]_i_3 
       (.I0(mi_last),
        .I1(m_axi_wlast),
        .I2(mi_last_d1_reg_n_0),
        .O(\FSM_sequential_mi_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_sequential_mi_state[2]_i_4 
       (.I0(mi_awvalid),
        .I1(mi_state[0]),
        .I2(mi_state[1]),
        .I3(mi_state[2]),
        .O(\FSM_sequential_mi_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAEFAEFA)) 
    \FSM_sequential_mi_state[2]_i_5 
       (.I0(\FSM_sequential_mi_state[2]_i_6_n_0 ),
        .I1(m_axi_awready),
        .I2(mi_state[2]),
        .I3(mi_state[1]),
        .I4(mi_state[0]),
        .O(\FSM_sequential_mi_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDDFFCCCCFFFECCFC)) 
    \FSM_sequential_mi_state[2]_i_6 
       (.I0(mi_state[0]),
        .I1(\FSM_sequential_mi_state[2]_i_7_n_0 ),
        .I2(mi_awvalid),
        .I3(mi_state[2]),
        .I4(mi_w_done__0),
        .I5(mi_state[1]),
        .O(\FSM_sequential_mi_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_sequential_mi_state[2]_i_7 
       (.I0(m_axi_wlast),
        .I1(mi_last),
        .I2(mi_state[2]),
        .I3(mi_last_d1_reg_n_0),
        .I4(mi_awvalid),
        .I5(mi_state[0]),
        .O(\FSM_sequential_mi_state[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "M_AW_STALL:111,M_IDLE:000,M_ISSUE2:100,M_WRITING2:101,M_ISSUE1:001,M_WRITING1:010,M_AW_DONE2:110,M_AW_DONE1:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mi_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_mi_state[0]_i_1_n_0 ),
        .Q(mi_state[0]),
        .R(awpop_reset0));
  (* FSM_ENCODED_STATES = "M_AW_STALL:111,M_IDLE:000,M_ISSUE2:100,M_WRITING2:101,M_ISSUE1:001,M_WRITING1:010,M_AW_DONE2:110,M_AW_DONE1:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mi_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_mi_state[1]_i_1_n_0 ),
        .Q(mi_state[1]),
        .R(awpop_reset0));
  (* FSM_ENCODED_STATES = "M_AW_STALL:111,M_IDLE:000,M_ISSUE2:100,M_WRITING2:101,M_ISSUE1:001,M_WRITING1:010,M_AW_DONE2:110,M_AW_DONE1:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mi_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_mi_state[2]_i_1_n_0 ),
        .Q(mi_state[2]),
        .R(awpop_reset0));
  (* FSM_ENCODED_STATES = "S_AWFULL:10,S_IDLE:00,S_WRITING:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_si_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_aw_reg_n_24),
        .Q(si_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "S_AWFULL:10,S_IDLE:00,S_WRITING:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_si_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_aw_reg_n_23),
        .Q(si_state[1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_AWVALID_i_i_1
       (.I0(out),
        .O(awpop_reset0));
  LUT5 #(
    .INIT(32'h3CFE1414)) 
    M_AXI_AWVALID_i_i_2
       (.I0(mi_state[1]),
        .I1(mi_state[0]),
        .I2(mi_state[2]),
        .I3(m_axi_awready),
        .I4(m_axi_awvalid),
        .O(M_AXI_AWVALID_i_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    M_AXI_AWVALID_i_reg
       (.C(CLK),
        .CE(1'b1),
        .D(M_AXI_AWVALID_i_i_2_n_0),
        .Q(m_axi_awvalid),
        .R(awpop_reset0));
  LUT5 #(
    .INIT(32'h00008A80)) 
    M_AXI_WLAST_i_i_1
       (.I0(out),
        .I1(mi_last_d1_reg_n_0),
        .I2(mi_buf_en),
        .I3(m_axi_wlast),
        .I4(load_mi_ptr),
        .O(M_AXI_WLAST_i_i_1_n_0));
  FDRE M_AXI_WLAST_i_reg
       (.C(CLK),
        .CE(1'b1),
        .D(M_AXI_WLAST_i_i_1_n_0),
        .Q(m_axi_wlast),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCAFE1010FEFE1010)) 
    M_AXI_WVALID_i_i_1
       (.I0(mi_state[0]),
        .I1(mi_state[2]),
        .I2(mi_state[1]),
        .I3(m_axi_wready),
        .I4(m_axi_wvalid),
        .I5(m_axi_wlast),
        .O(M_AXI_WVALID_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    M_AXI_WVALID_i_reg
       (.C(CLK),
        .CE(1'b1),
        .D(M_AXI_WVALID_i_i_1_n_0),
        .Q(m_axi_wvalid),
        .R(awpop_reset0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_WREADY_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_aw_reg_n_21),
        .Q(s_axi_wready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \USE_WRITE.gen_b_clk_conv.gen_b_async_conv.dw_fifogen_b_async_i_1 
       (.I0(s_axi_aresetn),
        .I1(out),
        .O(s_aresetn));
  FDRE \buf_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_aw_reg_n_27),
        .Q(buf_cnt[0]),
        .R(SR));
  FDRE \buf_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_aw_reg_n_26),
        .Q(buf_cnt[1]),
        .R(SR));
  FDRE \buf_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_aw_reg_n_25),
        .Q(buf_cnt[2]),
        .R(SR));
  FDRE cmd_ready_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_pop_resync),
        .Q(\USE_WRITE.wr_cmd_ready ),
        .R(SR));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "4" *) 
  (* C_AXI_AWUSER_WIDTH = "4" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "65" *) 
  (* C_DIN_WIDTH_RDCH = "35" *) 
  (* C_DIN_WIDTH_WACH = "65" *) 
  (* C_DIN_WIDTH_WDCH = "37" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "1" *) 
  (* C_HAS_AXI_AWUSER = "1" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "12" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "2" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "30" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "2" *) 
  (* C_WRCH_TYPE = "2" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "32" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "32" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "5" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "5" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  design_1_auto_us_cc_df_1_fifo_generator_v13_2_2__parameterized0 dw_fifogen_aw
       (.almost_empty(NLW_dw_fifogen_aw_almost_empty_UNCONNECTED),
        .almost_full(NLW_dw_fifogen_aw_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_dw_fifogen_aw_axi_ar_data_count_UNCONNECTED[5:0]),
        .axi_ar_dbiterr(NLW_dw_fifogen_aw_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_dw_fifogen_aw_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_dw_fifogen_aw_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_dw_fifogen_aw_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_dw_fifogen_aw_axi_ar_rd_data_count_UNCONNECTED[5:0]),
        .axi_ar_sbiterr(NLW_dw_fifogen_aw_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_dw_fifogen_aw_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_dw_fifogen_aw_axi_ar_wr_data_count_UNCONNECTED[5:0]),
        .axi_aw_data_count(NLW_dw_fifogen_aw_axi_aw_data_count_UNCONNECTED[5:0]),
        .axi_aw_dbiterr(NLW_dw_fifogen_aw_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_dw_fifogen_aw_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_dw_fifogen_aw_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_dw_fifogen_aw_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_dw_fifogen_aw_axi_aw_rd_data_count_UNCONNECTED[5:0]),
        .axi_aw_sbiterr(NLW_dw_fifogen_aw_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_dw_fifogen_aw_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_dw_fifogen_aw_axi_aw_wr_data_count_UNCONNECTED[5:0]),
        .axi_b_data_count(NLW_dw_fifogen_aw_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_dw_fifogen_aw_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_dw_fifogen_aw_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_dw_fifogen_aw_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_dw_fifogen_aw_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_dw_fifogen_aw_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_dw_fifogen_aw_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_dw_fifogen_aw_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_dw_fifogen_aw_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_dw_fifogen_aw_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_dw_fifogen_aw_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_dw_fifogen_aw_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_dw_fifogen_aw_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_dw_fifogen_aw_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_dw_fifogen_aw_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_dw_fifogen_aw_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_dw_fifogen_aw_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_dw_fifogen_aw_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_dw_fifogen_aw_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_dw_fifogen_aw_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_dw_fifogen_aw_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_dw_fifogen_aw_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_dw_fifogen_aw_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_dw_fifogen_aw_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_dw_fifogen_aw_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_dw_fifogen_aw_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_dw_fifogen_aw_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_dw_fifogen_aw_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_dw_fifogen_aw_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_dw_fifogen_aw_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_dw_fifogen_aw_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_dw_fifogen_aw_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_dw_fifogen_aw_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_dw_fifogen_aw_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_dw_fifogen_aw_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_dw_fifogen_aw_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_dw_fifogen_aw_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_dw_fifogen_aw_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_dw_fifogen_aw_dout_UNCONNECTED[17:0]),
        .empty(NLW_dw_fifogen_aw_empty_UNCONNECTED),
        .full(NLW_dw_fifogen_aw_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(CLK),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_dw_fifogen_aw_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_dw_fifogen_aw_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_dw_fifogen_aw_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_dw_fifogen_aw_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_dw_fifogen_aw_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_dw_fifogen_aw_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_dw_fifogen_aw_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_dw_fifogen_aw_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_dw_fifogen_aw_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_dw_fifogen_aw_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_dw_fifogen_aw_m_axi_aruser_UNCONNECTED[3:0]),
        .m_axi_arvalid(NLW_dw_fifogen_aw_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_dw_fifogen_aw_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(aw_pop),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(mi_last_index_reg),
        .m_axi_awvalid(mi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_dw_fifogen_aw_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_dw_fifogen_aw_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_dw_fifogen_aw_m_axi_wdata_UNCONNECTED[31:0]),
        .m_axi_wid(NLW_dw_fifogen_aw_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_dw_fifogen_aw_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_dw_fifogen_aw_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wuser(NLW_dw_fifogen_aw_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_dw_fifogen_aw_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_dw_fifogen_aw_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_dw_fifogen_aw_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_dw_fifogen_aw_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_dw_fifogen_aw_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_dw_fifogen_aw_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_dw_fifogen_aw_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_dw_fifogen_aw_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_dw_fifogen_aw_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_dw_fifogen_aw_overflow_UNCONNECTED),
        .prog_empty(NLW_dw_fifogen_aw_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_dw_fifogen_aw_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_dw_fifogen_aw_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_dw_fifogen_aw_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(s_axi_aclk),
        .s_aclk_en(1'b0),
        .s_aresetn(s_aresetn),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_dw_fifogen_aw_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr(s_awaddr_reg),
        .s_axi_awburst(s_awburst_reg),
        .s_axi_awcache(s_awcache_reg),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_awlen_reg),
        .s_axi_awlock(s_awlock_reg),
        .s_axi_awprot(s_awprot_reg),
        .s_axi_awqos(s_awqos_reg),
        .s_axi_awready(aw_ready),
        .s_axi_awregion(s_awregion_reg),
        .s_axi_awsize(s_awsize_reg),
        .s_axi_awuser(si_last_index_reg),
        .s_axi_awvalid(aw_push),
        .s_axi_bid(NLW_dw_fifogen_aw_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_dw_fifogen_aw_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_dw_fifogen_aw_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_dw_fifogen_aw_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_dw_fifogen_aw_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_dw_fifogen_aw_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_dw_fifogen_aw_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_dw_fifogen_aw_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_dw_fifogen_aw_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_dw_fifogen_aw_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_dw_fifogen_aw_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_dw_fifogen_aw_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_dw_fifogen_aw_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_dw_fifogen_aw_underflow_UNCONNECTED),
        .valid(NLW_dw_fifogen_aw_valid_UNCONNECTED),
        .wr_ack(NLW_dw_fifogen_aw_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_dw_fifogen_aw_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_dw_fifogen_aw_wr_rst_busy_UNCONNECTED));
  LUT5 #(
    .INIT(32'hE2803000)) 
    dw_fifogen_aw_i_2
       (.I0(mi_w_done__0),
        .I1(mi_state[0]),
        .I2(m_axi_awready),
        .I3(mi_state[1]),
        .I4(mi_state[2]),
        .O(aw_pop));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h80)) 
    dw_fifogen_aw_i_4
       (.I0(m_axi_wready),
        .I1(m_axi_wvalid),
        .I2(m_axi_wlast),
        .O(mi_w_done__0));
  LUT2 #(
    .INIT(4'hE)) 
    first_load_mi_d1_i_1
       (.I0(load_mi_d1),
        .I1(first_load_mi_d1),
        .O(first_load_mi_d1_i_1_n_0));
  FDRE first_load_mi_d1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(first_load_mi_d1_i_1_n_0),
        .Q(first_load_mi_d1),
        .R(awpop_reset0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "1" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "1" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  design_1_auto_us_cc_df_1_fifo_generator_v13_2_2 \gen_awpop_fifo.dw_fifogen_awpop 
       (.almost_empty(\NLW_gen_awpop_fifo.dw_fifogen_awpop_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_gen_awpop_fifo.dw_fifogen_awpop_almost_full_UNCONNECTED ),
        .axi_ar_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_data_count_UNCONNECTED [4:0]),
        .axi_ar_dbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_dbiterr_UNCONNECTED ),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_overflow_UNCONNECTED ),
        .axi_ar_prog_empty(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_prog_empty_UNCONNECTED ),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_prog_full_UNCONNECTED ),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_rd_data_count_UNCONNECTED [4:0]),
        .axi_ar_sbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_sbiterr_UNCONNECTED ),
        .axi_ar_underflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_underflow_UNCONNECTED ),
        .axi_ar_wr_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_ar_wr_data_count_UNCONNECTED [4:0]),
        .axi_aw_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_data_count_UNCONNECTED [4:0]),
        .axi_aw_dbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_dbiterr_UNCONNECTED ),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_overflow_UNCONNECTED ),
        .axi_aw_prog_empty(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_prog_empty_UNCONNECTED ),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_prog_full_UNCONNECTED ),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_rd_data_count_UNCONNECTED [4:0]),
        .axi_aw_sbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_sbiterr_UNCONNECTED ),
        .axi_aw_underflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_underflow_UNCONNECTED ),
        .axi_aw_wr_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_aw_wr_data_count_UNCONNECTED [4:0]),
        .axi_b_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_data_count_UNCONNECTED [4:0]),
        .axi_b_dbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_dbiterr_UNCONNECTED ),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_overflow_UNCONNECTED ),
        .axi_b_prog_empty(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_prog_empty_UNCONNECTED ),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_prog_full_UNCONNECTED ),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_rd_data_count_UNCONNECTED [4:0]),
        .axi_b_sbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_sbiterr_UNCONNECTED ),
        .axi_b_underflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_underflow_UNCONNECTED ),
        .axi_b_wr_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_b_wr_data_count_UNCONNECTED [4:0]),
        .axi_r_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_data_count_UNCONNECTED [10:0]),
        .axi_r_dbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_dbiterr_UNCONNECTED ),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_overflow_UNCONNECTED ),
        .axi_r_prog_empty(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_prog_empty_UNCONNECTED ),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_prog_full_UNCONNECTED ),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_rd_data_count_UNCONNECTED [10:0]),
        .axi_r_sbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_sbiterr_UNCONNECTED ),
        .axi_r_underflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_underflow_UNCONNECTED ),
        .axi_r_wr_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_r_wr_data_count_UNCONNECTED [10:0]),
        .axi_w_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_data_count_UNCONNECTED [10:0]),
        .axi_w_dbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_dbiterr_UNCONNECTED ),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_overflow_UNCONNECTED ),
        .axi_w_prog_empty(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_prog_empty_UNCONNECTED ),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_prog_full_UNCONNECTED ),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_rd_data_count_UNCONNECTED [10:0]),
        .axi_w_sbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_sbiterr_UNCONNECTED ),
        .axi_w_underflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_underflow_UNCONNECTED ),
        .axi_w_wr_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axi_w_wr_data_count_UNCONNECTED [10:0]),
        .axis_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_data_count_UNCONNECTED [10:0]),
        .axis_dbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_dbiterr_UNCONNECTED ),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_overflow_UNCONNECTED ),
        .axis_prog_empty(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_prog_empty_UNCONNECTED ),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_prog_full_UNCONNECTED ),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_rd_data_count_UNCONNECTED [10:0]),
        .axis_sbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_sbiterr_UNCONNECTED ),
        .axis_underflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_underflow_UNCONNECTED ),
        .axis_wr_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_axis_wr_data_count_UNCONNECTED [10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_data_count_UNCONNECTED [4:0]),
        .dbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_dbiterr_UNCONNECTED ),
        .din(1'b0),
        .dout(\NLW_gen_awpop_fifo.dw_fifogen_awpop_dout_UNCONNECTED [0]),
        .empty(aw_pop_event),
        .full(\NLW_gen_awpop_fifo.dw_fifogen_awpop_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_araddr_UNCONNECTED [31:0]),
        .m_axi_arburst(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arburst_UNCONNECTED [1:0]),
        .m_axi_arcache(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arcache_UNCONNECTED [3:0]),
        .m_axi_arid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arid_UNCONNECTED [3:0]),
        .m_axi_arlen(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arlen_UNCONNECTED [7:0]),
        .m_axi_arlock(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arlock_UNCONNECTED [1:0]),
        .m_axi_arprot(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arprot_UNCONNECTED [2:0]),
        .m_axi_arqos(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arqos_UNCONNECTED [3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arregion_UNCONNECTED [3:0]),
        .m_axi_arsize(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arsize_UNCONNECTED [2:0]),
        .m_axi_aruser(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_aruser_UNCONNECTED [0]),
        .m_axi_arvalid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_arvalid_UNCONNECTED ),
        .m_axi_awaddr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awaddr_UNCONNECTED [31:0]),
        .m_axi_awburst(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awburst_UNCONNECTED [1:0]),
        .m_axi_awcache(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awcache_UNCONNECTED [3:0]),
        .m_axi_awid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awid_UNCONNECTED [3:0]),
        .m_axi_awlen(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awlen_UNCONNECTED [7:0]),
        .m_axi_awlock(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awlock_UNCONNECTED [1:0]),
        .m_axi_awprot(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awprot_UNCONNECTED [2:0]),
        .m_axi_awqos(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awqos_UNCONNECTED [3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awregion_UNCONNECTED [3:0]),
        .m_axi_awsize(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awsize_UNCONNECTED [2:0]),
        .m_axi_awuser(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awuser_UNCONNECTED [0]),
        .m_axi_awvalid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_awvalid_UNCONNECTED ),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_bready_UNCONNECTED ),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_rready_UNCONNECTED ),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wdata_UNCONNECTED [63:0]),
        .m_axi_wid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wid_UNCONNECTED [3:0]),
        .m_axi_wlast(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wlast_UNCONNECTED ),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wstrb_UNCONNECTED [7:0]),
        .m_axi_wuser(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wuser_UNCONNECTED [0]),
        .m_axi_wvalid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axi_wvalid_UNCONNECTED ),
        .m_axis_tdata(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tdata_UNCONNECTED [63:0]),
        .m_axis_tdest(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tdest_UNCONNECTED [3:0]),
        .m_axis_tid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tid_UNCONNECTED [7:0]),
        .m_axis_tkeep(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tkeep_UNCONNECTED [3:0]),
        .m_axis_tlast(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tlast_UNCONNECTED ),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tstrb_UNCONNECTED [3:0]),
        .m_axis_tuser(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tuser_UNCONNECTED [3:0]),
        .m_axis_tvalid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_m_axis_tvalid_UNCONNECTED ),
        .overflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_overflow_UNCONNECTED ),
        .prog_empty(\NLW_gen_awpop_fifo.dw_fifogen_awpop_prog_empty_UNCONNECTED ),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(\NLW_gen_awpop_fifo.dw_fifogen_awpop_prog_full_UNCONNECTED ),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(s_axi_aclk),
        .rd_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_rd_data_count_UNCONNECTED [4:0]),
        .rd_en(aw_pop_resync),
        .rd_rst(1'b0),
        .rd_rst_busy(\NLW_gen_awpop_fifo.dw_fifogen_awpop_rd_rst_busy_UNCONNECTED ),
        .rst(awpop_reset),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_arready_UNCONNECTED ),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_awready_UNCONNECTED ),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_bid_UNCONNECTED [3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_bresp_UNCONNECTED [1:0]),
        .s_axi_buser(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_buser_UNCONNECTED [0]),
        .s_axi_bvalid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_bvalid_UNCONNECTED ),
        .s_axi_rdata(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_rdata_UNCONNECTED [63:0]),
        .s_axi_rid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_rid_UNCONNECTED [3:0]),
        .s_axi_rlast(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_rlast_UNCONNECTED ),
        .s_axi_rready(1'b0),
        .s_axi_rresp(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_rresp_UNCONNECTED [1:0]),
        .s_axi_ruser(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_ruser_UNCONNECTED [0]),
        .s_axi_rvalid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_rvalid_UNCONNECTED ),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axi_wready_UNCONNECTED ),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(\NLW_gen_awpop_fifo.dw_fifogen_awpop_s_axis_tready_UNCONNECTED ),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(\NLW_gen_awpop_fifo.dw_fifogen_awpop_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(\NLW_gen_awpop_fifo.dw_fifogen_awpop_underflow_UNCONNECTED ),
        .valid(\NLW_gen_awpop_fifo.dw_fifogen_awpop_valid_UNCONNECTED ),
        .wr_ack(\NLW_gen_awpop_fifo.dw_fifogen_awpop_wr_ack_UNCONNECTED ),
        .wr_clk(CLK),
        .wr_data_count(\NLW_gen_awpop_fifo.dw_fifogen_awpop_wr_data_count_UNCONNECTED [4:0]),
        .wr_en(aw_pop),
        .wr_rst(1'b0),
        .wr_rst_busy(\NLW_gen_awpop_fifo.dw_fifogen_awpop_wr_rst_busy_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gen_awpop_fifo.dw_fifogen_awpop_i_1 
       (.I0(out),
        .I1(s_axi_aresetn),
        .O(awpop_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_awpop_fifo.dw_fifogen_awpop_i_2 
       (.I0(aw_pop_event),
        .O(aw_pop_resync));
  LUT5 #(
    .INIT(32'h200000B8)) 
    load_mi_d1_i_1
       (.I0(mi_w_done__0),
        .I1(mi_state[2]),
        .I2(mi_awvalid),
        .I3(mi_state[0]),
        .I4(mi_state[1]),
        .O(load_mi_ptr));
  FDRE load_mi_d1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(load_mi_ptr),
        .Q(load_mi_d1),
        .R(1'b0));
  FDRE load_mi_d2_reg
       (.C(CLK),
        .CE(1'b1),
        .D(load_mi_d1),
        .Q(load_mi_d2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[0]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[0] ),
        .I2(mi_wpayload[8]),
        .O(m_axi_wstrb[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[10]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[10] ),
        .I2(mi_wpayload[98]),
        .O(m_axi_wstrb[10]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[11]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[11] ),
        .I2(mi_wpayload[107]),
        .O(m_axi_wstrb[11]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[12]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[12] ),
        .I2(mi_wpayload[116]),
        .O(m_axi_wstrb[12]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[13]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[13] ),
        .I2(mi_wpayload[125]),
        .O(m_axi_wstrb[13]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[14]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[14] ),
        .I2(mi_wpayload[134]),
        .O(m_axi_wstrb[14]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[15]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[15] ),
        .I2(mi_wpayload[143]),
        .O(m_axi_wstrb[15]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[1]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[1] ),
        .I2(mi_wpayload[17]),
        .O(m_axi_wstrb[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[2]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[2] ),
        .I2(mi_wpayload[26]),
        .O(m_axi_wstrb[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[3]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[3] ),
        .I2(mi_wpayload[35]),
        .O(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[4]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[4] ),
        .I2(mi_wpayload[44]),
        .O(m_axi_wstrb[4]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[5]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[5] ),
        .I2(mi_wpayload[53]),
        .O(m_axi_wstrb[5]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[6]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[6] ),
        .I2(mi_wpayload[62]),
        .O(m_axi_wstrb[6]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[7]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[7] ),
        .I2(mi_wpayload[71]),
        .O(m_axi_wstrb[7]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[8]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[8] ),
        .I2(mi_wpayload[80]),
        .O(m_axi_wstrb[8]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[9]_INST_0 
       (.I0(m_axi_wvalid),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[9] ),
        .I2(mi_wpayload[89]),
        .O(m_axi_wstrb[9]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_addr[0]_i_1 
       (.I0(m_axi_awaddr[0]),
        .I1(load_mi_ptr),
        .I2(\next_mi_addr_reg_n_0_[0] ),
        .O(\mi_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_addr[1]_i_1 
       (.I0(m_axi_awaddr[1]),
        .I1(load_mi_ptr),
        .I2(p_0_in_0[0]),
        .O(\mi_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_addr[2]_i_1 
       (.I0(m_axi_awaddr[2]),
        .I1(load_mi_ptr),
        .I2(p_0_in_0[1]),
        .O(\mi_addr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \mi_addr[3]_i_1 
       (.I0(mi_last),
        .I1(mi_buf_en),
        .I2(next_valid),
        .I3(load_mi_ptr),
        .O(mi_last_index_reg_d0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mi_addr[3]_i_2 
       (.I0(p_0_in_0[2]),
        .I1(load_mi_ptr),
        .I2(m_axi_awaddr[3]),
        .O(\mi_addr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFF8)) 
    \mi_addr_d1[3]_i_1 
       (.I0(m_axi_wvalid),
        .I1(m_axi_wready),
        .I2(load_mi_d2),
        .I3(load_mi_d1),
        .I4(load_mi_ptr),
        .O(mi_last_d1));
  FDRE \mi_addr_d1_reg[0] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(\mi_addr_reg_n_0_[0] ),
        .Q(addr[0]),
        .R(1'b0));
  FDRE \mi_addr_d1_reg[1] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(\mi_addr_reg_n_0_[1] ),
        .Q(addr[1]),
        .R(1'b0));
  FDRE \mi_addr_d1_reg[2] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(\mi_addr_reg_n_0_[2] ),
        .Q(addr[2]),
        .R(1'b0));
  FDRE \mi_addr_d1_reg[3] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(\mi_addr_reg_n_0_[3] ),
        .Q(addr[3]),
        .R(1'b0));
  FDRE \mi_addr_reg[0] 
       (.C(CLK),
        .CE(mi_last_index_reg_d0),
        .D(\mi_addr[0]_i_1_n_0 ),
        .Q(\mi_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mi_addr_reg[1] 
       (.C(CLK),
        .CE(mi_last_index_reg_d0),
        .D(\mi_addr[1]_i_1_n_0 ),
        .Q(\mi_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mi_addr_reg[2] 
       (.C(CLK),
        .CE(mi_last_index_reg_d0),
        .D(\mi_addr[2]_i_1_n_0 ),
        .Q(\mi_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mi_addr_reg[3] 
       (.C(CLK),
        .CE(mi_last_index_reg_d0),
        .D(\mi_addr[3]_i_2_n_0 ),
        .Q(\mi_addr_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \mi_be[0]_i_1 
       (.I0(\mi_be[0]_i_2_n_0 ),
        .I1(\mi_be[0]_i_3_n_0 ),
        .I2(\mi_wrap_be_next_reg_n_0_[0] ),
        .I3(\mi_be[13]_i_3_n_0 ),
        .I4(\mi_be[3]_i_4_n_0 ),
        .I5(\mi_be[0]_i_4_n_0 ),
        .O(\mi_be[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888A88888888)) 
    \mi_be[0]_i_2 
       (.I0(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I1(\mi_be[3]_i_6_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(\mi_be[14]_i_9_n_0 ),
        .O(\mi_be[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000050100000000)) 
    \mi_be[0]_i_3 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awaddr[0]),
        .I2(m_axi_awsize[1]),
        .I3(m_axi_awsize[0]),
        .I4(m_axi_awaddr[1]),
        .I5(\mi_wrap_be_next[6]_i_4_n_0 ),
        .O(\mi_be[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[0]_i_4 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[12]),
        .I2(be__0[14]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[0]_i_5_n_0 ),
        .O(\mi_be[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[0]_i_5 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be),
        .I2(be__0[8]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \mi_be[10]_i_1 
       (.I0(\mi_be[10]_i_2_n_0 ),
        .I1(\mi_be[11]_i_3_n_0 ),
        .I2(\mi_be[10]_i_3_n_0 ),
        .I3(\mi_be[10]_i_4_n_0 ),
        .I4(\mi_be[14]_i_5_n_0 ),
        .I5(\mi_be[10]_i_5_n_0 ),
        .O(\mi_be[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[10]_i_2 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[6]),
        .I2(be__0[8]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[10]_i_6_n_0 ),
        .O(\mi_be[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF020002000200)) 
    \mi_be[10]_i_3 
       (.I0(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(\mi_be[14]_i_8_n_0 ),
        .I3(\mi_be[14]_i_9_n_0 ),
        .I4(\mi_wrap_be_next_reg_n_0_[10] ),
        .I5(\mi_be[13]_i_3_n_0 ),
        .O(\mi_be[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0023)) 
    \mi_be[10]_i_4 
       (.I0(m_axi_awsize[0]),
        .I1(m_axi_awsize[1]),
        .I2(m_axi_awaddr[0]),
        .I3(m_axi_awaddr[2]),
        .O(\mi_be[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB00000000000)) 
    \mi_be[10]_i_5 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_size_reg_n_0_[2] ),
        .I5(\mi_wrap_cnt[3]_i_5_n_0 ),
        .O(\mi_be[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[10]_i_6 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[9]),
        .I2(be__0[2]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    \mi_be[11]_i_1 
       (.I0(\mi_be[15]_i_3_n_0 ),
        .I1(m_axi_awaddr[2]),
        .I2(\mi_be[11]_i_2_n_0 ),
        .I3(\mi_be[11]_i_3_n_0 ),
        .I4(\mi_be[11]_i_4_n_0 ),
        .O(\mi_be[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[11]_i_2 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[7]),
        .I2(be__0[9]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[11]_i_5_n_0 ),
        .O(\mi_be[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000088080000)) 
    \mi_be[11]_i_3 
       (.I0(m_axi_awsize[1]),
        .I1(m_axi_awaddr[3]),
        .I2(m_axi_awaddr[2]),
        .I3(m_axi_awsize[0]),
        .I4(load_mi_ptr),
        .I5(m_axi_awsize[2]),
        .O(\mi_be[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF400F400F400)) 
    \mi_be[11]_i_4 
       (.I0(p_0_in_0[1]),
        .I1(\mi_be[15]_i_9_n_0 ),
        .I2(\mi_be[11]_i_6_n_0 ),
        .I3(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I4(\mi_wrap_be_next_reg_n_0_[11] ),
        .I5(\mi_be[13]_i_3_n_0 ),
        .O(\mi_be[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[11]_i_5 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[10]),
        .I2(be__0[3]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFF8808)) 
    \mi_be[11]_i_6 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(\next_mi_size_reg_n_0_[2] ),
        .O(\mi_be[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \mi_be[12]_i_1 
       (.I0(\mi_be[12]_i_2_n_0 ),
        .I1(\mi_be[13]_i_3_n_0 ),
        .I2(\mi_wrap_be_next_reg_n_0_[12] ),
        .I3(\mi_be[14]_i_4_n_0 ),
        .I4(m_axi_awaddr[1]),
        .I5(\mi_be[13]_i_5_n_0 ),
        .O(\mi_be[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEEEEEEEEE)) 
    \mi_be[12]_i_2 
       (.I0(\mi_be[15]_i_5_n_0 ),
        .I1(\mi_be[12]_i_3_n_0 ),
        .I2(\mi_be[14]_i_9_n_0 ),
        .I3(\mi_be[13]_i_8_n_0 ),
        .I4(\mi_be[15]_i_10_n_0 ),
        .I5(\mi_wrap_cnt[3]_i_5_n_0 ),
        .O(\mi_be[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[12]_i_3 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[8]),
        .I2(be__0[10]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[12]_i_4_n_0 ),
        .O(\mi_be[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[12]_i_4 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[11]),
        .I2(be__0[4]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \mi_be[13]_i_1 
       (.I0(\mi_be[13]_i_2_n_0 ),
        .I1(\mi_be[13]_i_3_n_0 ),
        .I2(\mi_wrap_be_next_reg_n_0_[13] ),
        .I3(\mi_be[13]_i_4_n_0 ),
        .I4(m_axi_awaddr[1]),
        .I5(\mi_be[13]_i_5_n_0 ),
        .O(\mi_be[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[13]_i_10 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[12]),
        .I2(be__0[5]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEEEEEEEEE)) 
    \mi_be[13]_i_2 
       (.I0(\mi_be[15]_i_5_n_0 ),
        .I1(\mi_be[13]_i_6_n_0 ),
        .I2(\mi_be[13]_i_7_n_0 ),
        .I3(\mi_be[13]_i_8_n_0 ),
        .I4(\mi_be[15]_i_10_n_0 ),
        .I5(\mi_wrap_cnt[3]_i_5_n_0 ),
        .O(\mi_be[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \mi_be[13]_i_3 
       (.I0(load_mi_ptr),
        .I1(mi_last),
        .I2(\mi_be[13]_i_9_n_0 ),
        .I3(\mi_burst_reg_n_0_[0] ),
        .I4(\mi_burst_reg_n_0_[1] ),
        .I5(mi_wrap_cnt[3]),
        .O(\mi_be[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h3200)) 
    \mi_be[13]_i_4 
       (.I0(m_axi_awsize[0]),
        .I1(m_axi_awsize[1]),
        .I2(m_axi_awaddr[0]),
        .I3(m_axi_awaddr[2]),
        .O(\mi_be[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mi_be[13]_i_5 
       (.I0(m_axi_awaddr[3]),
        .I1(load_mi_ptr),
        .O(\mi_be[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[13]_i_6 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[9]),
        .I2(be__0[11]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[13]_i_10_n_0 ),
        .O(\mi_be[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \mi_be[13]_i_7 
       (.I0(\next_mi_addr_reg_n_0_[0] ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_be[13]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \mi_be[13]_i_8 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .O(\mi_be[13]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \mi_be[13]_i_9 
       (.I0(mi_wrap_cnt[1]),
        .I1(mi_wrap_cnt[0]),
        .I2(mi_wrap_cnt[2]),
        .O(\mi_be[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \mi_be[14]_i_1 
       (.I0(\mi_be[14]_i_2_n_0 ),
        .I1(\mi_be[15]_i_5_n_0 ),
        .I2(\mi_be[14]_i_3_n_0 ),
        .I3(\mi_be[14]_i_4_n_0 ),
        .I4(\mi_be[14]_i_5_n_0 ),
        .I5(\mi_be[14]_i_6_n_0 ),
        .O(\mi_be[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[14]_i_2 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[10]),
        .I2(be__0[12]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[14]_i_7_n_0 ),
        .O(\mi_be[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \mi_be[14]_i_3 
       (.I0(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I1(\mi_be[14]_i_8_n_0 ),
        .I2(p_0_in_0[1]),
        .I3(\mi_be[14]_i_9_n_0 ),
        .I4(\mi_wrap_be_next_reg_n_0_[14] ),
        .I5(\mi_be[13]_i_3_n_0 ),
        .O(\mi_be[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h2300)) 
    \mi_be[14]_i_4 
       (.I0(m_axi_awsize[0]),
        .I1(m_axi_awsize[1]),
        .I2(m_axi_awaddr[0]),
        .I3(m_axi_awaddr[2]),
        .O(\mi_be[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mi_be[14]_i_5 
       (.I0(load_mi_ptr),
        .I1(m_axi_awaddr[3]),
        .I2(m_axi_awaddr[1]),
        .O(\mi_be[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE00000000000)) 
    \mi_be[14]_i_6 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_size_reg_n_0_[2] ),
        .I5(\mi_wrap_cnt[3]_i_5_n_0 ),
        .O(\mi_be[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[14]_i_7 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[13]),
        .I2(be__0[6]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \mi_be[14]_i_8 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .O(\mi_be[14]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h31)) 
    \mi_be[14]_i_9 
       (.I0(\next_mi_addr_reg_n_0_[0] ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_be[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \mi_be[15]_i_1 
       (.I0(\mi_burst_reg_n_0_[1] ),
        .I1(\mi_burst_reg_n_0_[0] ),
        .I2(mi_last),
        .I3(mi_buf_en),
        .I4(load_mi_ptr),
        .O(\mi_be[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFF8880)) 
    \mi_be[15]_i_10 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(\next_mi_size_reg_n_0_[2] ),
        .O(\mi_be[15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \mi_be[15]_i_2 
       (.I0(\mi_be[15]_i_3_n_0 ),
        .I1(m_axi_awaddr[2]),
        .I2(\mi_be[15]_i_4_n_0 ),
        .I3(\mi_be[15]_i_5_n_0 ),
        .I4(\mi_be[15]_i_6_n_0 ),
        .O(\mi_be[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C08000000000000)) 
    \mi_be[15]_i_3 
       (.I0(m_axi_awaddr[0]),
        .I1(load_mi_ptr),
        .I2(m_axi_awsize[1]),
        .I3(m_axi_awsize[0]),
        .I4(m_axi_awaddr[3]),
        .I5(m_axi_awaddr[1]),
        .O(\mi_be[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[15]_i_4 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[11]),
        .I2(be__0[13]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[15]_i_8_n_0 ),
        .O(\mi_be[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000088800000)) 
    \mi_be[15]_i_5 
       (.I0(m_axi_awsize[1]),
        .I1(m_axi_awaddr[3]),
        .I2(m_axi_awsize[0]),
        .I3(m_axi_awaddr[2]),
        .I4(load_mi_ptr),
        .I5(m_axi_awsize[2]),
        .O(\mi_be[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF800F800F800)) 
    \mi_be[15]_i_6 
       (.I0(p_0_in_0[1]),
        .I1(\mi_be[15]_i_9_n_0 ),
        .I2(\mi_be[15]_i_10_n_0 ),
        .I3(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I4(\mi_size_reg_n_0_[2] ),
        .I5(\mi_be[13]_i_3_n_0 ),
        .O(\mi_be[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111101111)) 
    \mi_be[15]_i_7 
       (.I0(load_mi_ptr),
        .I1(mi_last),
        .I2(\mi_be[13]_i_9_n_0 ),
        .I3(\mi_burst_reg_n_0_[0] ),
        .I4(\mi_burst_reg_n_0_[1] ),
        .I5(mi_wrap_cnt[3]),
        .O(\mi_be[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[15]_i_8 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[14]),
        .I2(be__0[7]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h0000C080)) 
    \mi_be[15]_i_9 
       (.I0(\next_mi_addr_reg_n_0_[0] ),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_be[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \mi_be[1]_i_1 
       (.I0(\mi_be[1]_i_2_n_0 ),
        .I1(\mi_be[1]_i_3_n_0 ),
        .I2(\mi_wrap_be_next_reg_n_0_[1] ),
        .I3(\mi_be[13]_i_3_n_0 ),
        .I4(\mi_be[3]_i_4_n_0 ),
        .I5(\mi_be[1]_i_4_n_0 ),
        .O(\mi_be[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888A88888888)) 
    \mi_be[1]_i_2 
       (.I0(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I1(\mi_be[3]_i_6_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(\mi_be[13]_i_7_n_0 ),
        .O(\mi_be[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000050400000000)) 
    \mi_be[1]_i_3 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awaddr[0]),
        .I2(m_axi_awsize[1]),
        .I3(m_axi_awsize[0]),
        .I4(m_axi_awaddr[1]),
        .I5(\mi_wrap_be_next[6]_i_4_n_0 ),
        .O(\mi_be[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[1]_i_4 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[13]),
        .I2(be),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[1]_i_5_n_0 ),
        .O(\mi_be[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[1]_i_5 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[0]),
        .I2(be__0[9]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF40)) 
    \mi_be[2]_i_1 
       (.I0(load_mi_ptr),
        .I1(mi_last),
        .I2(f_mi_be_init0_return[2]),
        .I3(\mi_be[2]_i_3_n_0 ),
        .I4(\mi_be[3]_i_4_n_0 ),
        .I5(\mi_be[2]_i_4_n_0 ),
        .O(\mi_be[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCFCCCCCCCDCCC)) 
    \mi_be[2]_i_2 
       (.I0(\next_mi_addr_reg_n_0_[0] ),
        .I1(\mi_be[3]_i_6_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(\mi_wrap_be_next[2]_i_3_n_0 ),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .I5(\next_mi_size_reg_n_0_[0] ),
        .O(f_mi_be_init0_return[2]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \mi_be[2]_i_3 
       (.I0(m_axi_awaddr[3]),
        .I1(load_mi_ptr),
        .I2(m_axi_awaddr[1]),
        .I3(\mi_be[10]_i_4_n_0 ),
        .I4(\mi_wrap_be_next_reg_n_0_[2] ),
        .I5(\mi_be[13]_i_3_n_0 ),
        .O(\mi_be[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[2]_i_4 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[14]),
        .I2(be__0[0]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[2]_i_5_n_0 ),
        .O(\mi_be[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[2]_i_5 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[1]),
        .I2(be__0[10]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF40)) 
    \mi_be[3]_i_1 
       (.I0(load_mi_ptr),
        .I1(mi_last),
        .I2(f_mi_be_init0_return[3]),
        .I3(\mi_be[3]_i_3_n_0 ),
        .I4(\mi_be[3]_i_4_n_0 ),
        .I5(\mi_be[3]_i_5_n_0 ),
        .O(\mi_be[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCFCCCCCCCECCC)) 
    \mi_be[3]_i_2 
       (.I0(\next_mi_addr_reg_n_0_[0] ),
        .I1(\mi_be[3]_i_6_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(\mi_wrap_be_next[2]_i_3_n_0 ),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .I5(\next_mi_size_reg_n_0_[0] ),
        .O(f_mi_be_init0_return[3]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \mi_be[3]_i_3 
       (.I0(m_axi_awaddr[3]),
        .I1(load_mi_ptr),
        .I2(m_axi_awaddr[1]),
        .I3(\mi_be[9]_i_3_n_0 ),
        .I4(\mi_wrap_be_next_reg_n_0_[3] ),
        .I5(\mi_be[13]_i_3_n_0 ),
        .O(\mi_be[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C0F0C0D0C0)) 
    \mi_be[3]_i_4 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awsize[2]),
        .I2(load_mi_ptr),
        .I3(m_axi_awsize[1]),
        .I4(m_axi_awsize[0]),
        .I5(m_axi_awaddr[3]),
        .O(\mi_be[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[3]_i_5 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be),
        .I2(be__0[1]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[3]_i_7_n_0 ),
        .O(\mi_be[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hCFCCCDCC)) 
    \mi_be[3]_i_6 
       (.I0(p_0_in_0[1]),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(p_0_in_0[2]),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_be[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[3]_i_7 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[2]),
        .I2(be__0[11]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \mi_be[4]_i_1 
       (.I0(\mi_be[4]_i_2_n_0 ),
        .I1(\mi_be[4]_i_3_n_0 ),
        .I2(\mi_wrap_be_next_reg_n_0_[4] ),
        .I3(\mi_be[13]_i_3_n_0 ),
        .I4(\mi_be[7]_i_4_n_0 ),
        .I5(\mi_be[4]_i_4_n_0 ),
        .O(\mi_be[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888A8888888888)) 
    \mi_be[4]_i_2 
       (.I0(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I1(\mi_be[7]_i_6_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(\mi_be[14]_i_9_n_0 ),
        .O(\mi_be[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0200000000)) 
    \mi_be[4]_i_3 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awaddr[0]),
        .I2(m_axi_awsize[1]),
        .I3(m_axi_awsize[0]),
        .I4(m_axi_awaddr[1]),
        .I5(\mi_wrap_be_next[6]_i_4_n_0 ),
        .O(\mi_be[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[4]_i_4 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[0]),
        .I2(be__0[2]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[4]_i_5_n_0 ),
        .O(\mi_be[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[4]_i_5 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[3]),
        .I2(be__0[12]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \mi_be[5]_i_1 
       (.I0(\mi_be[5]_i_2_n_0 ),
        .I1(\mi_be[5]_i_3_n_0 ),
        .I2(\mi_wrap_be_next_reg_n_0_[5] ),
        .I3(\mi_be[13]_i_3_n_0 ),
        .I4(\mi_be[7]_i_4_n_0 ),
        .I5(\mi_be[5]_i_4_n_0 ),
        .O(\mi_be[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888A8888888888)) 
    \mi_be[5]_i_2 
       (.I0(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I1(\mi_be[7]_i_6_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(\mi_be[13]_i_7_n_0 ),
        .O(\mi_be[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0800000000)) 
    \mi_be[5]_i_3 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awaddr[0]),
        .I2(m_axi_awsize[1]),
        .I3(m_axi_awsize[0]),
        .I4(m_axi_awaddr[1]),
        .I5(\mi_wrap_be_next[6]_i_4_n_0 ),
        .O(\mi_be[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[5]_i_4 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[1]),
        .I2(be__0[3]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[5]_i_5_n_0 ),
        .O(\mi_be[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[5]_i_5 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[4]),
        .I2(be__0[13]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \mi_be[6]_i_1 
       (.I0(\mi_be[6]_i_2_n_0 ),
        .I1(\mi_be[6]_i_3_n_0 ),
        .I2(\mi_wrap_be_next_reg_n_0_[6] ),
        .I3(\mi_be[13]_i_3_n_0 ),
        .I4(\mi_be[7]_i_4_n_0 ),
        .I5(\mi_be[6]_i_4_n_0 ),
        .O(\mi_be[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888A88888888888)) 
    \mi_be[6]_i_2 
       (.I0(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I1(\mi_be[7]_i_6_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(\mi_be[14]_i_9_n_0 ),
        .O(\mi_be[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A02000000000000)) 
    \mi_be[6]_i_3 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awaddr[0]),
        .I2(m_axi_awsize[1]),
        .I3(m_axi_awsize[0]),
        .I4(m_axi_awaddr[1]),
        .I5(\mi_wrap_be_next[6]_i_4_n_0 ),
        .O(\mi_be[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[6]_i_4 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[2]),
        .I2(be__0[4]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[6]_i_5_n_0 ),
        .O(\mi_be[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[6]_i_5 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[5]),
        .I2(be__0[14]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \mi_be[7]_i_1 
       (.I0(\mi_be[7]_i_2_n_0 ),
        .I1(\mi_be[7]_i_3_n_0 ),
        .I2(\mi_wrap_be_next_reg_n_0_[7] ),
        .I3(\mi_be[13]_i_3_n_0 ),
        .I4(\mi_be[7]_i_4_n_0 ),
        .I5(\mi_be[7]_i_5_n_0 ),
        .O(\mi_be[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888A88888888888)) 
    \mi_be[7]_i_2 
       (.I0(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I1(\mi_be[7]_i_6_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(\mi_be[13]_i_7_n_0 ),
        .O(\mi_be[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A08000000000000)) 
    \mi_be[7]_i_3 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awaddr[0]),
        .I2(m_axi_awsize[1]),
        .I3(m_axi_awsize[0]),
        .I4(m_axi_awaddr[1]),
        .I5(\mi_wrap_be_next[6]_i_4_n_0 ),
        .O(\mi_be[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C0F0C0E0C0)) 
    \mi_be[7]_i_4 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awsize[2]),
        .I2(load_mi_ptr),
        .I3(m_axi_awsize[1]),
        .I4(m_axi_awsize[0]),
        .I5(m_axi_awaddr[3]),
        .O(\mi_be[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[7]_i_5 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[3]),
        .I2(be__0[5]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[7]_i_7_n_0 ),
        .O(\mi_be[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hCFCCCECC)) 
    \mi_be[7]_i_6 
       (.I0(p_0_in_0[1]),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(p_0_in_0[2]),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_be[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[7]_i_7 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[6]),
        .I2(be),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \mi_be[8]_i_1 
       (.I0(\mi_be[8]_i_2_n_0 ),
        .I1(\mi_be[13]_i_3_n_0 ),
        .I2(\mi_wrap_be_next_reg_n_0_[8] ),
        .I3(\mi_be[10]_i_4_n_0 ),
        .I4(m_axi_awaddr[1]),
        .I5(\mi_be[13]_i_5_n_0 ),
        .O(\mi_be[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEEEEEEEEE)) 
    \mi_be[8]_i_2 
       (.I0(\mi_be[11]_i_3_n_0 ),
        .I1(\mi_be[8]_i_3_n_0 ),
        .I2(\mi_be[14]_i_9_n_0 ),
        .I3(\mi_be[9]_i_5_n_0 ),
        .I4(\mi_be[11]_i_6_n_0 ),
        .I5(\mi_wrap_cnt[3]_i_5_n_0 ),
        .O(\mi_be[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[8]_i_3 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[4]),
        .I2(be__0[6]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[8]_i_4_n_0 ),
        .O(\mi_be[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[8]_i_4 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[7]),
        .I2(be__0[0]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \mi_be[9]_i_1 
       (.I0(\mi_be[9]_i_2_n_0 ),
        .I1(\mi_be[13]_i_3_n_0 ),
        .I2(\mi_wrap_be_next_reg_n_0_[9] ),
        .I3(\mi_be[9]_i_3_n_0 ),
        .I4(m_axi_awaddr[1]),
        .I5(\mi_be[13]_i_5_n_0 ),
        .O(\mi_be[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEEEEEEEEE)) 
    \mi_be[9]_i_2 
       (.I0(\mi_be[11]_i_3_n_0 ),
        .I1(\mi_be[9]_i_4_n_0 ),
        .I2(\mi_be[13]_i_7_n_0 ),
        .I3(\mi_be[9]_i_5_n_0 ),
        .I4(\mi_be[11]_i_6_n_0 ),
        .I5(\mi_wrap_cnt[3]_i_5_n_0 ),
        .O(\mi_be[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0032)) 
    \mi_be[9]_i_3 
       (.I0(m_axi_awsize[0]),
        .I1(m_axi_awsize[1]),
        .I2(m_axi_awaddr[0]),
        .I3(m_axi_awaddr[2]),
        .O(\mi_be[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0088A000)) 
    \mi_be[9]_i_4 
       (.I0(\mi_be[15]_i_7_n_0 ),
        .I1(be__0[5]),
        .I2(be__0[7]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .I5(\mi_be[9]_i_6_n_0 ),
        .O(\mi_be[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \mi_be[9]_i_5 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .O(\mi_be[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAAAEE)) 
    \mi_be[9]_i_6 
       (.I0(\mi_size_reg_n_0_[2] ),
        .I1(be__0[8]),
        .I2(be__0[1]),
        .I3(\mi_size_reg_n_0_[0] ),
        .I4(\mi_size_reg_n_0_[1] ),
        .O(\mi_be[9]_i_6_n_0 ));
  FDRE \mi_be_d1_reg[0] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[0]),
        .Q(\mi_be_d1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[10] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[10]),
        .Q(\mi_be_d1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[11] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[11]),
        .Q(\mi_be_d1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[12] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[12]),
        .Q(\mi_be_d1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[13] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[13]),
        .Q(\mi_be_d1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[14] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[14]),
        .Q(\mi_be_d1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[15] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be),
        .Q(\mi_be_d1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[1] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[1]),
        .Q(\mi_be_d1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[2] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[2]),
        .Q(\mi_be_d1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[3] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[3]),
        .Q(\mi_be_d1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[4] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[4]),
        .Q(\mi_be_d1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[5] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[5]),
        .Q(\mi_be_d1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[6] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[6]),
        .Q(\mi_be_d1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[7] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[7]),
        .Q(\mi_be_d1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[8] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[8]),
        .Q(\mi_be_d1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[9] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(be__0[9]),
        .Q(\mi_be_d1_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \mi_be_reg[0] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[0]_i_1_n_0 ),
        .Q(be__0[0]),
        .R(1'b0));
  FDRE \mi_be_reg[10] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[10]_i_1_n_0 ),
        .Q(be__0[10]),
        .R(1'b0));
  FDRE \mi_be_reg[11] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[11]_i_1_n_0 ),
        .Q(be__0[11]),
        .R(1'b0));
  FDRE \mi_be_reg[12] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[12]_i_1_n_0 ),
        .Q(be__0[12]),
        .R(1'b0));
  FDRE \mi_be_reg[13] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[13]_i_1_n_0 ),
        .Q(be__0[13]),
        .R(1'b0));
  FDRE \mi_be_reg[14] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[14]_i_1_n_0 ),
        .Q(be__0[14]),
        .R(1'b0));
  FDRE \mi_be_reg[15] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[15]_i_2_n_0 ),
        .Q(be),
        .R(1'b0));
  FDRE \mi_be_reg[1] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[1]_i_1_n_0 ),
        .Q(be__0[1]),
        .R(1'b0));
  FDRE \mi_be_reg[2] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[2]_i_1_n_0 ),
        .Q(be__0[2]),
        .R(1'b0));
  FDRE \mi_be_reg[3] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[3]_i_1_n_0 ),
        .Q(be__0[3]),
        .R(1'b0));
  FDRE \mi_be_reg[4] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[4]_i_1_n_0 ),
        .Q(be__0[4]),
        .R(1'b0));
  FDRE \mi_be_reg[5] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[5]_i_1_n_0 ),
        .Q(be__0[5]),
        .R(1'b0));
  FDRE \mi_be_reg[6] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[6]_i_1_n_0 ),
        .Q(be__0[6]),
        .R(1'b0));
  FDRE \mi_be_reg[7] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[7]_i_1_n_0 ),
        .Q(be__0[7]),
        .R(1'b0));
  FDRE \mi_be_reg[8] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[8]_i_1_n_0 ),
        .Q(be__0[8]),
        .R(1'b0));
  FDRE \mi_be_reg[9] 
       (.C(CLK),
        .CE(\mi_be[15]_i_1_n_0 ),
        .D(\mi_be[9]_i_1_n_0 ),
        .Q(be__0[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mi_buf[0]_i_1 
       (.I0(mi_buf_addr[6]),
        .O(\mi_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mi_buf[1]_i_1 
       (.I0(mi_buf_addr[6]),
        .I1(mi_buf_addr[7]),
        .O(\mi_buf[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEE0000)) 
    \mi_buf[2]_i_1 
       (.I0(load_mi_d1),
        .I1(load_mi_d2),
        .I2(m_axi_wready),
        .I3(m_axi_wvalid),
        .I4(mi_last),
        .O(mi_buf0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mi_buf[2]_i_2 
       (.I0(mi_buf_addr[6]),
        .I1(mi_buf_addr[7]),
        .I2(mi_buf_addr[8]),
        .O(\mi_buf[2]_i_2_n_0 ));
  FDRE \mi_buf_reg[0] 
       (.C(CLK),
        .CE(mi_buf0),
        .D(\mi_buf[0]_i_1_n_0 ),
        .Q(mi_buf_addr[6]),
        .R(awpop_reset0));
  FDRE \mi_buf_reg[1] 
       (.C(CLK),
        .CE(mi_buf0),
        .D(\mi_buf[1]_i_1_n_0 ),
        .Q(mi_buf_addr[7]),
        .R(awpop_reset0));
  FDRE \mi_buf_reg[2] 
       (.C(CLK),
        .CE(mi_buf0),
        .D(\mi_buf[2]_i_2_n_0 ),
        .Q(mi_buf_addr[8]),
        .R(awpop_reset0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_burst[0]_i_1 
       (.I0(m_axi_awburst[0]),
        .I1(load_mi_ptr),
        .I2(next_mi_burst[0]),
        .O(\mi_burst[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    \mi_burst[1]_i_1 
       (.I0(load_mi_ptr),
        .I1(load_mi_d1),
        .I2(load_mi_d2),
        .I3(m_axi_wready),
        .I4(m_axi_wvalid),
        .I5(mi_last),
        .O(mi_wrap_be_next));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mi_burst[1]_i_2 
       (.I0(next_mi_burst[1]),
        .I1(load_mi_ptr),
        .I2(m_axi_awburst[1]),
        .O(\mi_burst[1]_i_2_n_0 ));
  FDRE \mi_burst_reg[0] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_burst[0]_i_1_n_0 ),
        .Q(\mi_burst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mi_burst_reg[1] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_burst[1]_i_2_n_0 ),
        .Q(\mi_burst_reg_n_0_[1] ),
        .R(1'b0));
  FDRE mi_first_d1_reg
       (.C(CLK),
        .CE(mi_last_d1),
        .D(mi_first),
        .Q(mi_first_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFE2)) 
    mi_first_i_1
       (.I0(mi_first),
        .I1(mi_buf_en),
        .I2(mi_last),
        .I3(load_mi_ptr),
        .O(mi_first_i_1_n_0));
  FDRE mi_first_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mi_first_i_1_n_0),
        .Q(mi_first),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mi_last_d1_i_1
       (.I0(mi_last),
        .I1(mi_last_d1),
        .I2(mi_last_d1_reg_n_0),
        .O(mi_last_d1_i_1_n_0));
  FDRE mi_last_d1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mi_last_d1_i_1_n_0),
        .Q(mi_last_d1_reg_n_0),
        .R(awpop_reset0));
  LUT5 #(
    .INIT(32'hACAFACA0)) 
    mi_last_i_1
       (.I0(mi_last_i_2_n_0),
        .I1(mi_last_i_3_n_0),
        .I2(load_mi_ptr),
        .I3(mi_buf_en),
        .I4(mi_last),
        .O(mi_last_i_1_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    mi_last_i_2
       (.I0(m_axi_awlen[4]),
        .I1(m_axi_awlen[5]),
        .I2(m_axi_awlen[6]),
        .I3(m_axi_awlen[7]),
        .I4(mi_last_i_4_n_0),
        .O(mi_last_i_2_n_0));
  LUT6 #(
    .INIT(64'h88888F8888888888)) 
    mi_last_i_3
       (.I0(mi_last_i_5_n_0),
        .I1(mi_last_i_6_n_0),
        .I2(mi_wcnt[1]),
        .I3(mi_wcnt[0]),
        .I4(mi_last),
        .I5(mi_last_i_7_n_0),
        .O(mi_last_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    mi_last_i_4
       (.I0(m_axi_awlen[1]),
        .I1(m_axi_awlen[0]),
        .I2(m_axi_awlen[3]),
        .I3(m_axi_awlen[2]),
        .O(mi_last_i_4_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    mi_last_i_5
       (.I0(next_valid),
        .I1(mi_last),
        .I2(\next_mi_len_reg_n_0_[1] ),
        .I3(\next_mi_len_reg_n_0_[0] ),
        .O(mi_last_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    mi_last_i_6
       (.I0(p_2_in),
        .I1(p_5_in),
        .I2(\next_mi_len_reg_n_0_[4] ),
        .I3(\next_mi_len_reg_n_0_[5] ),
        .I4(\next_mi_len_reg_n_0_[7] ),
        .I5(\next_mi_len_reg_n_0_[6] ),
        .O(mi_last_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    mi_last_i_7
       (.I0(mi_wcnt[2]),
        .I1(mi_wcnt[3]),
        .I2(mi_wcnt[4]),
        .I3(mi_wcnt[5]),
        .I4(mi_wcnt[7]),
        .I5(mi_wcnt[6]),
        .O(mi_last_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_last_index_reg_d0[0]_i_1 
       (.I0(mi_last_index_reg[0]),
        .I1(load_mi_ptr),
        .I2(next_mi_last_index_reg[0]),
        .O(\mi_last_index_reg_d0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_last_index_reg_d0[1]_i_1 
       (.I0(mi_last_index_reg[1]),
        .I1(load_mi_ptr),
        .I2(next_mi_last_index_reg[1]),
        .O(\mi_last_index_reg_d0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_last_index_reg_d0[2]_i_1 
       (.I0(mi_last_index_reg[2]),
        .I1(load_mi_ptr),
        .I2(next_mi_last_index_reg[2]),
        .O(\mi_last_index_reg_d0[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_last_index_reg_d0[3]_i_1 
       (.I0(mi_last_index_reg[3]),
        .I1(load_mi_ptr),
        .I2(next_mi_last_index_reg[3]),
        .O(\mi_last_index_reg_d0[3]_i_1_n_0 ));
  FDRE \mi_last_index_reg_d0_reg[0] 
       (.C(CLK),
        .CE(mi_last_index_reg_d0),
        .D(\mi_last_index_reg_d0[0]_i_1_n_0 ),
        .Q(\mi_last_index_reg_d0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mi_last_index_reg_d0_reg[1] 
       (.C(CLK),
        .CE(mi_last_index_reg_d0),
        .D(\mi_last_index_reg_d0[1]_i_1_n_0 ),
        .Q(\mi_last_index_reg_d0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mi_last_index_reg_d0_reg[2] 
       (.C(CLK),
        .CE(mi_last_index_reg_d0),
        .D(\mi_last_index_reg_d0[2]_i_1_n_0 ),
        .Q(\mi_last_index_reg_d0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mi_last_index_reg_d0_reg[3] 
       (.C(CLK),
        .CE(mi_last_index_reg_d0),
        .D(\mi_last_index_reg_d0[3]_i_1_n_0 ),
        .Q(\mi_last_index_reg_d0_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mi_last_index_reg_d1_reg[0] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(\mi_last_index_reg_d0_reg_n_0_[0] ),
        .Q(index[0]),
        .R(1'b0));
  FDRE \mi_last_index_reg_d1_reg[1] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(\mi_last_index_reg_d0_reg_n_0_[1] ),
        .Q(index[1]),
        .R(1'b0));
  FDRE \mi_last_index_reg_d1_reg[2] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(\mi_last_index_reg_d0_reg_n_0_[2] ),
        .Q(index[2]),
        .R(1'b0));
  FDRE \mi_last_index_reg_d1_reg[3] 
       (.C(CLK),
        .CE(mi_last_d1),
        .D(\mi_last_index_reg_d0_reg_n_0_[3] ),
        .Q(index[3]),
        .R(1'b0));
  FDRE mi_last_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mi_last_i_1_n_0),
        .Q(mi_last),
        .R(awpop_reset0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAAB)) 
    \mi_ptr[0]_i_1 
       (.I0(\mi_ptr[0]_i_2_n_0 ),
        .I1(mi_buf_addr[0]),
        .I2(mi_last),
        .I3(load_mi_ptr),
        .I4(\mi_ptr[0]_i_3_n_0 ),
        .I5(\mi_ptr[0]_i_4_n_0 ),
        .O(\mi_ptr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \mi_ptr[0]_i_2 
       (.I0(m_axi_awlen[3]),
        .I1(m_axi_awsize[1]),
        .I2(m_axi_awaddr[4]),
        .I3(m_axi_awsize[0]),
        .I4(m_axi_awsize[2]),
        .I5(load_mi_ptr),
        .O(\mi_ptr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000020C000000000)) 
    \mi_ptr[0]_i_3 
       (.I0(m_axi_awlen[2]),
        .I1(m_axi_awsize[2]),
        .I2(load_mi_ptr),
        .I3(m_axi_awsize[1]),
        .I4(m_axi_awsize[0]),
        .I5(m_axi_awaddr[4]),
        .O(\mi_ptr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1000FF0010000000)) 
    \mi_ptr[0]_i_4 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_addr_reg_n_0_[4] ),
        .I3(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I4(\next_mi_size_reg_n_0_[2] ),
        .I5(\mi_ptr[0]_i_5_n_0 ),
        .O(\mi_ptr[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h62400000)) 
    \mi_ptr[0]_i_5 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(p_2_in),
        .I3(p_5_in),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_ptr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF28)) 
    \mi_ptr[1]_i_1 
       (.I0(\mi_wrap_cnt[2]_i_2_n_0 ),
        .I1(mi_buf_addr[0]),
        .I2(mi_buf_addr[1]),
        .I3(\mi_ptr[1]_i_2_n_0 ),
        .I4(\mi_ptr[1]_i_3_n_0 ),
        .I5(\mi_ptr[1]_i_4_n_0 ),
        .O(\mi_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \mi_ptr[1]_i_2 
       (.I0(m_axi_awsize[0]),
        .I1(m_axi_awsize[1]),
        .I2(m_axi_awaddr[5]),
        .I3(m_axi_awlen[1]),
        .I4(load_mi_ptr),
        .I5(m_axi_awsize[2]),
        .O(\mi_ptr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \mi_ptr[1]_i_3 
       (.I0(m_axi_awlen[3]),
        .I1(m_axi_awsize[2]),
        .I2(m_axi_awaddr[5]),
        .I3(m_axi_awsize[0]),
        .I4(load_mi_ptr),
        .I5(m_axi_awsize[1]),
        .O(\mi_ptr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000FF0080000000)) 
    \mi_ptr[1]_i_4 
       (.I0(\next_mi_len_reg_n_0_[1] ),
        .I1(\next_mi_addr_reg_n_0_[5] ),
        .I2(\mi_wrap_be_next[0]_i_3_n_0 ),
        .I3(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I4(\next_mi_size_reg_n_0_[2] ),
        .I5(\mi_ptr[1]_i_5_n_0 ),
        .O(\mi_ptr[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mi_ptr[1]_i_5 
       (.I0(p_5_in),
        .I1(\next_mi_addr_reg_n_0_[5] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_ptr[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h01111000)) 
    \mi_ptr[2]_i_1 
       (.I0(mi_last),
        .I1(load_mi_ptr),
        .I2(mi_buf_addr[0]),
        .I3(mi_buf_addr[1]),
        .I4(mi_buf_addr[2]),
        .O(\mi_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \mi_ptr[3]_i_1 
       (.I0(mi_last),
        .I1(load_mi_ptr),
        .I2(mi_buf_addr[1]),
        .I3(mi_buf_addr[0]),
        .I4(mi_buf_addr[2]),
        .I5(mi_buf_addr[3]),
        .O(\mi_ptr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \mi_ptr[4]_i_1 
       (.I0(\mi_wrap_cnt[2]_i_2_n_0 ),
        .I1(mi_buf_addr[2]),
        .I2(mi_buf_addr[0]),
        .I3(mi_buf_addr[1]),
        .I4(mi_buf_addr[3]),
        .I5(mi_buf_addr[4]),
        .O(\mi_ptr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8CCC)) 
    \mi_ptr[5]_i_1 
       (.I0(m_axi_awburst[0]),
        .I1(\mi_ptr[5]_i_4_n_0 ),
        .I2(m_axi_awburst[1]),
        .I3(load_mi_ptr),
        .O(\mi_ptr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFAAAAAAAA)) 
    \mi_ptr[5]_i_2 
       (.I0(load_mi_ptr),
        .I1(mi_last),
        .I2(be),
        .I3(\mi_burst_reg_n_0_[1] ),
        .I4(\mi_burst_reg_n_0_[0] ),
        .I5(mi_buf_en),
        .O(\mi_ptr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000B0004)) 
    \mi_ptr[5]_i_3 
       (.I0(\mi_ptr[5]_i_5_n_0 ),
        .I1(mi_buf_addr[4]),
        .I2(load_mi_ptr),
        .I3(mi_last),
        .I4(mi_buf_addr[5]),
        .O(\mi_ptr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8808)) 
    \mi_ptr[5]_i_4 
       (.I0(mi_buf_en),
        .I1(mi_last),
        .I2(next_mi_burst[1]),
        .I3(next_mi_burst[0]),
        .I4(load_mi_ptr),
        .I5(\mi_ptr[5]_i_6_n_0 ),
        .O(\mi_ptr[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \mi_ptr[5]_i_5 
       (.I0(mi_buf_addr[3]),
        .I1(mi_buf_addr[1]),
        .I2(mi_buf_addr[0]),
        .I3(mi_buf_addr[2]),
        .O(\mi_ptr[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \mi_ptr[5]_i_6 
       (.I0(mi_buf_en),
        .I1(mi_last),
        .I2(\mi_be[13]_i_9_n_0 ),
        .I3(\mi_burst_reg_n_0_[0] ),
        .I4(\mi_burst_reg_n_0_[1] ),
        .I5(mi_wrap_cnt[3]),
        .O(\mi_ptr[5]_i_6_n_0 ));
  FDRE \mi_ptr_reg[0] 
       (.C(CLK),
        .CE(\mi_ptr[5]_i_2_n_0 ),
        .D(\mi_ptr[0]_i_1_n_0 ),
        .Q(mi_buf_addr[0]),
        .R(\mi_ptr[5]_i_1_n_0 ));
  FDRE \mi_ptr_reg[1] 
       (.C(CLK),
        .CE(\mi_ptr[5]_i_2_n_0 ),
        .D(\mi_ptr[1]_i_1_n_0 ),
        .Q(mi_buf_addr[1]),
        .R(\mi_ptr[5]_i_1_n_0 ));
  FDRE \mi_ptr_reg[2] 
       (.C(CLK),
        .CE(\mi_ptr[5]_i_2_n_0 ),
        .D(\mi_ptr[2]_i_1_n_0 ),
        .Q(mi_buf_addr[2]),
        .R(\mi_ptr[5]_i_1_n_0 ));
  FDRE \mi_ptr_reg[3] 
       (.C(CLK),
        .CE(\mi_ptr[5]_i_2_n_0 ),
        .D(\mi_ptr[3]_i_1_n_0 ),
        .Q(mi_buf_addr[3]),
        .R(\mi_ptr[5]_i_1_n_0 ));
  FDRE \mi_ptr_reg[4] 
       (.C(CLK),
        .CE(\mi_ptr[5]_i_2_n_0 ),
        .D(\mi_ptr[4]_i_1_n_0 ),
        .Q(mi_buf_addr[4]),
        .R(\mi_ptr[5]_i_1_n_0 ));
  FDRE \mi_ptr_reg[5] 
       (.C(CLK),
        .CE(\mi_ptr[5]_i_2_n_0 ),
        .D(\mi_ptr[5]_i_3_n_0 ),
        .Q(mi_buf_addr[5]),
        .R(\mi_ptr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_size[0]_i_1 
       (.I0(m_axi_awsize[0]),
        .I1(load_mi_ptr),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_size[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mi_size[1]_i_1 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(load_mi_ptr),
        .I2(m_axi_awsize[1]),
        .O(\mi_size[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_size[2]_i_1 
       (.I0(m_axi_awsize[2]),
        .I1(load_mi_ptr),
        .I2(\next_mi_size_reg_n_0_[2] ),
        .O(\mi_size[2]_i_1_n_0 ));
  FDRE \mi_size_reg[0] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_size[0]_i_1_n_0 ),
        .Q(\mi_size_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mi_size_reg[1] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_size[1]_i_1_n_0 ),
        .Q(\mi_size_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mi_size_reg[2] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_size[2]_i_1_n_0 ),
        .Q(\mi_size_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFB100B1)) 
    \mi_wcnt[0]_i_1 
       (.I0(mi_last),
        .I1(mi_wcnt[0]),
        .I2(\next_mi_len_reg_n_0_[0] ),
        .I3(load_mi_ptr),
        .I4(m_axi_awlen[0]),
        .O(\mi_wcnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCACFCAC0CAC0CACF)) 
    \mi_wcnt[1]_i_1 
       (.I0(\next_mi_len_reg_n_0_[1] ),
        .I1(m_axi_awlen[1]),
        .I2(load_mi_ptr),
        .I3(mi_last),
        .I4(mi_wcnt[1]),
        .I5(mi_wcnt[0]),
        .O(\mi_wcnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCACFCAC0CAC0CACF)) 
    \mi_wcnt[2]_i_1 
       (.I0(p_2_in),
        .I1(m_axi_awlen[2]),
        .I2(load_mi_ptr),
        .I3(mi_last),
        .I4(mi_wcnt[2]),
        .I5(\mi_wcnt[2]_i_2_n_0 ),
        .O(\mi_wcnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mi_wcnt[2]_i_2 
       (.I0(mi_wcnt[0]),
        .I1(mi_wcnt[1]),
        .O(\mi_wcnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCACFCAC0CAC0CACF)) 
    \mi_wcnt[3]_i_1 
       (.I0(p_5_in),
        .I1(m_axi_awlen[3]),
        .I2(load_mi_ptr),
        .I3(mi_last),
        .I4(mi_wcnt[3]),
        .I5(\mi_wcnt[3]_i_2_n_0 ),
        .O(\mi_wcnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \mi_wcnt[3]_i_2 
       (.I0(mi_wcnt[1]),
        .I1(mi_wcnt[0]),
        .I2(mi_wcnt[2]),
        .O(\mi_wcnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCACFCAC0CAC0CACF)) 
    \mi_wcnt[4]_i_1 
       (.I0(\next_mi_len_reg_n_0_[4] ),
        .I1(m_axi_awlen[4]),
        .I2(load_mi_ptr),
        .I3(mi_last),
        .I4(mi_wcnt[4]),
        .I5(\mi_wcnt[4]_i_2_n_0 ),
        .O(\mi_wcnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mi_wcnt[4]_i_2 
       (.I0(mi_wcnt[2]),
        .I1(mi_wcnt[0]),
        .I2(mi_wcnt[1]),
        .I3(mi_wcnt[3]),
        .O(\mi_wcnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCACFCAC0CAC0CACF)) 
    \mi_wcnt[5]_i_1 
       (.I0(\next_mi_len_reg_n_0_[5] ),
        .I1(m_axi_awlen[5]),
        .I2(load_mi_ptr),
        .I3(mi_last),
        .I4(mi_wcnt[5]),
        .I5(\mi_wcnt[5]_i_2_n_0 ),
        .O(\mi_wcnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \mi_wcnt[5]_i_2 
       (.I0(mi_wcnt[3]),
        .I1(mi_wcnt[1]),
        .I2(mi_wcnt[0]),
        .I3(mi_wcnt[2]),
        .I4(mi_wcnt[4]),
        .O(\mi_wcnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCACFCAC0CAC0CACF)) 
    \mi_wcnt[6]_i_1 
       (.I0(\next_mi_len_reg_n_0_[6] ),
        .I1(m_axi_awlen[6]),
        .I2(load_mi_ptr),
        .I3(mi_last),
        .I4(mi_wcnt[6]),
        .I5(\mi_wcnt[6]_i_2_n_0 ),
        .O(\mi_wcnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mi_wcnt[6]_i_2 
       (.I0(mi_wcnt[4]),
        .I1(mi_wcnt[2]),
        .I2(mi_wcnt[0]),
        .I3(mi_wcnt[1]),
        .I4(mi_wcnt[3]),
        .I5(mi_wcnt[5]),
        .O(\mi_wcnt[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \mi_wcnt[7]_i_1 
       (.I0(load_mi_ptr),
        .I1(mi_last),
        .I2(next_valid),
        .I3(mi_buf_en),
        .O(\mi_wcnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCAAF0CCCCAA0F)) 
    \mi_wcnt[7]_i_2 
       (.I0(\next_mi_len_reg_n_0_[7] ),
        .I1(m_axi_awlen[7]),
        .I2(mi_wcnt[7]),
        .I3(mi_last),
        .I4(load_mi_ptr),
        .I5(\mi_wcnt[7]_i_3_n_0 ),
        .O(\mi_wcnt[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mi_wcnt[7]_i_3 
       (.I0(\mi_wcnt[6]_i_2_n_0 ),
        .I1(mi_wcnt[6]),
        .O(\mi_wcnt[7]_i_3_n_0 ));
  FDRE \mi_wcnt_reg[0] 
       (.C(CLK),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[0]_i_1_n_0 ),
        .Q(mi_wcnt[0]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[1] 
       (.C(CLK),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[1]_i_1_n_0 ),
        .Q(mi_wcnt[1]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[2] 
       (.C(CLK),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[2]_i_1_n_0 ),
        .Q(mi_wcnt[2]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[3] 
       (.C(CLK),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[3]_i_1_n_0 ),
        .Q(mi_wcnt[3]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[4] 
       (.C(CLK),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[4]_i_1_n_0 ),
        .Q(mi_wcnt[4]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[5] 
       (.C(CLK),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[5]_i_1_n_0 ),
        .Q(mi_wcnt[5]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[6] 
       (.C(CLK),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[6]_i_1_n_0 ),
        .Q(mi_wcnt[6]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[7] 
       (.C(CLK),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[7]_i_2_n_0 ),
        .Q(mi_wcnt[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBAAA)) 
    \mi_wrap_be_next[0]_i_1 
       (.I0(\mi_wrap_be_next[1]_i_2_n_0 ),
        .I1(load_mi_ptr),
        .I2(\mi_wrap_be_next[0]_i_2_n_0 ),
        .I3(\mi_wrap_be_next[0]_i_3_n_0 ),
        .I4(\mi_size[2]_i_1_n_0 ),
        .I5(\mi_wrap_be_next[0]_i_4_n_0 ),
        .O(\mi_wrap_be_next[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEEFEFF)) 
    \mi_wrap_be_next[0]_i_2 
       (.I0(p_5_in),
        .I1(p_2_in),
        .I2(\next_mi_len_reg_n_0_[1] ),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[2]),
        .O(\mi_wrap_be_next[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_be_next[0]_i_3 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0022000F002200)) 
    \mi_wrap_be_next[0]_i_4 
       (.I0(\mi_wrap_be_next[0]_i_5_n_0 ),
        .I1(m_axi_awsize[0]),
        .I2(m_axi_awaddr[3]),
        .I3(load_mi_ptr),
        .I4(m_axi_awsize[1]),
        .I5(m_axi_awlen[1]),
        .O(\mi_wrap_be_next[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551011)) 
    \mi_wrap_be_next[0]_i_5 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[2]),
        .I2(m_axi_awlen[1]),
        .I3(m_axi_awaddr[1]),
        .I4(m_axi_awlen[2]),
        .I5(m_axi_awlen[3]),
        .O(\mi_wrap_be_next[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \mi_wrap_be_next[10]_i_1 
       (.I0(\mi_wrap_be_next[10]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[14]_i_3_n_0 ),
        .I2(\next_mi_len_reg_n_0_[1] ),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[0]),
        .O(\mi_wrap_be_next[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \mi_wrap_be_next[10]_i_2 
       (.I0(\mi_be[14]_i_5_n_0 ),
        .I1(m_axi_awlen[1]),
        .I2(m_axi_awaddr[2]),
        .I3(m_axi_awsize[0]),
        .I4(\mi_wrap_be_next[14]_i_4_n_0 ),
        .I5(\mi_wrap_be_next[11]_i_1_n_0 ),
        .O(\mi_wrap_be_next[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF400040)) 
    \mi_wrap_be_next[11]_i_1 
       (.I0(\next_mi_len_reg_n_0_[1] ),
        .I1(p_0_in_0[2]),
        .I2(\mi_wrap_be_next[11]_i_2_n_0 ),
        .I3(load_mi_ptr),
        .I4(\mi_wrap_be_next[11]_i_3_n_0 ),
        .I5(\mi_size[2]_i_1_n_0 ),
        .O(\mi_wrap_be_next[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_be_next[11]_i_2 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_wrap_be_next[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \mi_wrap_be_next[11]_i_3 
       (.I0(m_axi_awsize[0]),
        .I1(m_axi_awsize[1]),
        .I2(m_axi_awlen[1]),
        .I3(m_axi_awaddr[3]),
        .O(\mi_wrap_be_next[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \mi_wrap_be_next[12]_i_1 
       (.I0(\mi_wrap_be_next[12]_i_2_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(\next_mi_len_reg_n_0_[1] ),
        .I4(\mi_wrap_be_next[14]_i_3_n_0 ),
        .I5(\mi_wrap_be_next[12]_i_3_n_0 ),
        .O(\mi_wrap_be_next[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBAAA)) 
    \mi_wrap_be_next[12]_i_2 
       (.I0(\mi_wrap_be_next[13]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[13]_i_4_n_0 ),
        .I2(\mi_wrap_be_next[14]_i_4_n_0 ),
        .I3(\mi_wrap_be_next[12]_i_4_n_0 ),
        .I4(\mi_size[2]_i_1_n_0 ),
        .I5(\mi_wrap_be_next[12]_i_5_n_0 ),
        .O(\mi_wrap_be_next[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \mi_wrap_be_next[12]_i_3 
       (.I0(\mi_wrap_be_next[14]_i_4_n_0 ),
        .I1(m_axi_awlen[1]),
        .I2(m_axi_awaddr[2]),
        .I3(m_axi_awsize[0]),
        .I4(load_mi_ptr),
        .I5(m_axi_awaddr[3]),
        .O(\mi_wrap_be_next[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \mi_wrap_be_next[12]_i_4 
       (.I0(load_mi_ptr),
        .I1(m_axi_awaddr[3]),
        .I2(m_axi_awaddr[1]),
        .O(\mi_wrap_be_next[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \mi_wrap_be_next[12]_i_5 
       (.I0(\mi_wrap_be_next[12]_i_6_n_0 ),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(\mi_wrap_be_next[12]_i_7_n_0 ),
        .I4(load_mi_ptr),
        .I5(p_5_in),
        .O(\mi_wrap_be_next[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mi_wrap_be_next[12]_i_6 
       (.I0(\next_mi_len_reg_n_0_[1] ),
        .I1(p_0_in_0[2]),
        .O(\mi_wrap_be_next[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mi_wrap_be_next[12]_i_7 
       (.I0(p_2_in),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[12]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \mi_wrap_be_next[13]_i_1 
       (.I0(\mi_wrap_be_next[13]_i_2_n_0 ),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(load_mi_ptr),
        .I3(m_axi_awsize[2]),
        .O(\mi_wrap_be_next[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0ACA0A0A)) 
    \mi_wrap_be_next[13]_i_2 
       (.I0(\mi_wrap_be_next[13]_i_3_n_0 ),
        .I1(m_axi_awaddr[3]),
        .I2(load_mi_ptr),
        .I3(\mi_wrap_be_next[13]_i_4_n_0 ),
        .I4(m_axi_awsize[0]),
        .I5(\mi_wrap_be_next[13]_i_5_n_0 ),
        .O(\mi_wrap_be_next[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \mi_wrap_be_next[13]_i_3 
       (.I0(p_2_in),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(\next_mi_len_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mi_wrap_be_next[13]_i_4 
       (.I0(m_axi_awlen[1]),
        .I1(m_axi_awaddr[2]),
        .O(\mi_wrap_be_next[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mi_wrap_be_next[13]_i_5 
       (.I0(m_axi_awlen[2]),
        .I1(m_axi_awsize[1]),
        .O(\mi_wrap_be_next[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \mi_wrap_be_next[14]_i_1 
       (.I0(\mi_wrap_be_next[14]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[14]_i_3_n_0 ),
        .I2(p_0_in_0[1]),
        .I3(\next_mi_len_reg_n_0_[1] ),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[0]),
        .O(\mi_wrap_be_next[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \mi_wrap_be_next[14]_i_2 
       (.I0(\mi_be[14]_i_5_n_0 ),
        .I1(m_axi_awsize[0]),
        .I2(m_axi_awlen[1]),
        .I3(m_axi_awaddr[2]),
        .I4(\mi_wrap_be_next[14]_i_4_n_0 ),
        .I5(\mi_size[2]_i_1_n_0 ),
        .O(\mi_wrap_be_next[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \mi_wrap_be_next[14]_i_3 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(p_5_in),
        .I2(load_mi_ptr),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(p_2_in),
        .O(\mi_wrap_be_next[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \mi_wrap_be_next[14]_i_4 
       (.I0(m_axi_awsize[1]),
        .I1(m_axi_awlen[2]),
        .I2(m_axi_awlen[3]),
        .O(\mi_wrap_be_next[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAFAAA)) 
    \mi_wrap_be_next[1]_i_1 
       (.I0(\mi_size[2]_i_1_n_0 ),
        .I1(m_axi_awlen[1]),
        .I2(m_axi_awsize[1]),
        .I3(load_mi_ptr),
        .I4(m_axi_awaddr[3]),
        .I5(\mi_wrap_be_next[1]_i_2_n_0 ),
        .O(\mi_wrap_be_next[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA20FFFFAA200000)) 
    \mi_wrap_be_next[1]_i_2 
       (.I0(m_axi_awsize[0]),
        .I1(m_axi_awaddr[3]),
        .I2(\mi_wrap_be_next[13]_i_4_n_0 ),
        .I3(\mi_wrap_be_next[13]_i_5_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_wrap_be_next[1]_i_3_n_0 ),
        .O(\mi_wrap_be_next[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF88AA88FFAAFF8A)) 
    \mi_wrap_be_next[1]_i_3 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(p_0_in_0[1]),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_len_reg_n_0_[1] ),
        .I5(p_0_in_0[2]),
        .O(\mi_wrap_be_next[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEEEEEEE)) 
    \mi_wrap_be_next[2]_i_1 
       (.I0(\mi_wrap_be_next[3]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[2]_i_2_n_0 ),
        .I2(\mi_wrap_be_next[14]_i_3_n_0 ),
        .I3(p_0_in_0[0]),
        .I4(\mi_wrap_be_next[2]_i_3_n_0 ),
        .I5(\next_mi_len_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \mi_wrap_be_next[2]_i_2 
       (.I0(\mi_wrap_be_next[6]_i_4_n_0 ),
        .I1(m_axi_awaddr[2]),
        .I2(m_axi_awsize[0]),
        .I3(\mi_wrap_be_next[2]_i_4_n_0 ),
        .I4(\mi_wrap_be_next[14]_i_4_n_0 ),
        .I5(\mi_size[2]_i_1_n_0 ),
        .O(\mi_wrap_be_next[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_be_next[2]_i_3 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .O(\mi_wrap_be_next[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mi_wrap_be_next[2]_i_4 
       (.I0(m_axi_awlen[1]),
        .I1(m_axi_awaddr[1]),
        .O(\mi_wrap_be_next[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \mi_wrap_be_next[3]_i_1 
       (.I0(\mi_wrap_be_next[3]_i_2_n_0 ),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(load_mi_ptr),
        .I3(m_axi_awsize[2]),
        .O(\mi_wrap_be_next[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF0000AAAAAAAA)) 
    \mi_wrap_be_next[3]_i_2 
       (.I0(\mi_wrap_be_next[3]_i_3_n_0 ),
        .I1(m_axi_awsize[0]),
        .I2(m_axi_awlen[1]),
        .I3(m_axi_awaddr[3]),
        .I4(m_axi_awsize[1]),
        .I5(load_mi_ptr),
        .O(\mi_wrap_be_next[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \mi_wrap_be_next[3]_i_3 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_len_reg_n_0_[1] ),
        .I2(p_0_in_0[2]),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEEEEEFEEE)) 
    \mi_wrap_be_next[4]_i_1 
       (.I0(\mi_wrap_be_next[5]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[4]_i_2_n_0 ),
        .I2(\mi_wrap_be_next[14]_i_3_n_0 ),
        .I3(\mi_wrap_be_next[6]_i_3_n_0 ),
        .I4(p_0_in_0[0]),
        .I5(\next_mi_len_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20220000)) 
    \mi_wrap_be_next[4]_i_2 
       (.I0(\mi_wrap_be_next[6]_i_4_n_0 ),
        .I1(\mi_wrap_be_next[4]_i_3_n_0 ),
        .I2(m_axi_awlen[1]),
        .I3(m_axi_awaddr[1]),
        .I4(\mi_wrap_be_next[14]_i_4_n_0 ),
        .I5(\mi_wrap_be_next[7]_i_1_n_0 ),
        .O(\mi_wrap_be_next[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \mi_wrap_be_next[4]_i_3 
       (.I0(m_axi_awsize[0]),
        .I1(m_axi_awaddr[2]),
        .O(\mi_wrap_be_next[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mi_wrap_be_next[5]_i_1 
       (.I0(\mi_wrap_be_next[7]_i_1_n_0 ),
        .I1(\mi_wrap_be_next[5]_i_2_n_0 ),
        .O(\mi_wrap_be_next[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \mi_wrap_be_next[5]_i_2 
       (.I0(\mi_wrap_be_next[5]_i_3_n_0 ),
        .I1(\mi_wrap_be_next[6]_i_4_n_0 ),
        .I2(m_axi_awlen[2]),
        .I3(m_axi_awsize[0]),
        .I4(m_axi_awaddr[2]),
        .I5(m_axi_awlen[1]),
        .O(\mi_wrap_be_next[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \mi_wrap_be_next[5]_i_3 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(p_2_in),
        .I3(\next_mi_len_reg_n_0_[1] ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(load_mi_ptr),
        .O(\mi_wrap_be_next[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEEEEEEE)) 
    \mi_wrap_be_next[6]_i_1 
       (.I0(\mi_wrap_be_next[7]_i_1_n_0 ),
        .I1(\mi_wrap_be_next[6]_i_2_n_0 ),
        .I2(\mi_wrap_be_next[14]_i_3_n_0 ),
        .I3(\mi_wrap_be_next[6]_i_3_n_0 ),
        .I4(p_0_in_0[0]),
        .I5(\next_mi_len_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \mi_wrap_be_next[6]_i_2 
       (.I0(\mi_wrap_be_next[14]_i_4_n_0 ),
        .I1(m_axi_awaddr[1]),
        .I2(m_axi_awlen[1]),
        .I3(m_axi_awaddr[2]),
        .I4(m_axi_awsize[0]),
        .I5(\mi_wrap_be_next[6]_i_4_n_0 ),
        .O(\mi_wrap_be_next[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_be_next[6]_i_3 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .O(\mi_wrap_be_next[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_be_next[6]_i_4 
       (.I0(load_mi_ptr),
        .I1(m_axi_awaddr[3]),
        .O(\mi_wrap_be_next[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8080808)) 
    \mi_wrap_be_next[7]_i_1 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(load_mi_ptr),
        .I3(m_axi_awsize[1]),
        .I4(m_axi_awsize[0]),
        .I5(\mi_size[2]_i_1_n_0 ),
        .O(\mi_wrap_be_next[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAE)) 
    \mi_wrap_be_next[8]_i_1 
       (.I0(\mi_wrap_be_next[9]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[8]_i_2_n_0 ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .I3(p_5_in),
        .I4(load_mi_ptr),
        .I5(\mi_wrap_be_next[8]_i_3_n_0 ),
        .O(\mi_wrap_be_next[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCCC4404)) 
    \mi_wrap_be_next[8]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(\next_mi_len_reg_n_0_[1] ),
        .I4(p_2_in),
        .I5(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \mi_wrap_be_next[8]_i_3 
       (.I0(m_axi_awaddr[3]),
        .I1(load_mi_ptr),
        .I2(m_axi_awlen[3]),
        .I3(\mi_wrap_be_next[8]_i_4_n_0 ),
        .I4(\mi_wrap_be_next[8]_i_5_n_0 ),
        .I5(\mi_wrap_be_next[11]_i_1_n_0 ),
        .O(\mi_wrap_be_next[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_be_next[8]_i_4 
       (.I0(m_axi_awsize[0]),
        .I1(m_axi_awsize[1]),
        .O(\mi_wrap_be_next[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFF45)) 
    \mi_wrap_be_next[8]_i_5 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awlen[1]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awlen[2]),
        .O(\mi_wrap_be_next[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mi_wrap_be_next[9]_i_1 
       (.I0(\mi_wrap_be_next[11]_i_1_n_0 ),
        .I1(\mi_wrap_be_next[9]_i_2_n_0 ),
        .O(\mi_wrap_be_next[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40000000)) 
    \mi_wrap_be_next[9]_i_2 
       (.I0(\mi_wrap_be_next[13]_i_5_n_0 ),
        .I1(\mi_wrap_be_next[13]_i_4_n_0 ),
        .I2(m_axi_awaddr[3]),
        .I3(m_axi_awsize[0]),
        .I4(load_mi_ptr),
        .I5(\mi_wrap_be_next[9]_i_3_n_0 ),
        .O(\mi_wrap_be_next[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000B000000000)) 
    \mi_wrap_be_next[9]_i_3 
       (.I0(\next_mi_len_reg_n_0_[1] ),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(p_2_in),
        .I5(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_wrap_be_next[9]_i_3_n_0 ));
  FDRE \mi_wrap_be_next_reg[0] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[0]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[10] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[10]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[11] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[11]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[12] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[12]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[13] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[13]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[14] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[14]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[1] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[1]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[2] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[2]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[3] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[3]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[4] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[4]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[5] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[5]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[6] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[6]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[7] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[7]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[8] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[8]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[9] 
       (.C(CLK),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[9]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAABAAAEAAAFA)) 
    \mi_wrap_cnt[0]_i_1 
       (.I0(\mi_wrap_cnt[0]_i_2_n_0 ),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(mi_last),
        .I3(load_mi_ptr),
        .I4(\mi_wrap_cnt[0]_i_3_n_0 ),
        .I5(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F111100FF1111)) 
    \mi_wrap_cnt[0]_i_2 
       (.I0(mi_last),
        .I1(mi_wrap_cnt[0]),
        .I2(m_axi_awaddr[4]),
        .I3(\mi_wrap_cnt[0]_i_4_n_0 ),
        .I4(load_mi_ptr),
        .I5(m_axi_awsize[2]),
        .O(\mi_wrap_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \mi_wrap_cnt[0]_i_3 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(\next_mi_addr_reg_n_0_[0] ),
        .I5(p_0_in_0[0]),
        .O(\mi_wrap_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \mi_wrap_cnt[0]_i_4 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awaddr[3]),
        .I2(m_axi_awsize[1]),
        .I3(m_axi_awsize[0]),
        .I4(m_axi_awaddr[0]),
        .I5(m_axi_awaddr[1]),
        .O(\mi_wrap_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0009)) 
    \mi_wrap_cnt[1]_i_1 
       (.I0(mi_wrap_cnt[0]),
        .I1(mi_wrap_cnt[1]),
        .I2(mi_last),
        .I3(load_mi_ptr),
        .I4(\mi_wrap_cnt[1]_i_2_n_0 ),
        .I5(\mi_wrap_cnt[1]_i_3_n_0 ),
        .O(\mi_wrap_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h53000000)) 
    \mi_wrap_cnt[1]_i_2 
       (.I0(m_axi_awaddr[5]),
        .I1(\mi_wrap_cnt[1]_i_4_n_0 ),
        .I2(m_axi_awsize[2]),
        .I3(load_mi_ptr),
        .I4(m_axi_awlen[1]),
        .O(\mi_wrap_cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000530000000000)) 
    \mi_wrap_cnt[1]_i_3 
       (.I0(\next_mi_addr_reg_n_0_[5] ),
        .I1(\mi_wrap_cnt[1]_i_5_n_0 ),
        .I2(\next_mi_size_reg_n_0_[2] ),
        .I3(mi_last),
        .I4(load_mi_ptr),
        .I5(\next_mi_len_reg_n_0_[1] ),
        .O(\mi_wrap_cnt[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \mi_wrap_cnt[1]_i_4 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awsize[1]),
        .I3(m_axi_awsize[0]),
        .I4(m_axi_awaddr[1]),
        .I5(m_axi_awaddr[2]),
        .O(\mi_wrap_cnt[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \mi_wrap_cnt[1]_i_5 
       (.I0(p_0_in_0[2]),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(\mi_wrap_cnt[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE100)) 
    \mi_wrap_cnt[2]_i_1 
       (.I0(mi_wrap_cnt[1]),
        .I1(mi_wrap_cnt[0]),
        .I2(mi_wrap_cnt[2]),
        .I3(\mi_wrap_cnt[2]_i_2_n_0 ),
        .I4(\mi_wrap_cnt[2]_i_3_n_0 ),
        .I5(\mi_wrap_cnt[2]_i_4_n_0 ),
        .O(\mi_wrap_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_cnt[2]_i_2 
       (.I0(mi_last),
        .I1(load_mi_ptr),
        .O(\mi_wrap_cnt[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h53000000)) 
    \mi_wrap_cnt[2]_i_3 
       (.I0(m_axi_awaddr[6]),
        .I1(\mi_wrap_cnt[2]_i_5_n_0 ),
        .I2(m_axi_awsize[2]),
        .I3(load_mi_ptr),
        .I4(m_axi_awlen[2]),
        .O(\mi_wrap_cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000530000000000)) 
    \mi_wrap_cnt[2]_i_4 
       (.I0(\next_mi_addr_reg_n_0_[6] ),
        .I1(\mi_wrap_cnt[2]_i_6_n_0 ),
        .I2(\next_mi_size_reg_n_0_[2] ),
        .I3(mi_last),
        .I4(load_mi_ptr),
        .I5(p_2_in),
        .O(\mi_wrap_cnt[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \mi_wrap_cnt[2]_i_5 
       (.I0(m_axi_awaddr[4]),
        .I1(m_axi_awaddr[5]),
        .I2(m_axi_awaddr[2]),
        .I3(m_axi_awsize[1]),
        .I4(m_axi_awsize[0]),
        .I5(m_axi_awaddr[3]),
        .O(\mi_wrap_cnt[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \mi_wrap_cnt[2]_i_6 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_addr_reg_n_0_[5] ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[2]),
        .O(\mi_wrap_cnt[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \mi_wrap_cnt[3]_i_1 
       (.I0(load_mi_ptr),
        .I1(m_axi_wvalid),
        .I2(m_axi_wready),
        .I3(load_mi_d2),
        .I4(load_mi_d1),
        .O(\mi_wrap_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAFABAAAAA)) 
    \mi_wrap_cnt[3]_i_2 
       (.I0(\mi_wrap_cnt[3]_i_3_n_0 ),
        .I1(\mi_wrap_cnt[3]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\next_mi_size_reg_n_0_[2] ),
        .I4(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I5(\next_mi_addr_reg_n_0_[7] ),
        .O(\mi_wrap_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00088088)) 
    \mi_wrap_cnt[3]_i_3 
       (.I0(m_axi_awlen[3]),
        .I1(load_mi_ptr),
        .I2(m_axi_awsize[2]),
        .I3(\mi_wrap_cnt[3]_i_6_n_0 ),
        .I4(m_axi_awaddr[7]),
        .I5(\mi_wrap_cnt[3]_i_7_n_0 ),
        .O(\mi_wrap_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \mi_wrap_cnt[3]_i_4 
       (.I0(\next_mi_addr_reg_n_0_[5] ),
        .I1(\next_mi_addr_reg_n_0_[6] ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(p_0_in_0[2]),
        .I5(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_cnt[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_cnt[3]_i_5 
       (.I0(mi_last),
        .I1(load_mi_ptr),
        .O(\mi_wrap_cnt[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \mi_wrap_cnt[3]_i_6 
       (.I0(m_axi_awaddr[5]),
        .I1(m_axi_awaddr[6]),
        .I2(m_axi_awaddr[3]),
        .I3(m_axi_awsize[1]),
        .I4(m_axi_awsize[0]),
        .I5(m_axi_awaddr[4]),
        .O(\mi_wrap_cnt[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1111111000000001)) 
    \mi_wrap_cnt[3]_i_7 
       (.I0(mi_last),
        .I1(load_mi_ptr),
        .I2(mi_wrap_cnt[2]),
        .I3(mi_wrap_cnt[0]),
        .I4(mi_wrap_cnt[1]),
        .I5(mi_wrap_cnt[3]),
        .O(\mi_wrap_cnt[3]_i_7_n_0 ));
  FDRE \mi_wrap_cnt_reg[0] 
       (.C(CLK),
        .CE(\mi_wrap_cnt[3]_i_1_n_0 ),
        .D(\mi_wrap_cnt[0]_i_1_n_0 ),
        .Q(mi_wrap_cnt[0]),
        .R(1'b0));
  FDRE \mi_wrap_cnt_reg[1] 
       (.C(CLK),
        .CE(\mi_wrap_cnt[3]_i_1_n_0 ),
        .D(\mi_wrap_cnt[1]_i_1_n_0 ),
        .Q(mi_wrap_cnt[1]),
        .R(1'b0));
  FDRE \mi_wrap_cnt_reg[2] 
       (.C(CLK),
        .CE(\mi_wrap_cnt[3]_i_1_n_0 ),
        .D(\mi_wrap_cnt[2]_i_1_n_0 ),
        .Q(mi_wrap_cnt[2]),
        .R(1'b0));
  FDRE \mi_wrap_cnt_reg[3] 
       (.C(CLK),
        .CE(\mi_wrap_cnt[3]_i_1_n_0 ),
        .D(\mi_wrap_cnt[3]_i_2_n_0 ),
        .Q(mi_wrap_cnt[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001FFFF00000000)) 
    \mi_wstrb_mask_d2[0]_i_1 
       (.I0(addr[1]),
        .I1(addr[0]),
        .I2(addr[3]),
        .I3(addr[2]),
        .I4(mi_first_d1),
        .I5(\mi_be_d1_reg_n_0_[0] ),
        .O(mi_wstrb_mask_d20[0]));
  LUT6 #(
    .INIT(64'hAA8A0A0A00000000)) 
    \mi_wstrb_mask_d2[10]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[10] ),
        .I1(index[1]),
        .I2(mi_last_d1_reg_n_0),
        .I3(index[2]),
        .I4(index[3]),
        .I5(\mi_wstrb_mask_d2[10]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[10]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h3777FFFF)) 
    \mi_wstrb_mask_d2[10]_i_2 
       (.I0(addr[2]),
        .I1(addr[3]),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(mi_first_d1),
        .O(\mi_wstrb_mask_d2[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880808080808080)) 
    \mi_wstrb_mask_d2[11]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[11] ),
        .I1(\mi_wstrb_mask_d2[14]_i_3_n_0 ),
        .I2(\mi_wstrb_mask_d2[12]_i_2_n_0 ),
        .I3(index[0]),
        .I4(index[1]),
        .I5(index[3]),
        .O(mi_wstrb_mask_d20[11]));
  LUT6 #(
    .INIT(64'h8888888808888888)) 
    \mi_wstrb_mask_d2[12]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[12] ),
        .I1(\mi_wstrb_mask_d2[12]_i_2_n_0 ),
        .I2(addr[3]),
        .I3(addr[2]),
        .I4(mi_first_d1),
        .I5(\mi_wstrb_mask_d2[12]_i_3_n_0 ),
        .O(mi_wstrb_mask_d20[12]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \mi_wstrb_mask_d2[12]_i_2 
       (.I0(index[3]),
        .I1(index[2]),
        .I2(mi_last_d1_reg_n_0),
        .O(\mi_wstrb_mask_d2[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wstrb_mask_d2[12]_i_3 
       (.I0(addr[1]),
        .I1(addr[0]),
        .O(\mi_wstrb_mask_d2[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \mi_wstrb_mask_d2[13]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[13] ),
        .I1(addr[1]),
        .I2(addr[2]),
        .I3(addr[3]),
        .I4(mi_first_d1),
        .I5(\mi_wstrb_mask_d2[13]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[13]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hF333B333)) 
    \mi_wstrb_mask_d2[13]_i_2 
       (.I0(index[0]),
        .I1(mi_last_d1_reg_n_0),
        .I2(index[3]),
        .I3(index[2]),
        .I4(index[1]),
        .O(\mi_wstrb_mask_d2[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80888888)) 
    \mi_wstrb_mask_d2[14]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[14] ),
        .I1(\mi_wstrb_mask_d2[14]_i_2_n_0 ),
        .I2(\mi_wstrb_mask_d2[14]_i_3_n_0 ),
        .I3(addr[1]),
        .I4(addr[0]),
        .O(mi_wstrb_mask_d20[14]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \mi_wstrb_mask_d2[14]_i_2 
       (.I0(index[1]),
        .I1(index[2]),
        .I2(index[3]),
        .I3(mi_last_d1_reg_n_0),
        .O(\mi_wstrb_mask_d2[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \mi_wstrb_mask_d2[14]_i_3 
       (.I0(addr[3]),
        .I1(addr[2]),
        .I2(mi_first_d1),
        .O(\mi_wstrb_mask_d2[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAA8A8A8)) 
    \mi_wstrb_mask_d2[15]_i_1 
       (.I0(first_load_mi_d1),
        .I1(load_mi_d1),
        .I2(load_mi_d2),
        .I3(m_axi_wready),
        .I4(m_axi_wvalid),
        .I5(load_mi_ptr),
        .O(mi_wstrb_mask_d2));
  LUT6 #(
    .INIT(64'h8000FFFF00000000)) 
    \mi_wstrb_mask_d2[15]_i_2 
       (.I0(index[1]),
        .I1(index[0]),
        .I2(index[3]),
        .I3(index[2]),
        .I4(mi_last_d1_reg_n_0),
        .I5(\mi_be_d1_reg_n_0_[15] ),
        .O(mi_wstrb_mask_d20[15]));
  LUT6 #(
    .INIT(64'h8888888888808888)) 
    \mi_wstrb_mask_d2[1]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[1] ),
        .I1(\mi_wstrb_mask_d2[1]_i_2_n_0 ),
        .I2(index[3]),
        .I3(index[2]),
        .I4(mi_last_d1_reg_n_0),
        .I5(\mi_wstrb_mask_d2[1]_i_3_n_0 ),
        .O(mi_wstrb_mask_d20[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \mi_wstrb_mask_d2[1]_i_2 
       (.I0(addr[1]),
        .I1(addr[2]),
        .I2(addr[3]),
        .I3(mi_first_d1),
        .O(\mi_wstrb_mask_d2[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mi_wstrb_mask_d2[1]_i_3 
       (.I0(index[1]),
        .I1(index[0]),
        .O(\mi_wstrb_mask_d2[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AA00000000)) 
    \mi_wstrb_mask_d2[2]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[2] ),
        .I1(index[2]),
        .I2(index[3]),
        .I3(mi_last_d1_reg_n_0),
        .I4(index[1]),
        .I5(\mi_wstrb_mask_d2[2]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h3337333F)) 
    \mi_wstrb_mask_d2[2]_i_2 
       (.I0(addr[0]),
        .I1(mi_first_d1),
        .I2(addr[3]),
        .I3(addr[2]),
        .I4(addr[1]),
        .O(\mi_wstrb_mask_d2[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888088808880)) 
    \mi_wstrb_mask_d2[3]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[3] ),
        .I1(\mi_wstrb_mask_d2[4]_i_3_n_0 ),
        .I2(\mi_wstrb_mask_d2[7]_i_2_n_0 ),
        .I3(index[2]),
        .I4(index[1]),
        .I5(index[0]),
        .O(mi_wstrb_mask_d20[3]));
  LUT6 #(
    .INIT(64'h8080808080808088)) 
    \mi_wstrb_mask_d2[4]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[4] ),
        .I1(\mi_wstrb_mask_d2[4]_i_2_n_0 ),
        .I2(\mi_wstrb_mask_d2[4]_i_3_n_0 ),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[3]),
        .O(mi_wstrb_mask_d20[4]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \mi_wstrb_mask_d2[4]_i_2 
       (.I0(index[3]),
        .I1(index[2]),
        .I2(mi_last_d1_reg_n_0),
        .O(\mi_wstrb_mask_d2[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \mi_wstrb_mask_d2[4]_i_3 
       (.I0(addr[3]),
        .I1(addr[2]),
        .I2(mi_first_d1),
        .O(\mi_wstrb_mask_d2[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A2AAA00000000)) 
    \mi_wstrb_mask_d2[5]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[5] ),
        .I1(addr[1]),
        .I2(mi_first_d1),
        .I3(addr[2]),
        .I4(addr[3]),
        .I5(\mi_wstrb_mask_d2[5]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hEEECFFFF)) 
    \mi_wstrb_mask_d2[5]_i_2 
       (.I0(index[2]),
        .I1(index[3]),
        .I2(index[0]),
        .I3(index[1]),
        .I4(mi_last_d1_reg_n_0),
        .O(\mi_wstrb_mask_d2[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA80AA00000000)) 
    \mi_wstrb_mask_d2[6]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[6] ),
        .I1(index[2]),
        .I2(index[1]),
        .I3(mi_last_d1_reg_n_0),
        .I4(index[3]),
        .I5(\mi_wstrb_mask_d2[6]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h0F0F7FFF)) 
    \mi_wstrb_mask_d2[6]_i_2 
       (.I0(addr[1]),
        .I1(addr[0]),
        .I2(mi_first_d1),
        .I3(addr[2]),
        .I4(addr[3]),
        .O(\mi_wstrb_mask_d2[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2A002A002A00)) 
    \mi_wstrb_mask_d2[7]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[7] ),
        .I1(mi_first_d1),
        .I2(addr[3]),
        .I3(\mi_wstrb_mask_d2[7]_i_2_n_0 ),
        .I4(\mi_wstrb_mask_d2[7]_i_3_n_0 ),
        .I5(index[2]),
        .O(mi_wstrb_mask_d20[7]));
  LUT2 #(
    .INIT(4'hB)) 
    \mi_wstrb_mask_d2[7]_i_2 
       (.I0(index[3]),
        .I1(mi_last_d1_reg_n_0),
        .O(\mi_wstrb_mask_d2[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mi_wstrb_mask_d2[7]_i_3 
       (.I0(index[1]),
        .I1(index[0]),
        .O(\mi_wstrb_mask_d2[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A008A008A8A8A00)) 
    \mi_wstrb_mask_d2[8]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[8] ),
        .I1(index[3]),
        .I2(mi_last_d1_reg_n_0),
        .I3(\mi_wstrb_mask_d2[8]_i_2_n_0 ),
        .I4(\mi_wstrb_mask_d2[12]_i_3_n_0 ),
        .I5(addr[2]),
        .O(mi_wstrb_mask_d20[8]));
  LUT2 #(
    .INIT(4'h7)) 
    \mi_wstrb_mask_d2[8]_i_2 
       (.I0(mi_first_d1),
        .I1(addr[3]),
        .O(\mi_wstrb_mask_d2[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02AAAAAA00000000)) 
    \mi_wstrb_mask_d2[9]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[9] ),
        .I1(addr[2]),
        .I2(addr[1]),
        .I3(addr[3]),
        .I4(mi_first_d1),
        .I5(\mi_wstrb_mask_d2[9]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[9]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFFEF0F0F)) 
    \mi_wstrb_mask_d2[9]_i_2 
       (.I0(index[1]),
        .I1(index[0]),
        .I2(mi_last_d1_reg_n_0),
        .I3(index[2]),
        .I4(index[3]),
        .O(\mi_wstrb_mask_d2[9]_i_2_n_0 ));
  FDSE \mi_wstrb_mask_d2_reg[0] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[0]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[0] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[10] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[10]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[10] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[11] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[11]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[11] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[12] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[12]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[12] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[13] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[13]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[13] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[14] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[14]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[14] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[15] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[15]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[15] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[1] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[1]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[1] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[2] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[2]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[2] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[3] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[3]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[3] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[4] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[4]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[4] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[5] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[5]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[5] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[6] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[6]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[6] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[7] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[7]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[7] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[8] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[8]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[8] ),
        .S(awpop_reset0));
  FDSE \mi_wstrb_mask_d2_reg[9] 
       (.C(CLK),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[9]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[9] ),
        .S(awpop_reset0));
  FDRE \next_mi_addr_reg[0] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awaddr[0]),
        .Q(\next_mi_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[1] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awaddr[1]),
        .Q(p_0_in_0[0]),
        .R(1'b0));
  FDRE \next_mi_addr_reg[2] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awaddr[2]),
        .Q(p_0_in_0[1]),
        .R(1'b0));
  FDRE \next_mi_addr_reg[3] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awaddr[3]),
        .Q(p_0_in_0[2]),
        .R(1'b0));
  FDRE \next_mi_addr_reg[4] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awaddr[4]),
        .Q(\next_mi_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[5] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awaddr[5]),
        .Q(\next_mi_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[6] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awaddr[6]),
        .Q(\next_mi_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[7] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awaddr[7]),
        .Q(\next_mi_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \next_mi_burst_reg[0] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awburst[0]),
        .Q(next_mi_burst[0]),
        .R(1'b0));
  FDRE \next_mi_burst_reg[1] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awburst[1]),
        .Q(next_mi_burst[1]),
        .R(1'b0));
  FDRE \next_mi_last_index_reg_reg[0] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(mi_last_index_reg[0]),
        .Q(next_mi_last_index_reg[0]),
        .R(1'b0));
  FDRE \next_mi_last_index_reg_reg[1] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(mi_last_index_reg[1]),
        .Q(next_mi_last_index_reg[1]),
        .R(1'b0));
  FDRE \next_mi_last_index_reg_reg[2] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(mi_last_index_reg[2]),
        .Q(next_mi_last_index_reg[2]),
        .R(1'b0));
  FDRE \next_mi_last_index_reg_reg[3] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(mi_last_index_reg[3]),
        .Q(next_mi_last_index_reg[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \next_mi_len[7]_i_1 
       (.I0(m_axi_wlast),
        .I1(mi_last),
        .I2(mi_last_d1_reg_n_0),
        .I3(\FSM_sequential_mi_state[2]_i_4_n_0 ),
        .O(load_mi_next));
  FDRE \next_mi_len_reg[0] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awlen[0]),
        .Q(\next_mi_len_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \next_mi_len_reg[1] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awlen[1]),
        .Q(\next_mi_len_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \next_mi_len_reg[2] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awlen[2]),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \next_mi_len_reg[3] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awlen[3]),
        .Q(p_5_in),
        .R(1'b0));
  FDRE \next_mi_len_reg[4] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awlen[4]),
        .Q(\next_mi_len_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \next_mi_len_reg[5] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awlen[5]),
        .Q(\next_mi_len_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \next_mi_len_reg[6] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awlen[6]),
        .Q(\next_mi_len_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \next_mi_len_reg[7] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awlen[7]),
        .Q(\next_mi_len_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \next_mi_size_reg[0] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awsize[0]),
        .Q(\next_mi_size_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \next_mi_size_reg[1] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awsize[1]),
        .Q(\next_mi_size_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \next_mi_size_reg[2] 
       (.C(CLK),
        .CE(load_mi_next),
        .D(m_axi_awsize[2]),
        .Q(\next_mi_size_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00A8A8A8)) 
    next_valid_i_1
       (.I0(out),
        .I1(load_mi_next),
        .I2(next_valid),
        .I3(mi_buf_en),
        .I4(mi_last),
        .O(next_valid_i_1_n_0));
  FDRE next_valid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(next_valid_i_1_n_0),
        .Q(next_valid),
        .R(1'b0));
  design_1_auto_us_cc_df_1_axi_register_slice_v2_1_17_axi_register_slice s_aw_reg
       (.D({s_aw_reg_n_7,s_aw_reg_n_8,s_aw_reg_n_9,s_aw_reg_n_10}),
        .E(s_aw_reg_n_2),
        .\FSM_sequential_si_state_reg[0] (s_aw_reg_n_24),
        .\FSM_sequential_si_state_reg[1] (s_aw_reg_n_23),
        .Q(si_burst),
        .SR(s_aw_reg_n_14),
        .S_AXI_WREADY_i_reg(s_aw_reg_n_21),
        .S_AXI_WREADY_i_reg_0(s_axi_wready),
        .S_AXI_WREADY_i_reg_1(\si_word[1]_i_3_n_0 ),
        .allow_new_cmd__0(allow_new_cmd__0),
        .\aresetn_d_reg[1] (SR),
        .aw_push(aw_push),
        .buf_cnt(buf_cnt),
        .\buf_cnt_reg[0] (s_aw_reg_n_27),
        .\buf_cnt_reg[1] (s_aw_reg_n_26),
        .\buf_cnt_reg[2] (s_aw_reg_n_25),
        .empty(aw_pop_event),
        .\gpr1.dout_i_reg[1] ({si_last_index_reg,s_awregion_reg,s_awqos_reg,s_awlock_reg,s_awlen_reg,s_awcache_reg,s_awburst_reg,s_awsize_reg,s_awprot_reg,s_awaddr_reg}),
        .in0(si_state),
        .\m_payload_i_reg[2] (\m_payload_i_reg[2] ),
        .\m_payload_i_reg[35] (\m_payload_i_reg[35] ),
        .\m_payload_i_reg[36] (\m_payload_i_reg[36] ),
        .\m_payload_i_reg[36]_0 (\m_payload_i_reg[36]_0 ),
        .\m_payload_i_reg[36]_1 (\m_payload_i_reg[36]_1 ),
        .\m_payload_i_reg[39] (\m_payload_i_reg[39] ),
        .\m_payload_i_reg[3] (\m_payload_i_reg[3] ),
        .\m_payload_i_reg[61] (\m_payload_i_reg[61] ),
        .m_valid_i_reg(\USE_WRITE.m_axi_awready_i ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .out(si_state),
        .p_0_in(p_0_in),
        .p_127_in(p_127_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awready(aw_ready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg(s_ready_i_reg),
        .s_ready_i_reg_0(s_axi_awready),
        .\si_be_reg[0] (s_aw_reg_n_4),
        .\si_be_reg[0]_0 (\si_be_reg[0]_1 ),
        .\si_be_reg[3] ({p_1_in,\si_be_reg[0]_0 ,\si_be_reg_n_0_[1] ,\si_be_reg_n_0_[0] }),
        .\si_burst_reg[0] (\si_be[2]_i_3_n_0 ),
        .\si_burst_reg[1] (load_si_ptr),
        .\si_ptr_reg[0] (s_aw_reg_n_5),
        .\si_ptr_reg[2] (\si_ptr[5]_i_6_n_0 ),
        .\si_ptr_reg[5] ({s_aw_reg_n_15,s_aw_reg_n_16,s_aw_reg_n_17,s_aw_reg_n_18,s_aw_reg_n_19}),
        .\si_ptr_reg[5]_0 ({si_buf_addr[5:1],Q}),
        .\si_word_reg[0] (s_aw_reg_n_29),
        .\si_word_reg[0]_0 (\si_ptr[5]_i_5_n_0 ),
        .\si_word_reg[1] (s_aw_reg_n_28),
        .\si_wrap_be_next_reg[2] (si_wrap_be_next),
        .\si_wrap_cnt_reg[0] (\si_be[3]_i_7_n_0 ),
        .\si_wrap_cnt_reg[2] (p_0_in__0),
        .\si_wrap_cnt_reg[3] (\si_wrap_cnt_reg[3]_0 ),
        .\si_wrap_cnt_reg[3]_0 ({si_wrap_cnt_reg__0,\si_wrap_cnt_reg[1]_0 }),
        .\si_wrap_word_next_reg[1] (si_wrap_word_next),
        .size(size),
        .sr_awvalid(sr_awvalid),
        .word(word));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \si_be[2]_i_3 
       (.I0(si_burst[0]),
        .I1(si_burst[1]),
        .I2(si_wrap_cnt_reg__0[3]),
        .I3(si_wrap_cnt_reg__0[2]),
        .I4(si_wrap_cnt_reg__0[1]),
        .I5(\si_wrap_cnt_reg[1]_0 ),
        .O(\si_be[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \si_be[3]_i_7 
       (.I0(\si_wrap_cnt_reg[1]_0 ),
        .I1(si_wrap_cnt_reg__0[1]),
        .I2(si_wrap_cnt_reg__0[2]),
        .O(\si_be[3]_i_7_n_0 ));
  FDRE \si_be_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_4),
        .D(s_aw_reg_n_10),
        .Q(\si_be_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \si_be_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_4),
        .D(s_aw_reg_n_9),
        .Q(\si_be_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \si_be_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_4),
        .D(s_aw_reg_n_8),
        .Q(\si_be_reg[0]_0 ),
        .R(1'b0));
  FDRE \si_be_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_4),
        .D(s_aw_reg_n_7),
        .Q(p_1_in),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \si_buf[0]_i_1 
       (.I0(si_buf_addr[6]),
        .O(\si_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \si_buf[1]_i_1 
       (.I0(si_buf_addr[6]),
        .I1(si_buf_addr[7]),
        .O(\si_buf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \si_buf[2]_i_1 
       (.I0(si_buf_addr[6]),
        .I1(si_buf_addr[7]),
        .I2(si_buf_addr[8]),
        .O(\si_buf[2]_i_1_n_0 ));
  FDRE \si_buf_reg[0] 
       (.C(s_axi_aclk),
        .CE(aw_push),
        .D(\si_buf[0]_i_1_n_0 ),
        .Q(si_buf_addr[6]),
        .R(SR));
  FDRE \si_buf_reg[1] 
       (.C(s_axi_aclk),
        .CE(aw_push),
        .D(\si_buf[1]_i_1_n_0 ),
        .Q(si_buf_addr[7]),
        .R(SR));
  FDRE \si_buf_reg[2] 
       (.C(s_axi_aclk),
        .CE(aw_push),
        .D(\si_buf[2]_i_1_n_0 ),
        .Q(si_buf_addr[8]),
        .R(SR));
  FDRE \si_burst_reg[0] 
       (.C(s_axi_aclk),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[61] [36]),
        .Q(si_burst[0]),
        .R(1'b0));
  FDRE \si_burst_reg[1] 
       (.C(s_axi_aclk),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[61] [37]),
        .Q(si_burst[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \si_ptr[5]_i_5 
       (.I0(word[0]),
        .I1(word[1]),
        .O(\si_ptr[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \si_ptr[5]_i_6 
       (.I0(si_buf_addr[2]),
        .I1(si_buf_addr[1]),
        .I2(Q),
        .I3(si_buf_addr[3]),
        .O(\si_ptr[5]_i_6_n_0 ));
  FDRE \si_ptr_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_5),
        .D(\m_payload_i_reg[4] ),
        .Q(Q),
        .R(s_aw_reg_n_14));
  FDRE \si_ptr_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_5),
        .D(s_aw_reg_n_19),
        .Q(si_buf_addr[1]),
        .R(s_aw_reg_n_14));
  FDRE \si_ptr_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_5),
        .D(s_aw_reg_n_18),
        .Q(si_buf_addr[2]),
        .R(s_aw_reg_n_14));
  FDRE \si_ptr_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_5),
        .D(s_aw_reg_n_17),
        .Q(si_buf_addr[3]),
        .R(s_aw_reg_n_14));
  FDRE \si_ptr_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_5),
        .D(s_aw_reg_n_16),
        .Q(si_buf_addr[4]),
        .R(s_aw_reg_n_14));
  FDRE \si_ptr_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_5),
        .D(s_aw_reg_n_15),
        .Q(si_buf_addr[5]),
        .R(s_aw_reg_n_14));
  FDRE \si_size_reg[0] 
       (.C(s_axi_aclk),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[61] [34]),
        .Q(size[0]),
        .R(1'b0));
  FDRE \si_size_reg[1] 
       (.C(s_axi_aclk),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[61] [35]),
        .Q(size[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8880)) 
    \si_word[1]_i_3 
       (.I0(s_axi_wready),
        .I1(s_axi_wvalid),
        .I2(si_burst[1]),
        .I3(si_burst[0]),
        .O(\si_word[1]_i_3_n_0 ));
  FDRE \si_word_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_aw_reg_n_29),
        .Q(word[0]),
        .R(1'b0));
  FDRE \si_word_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_aw_reg_n_28),
        .Q(word[1]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[0] 
       (.C(s_axi_aclk),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[1] [0]),
        .Q(si_wrap_be_next[0]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[1] 
       (.C(s_axi_aclk),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[1] [1]),
        .Q(si_wrap_be_next[1]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[2] 
       (.C(s_axi_aclk),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[1] [2]),
        .Q(si_wrap_be_next[2]),
        .R(1'b0));
  FDRE \si_wrap_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_2),
        .D(D[0]),
        .Q(\si_wrap_cnt_reg[1]_0 ),
        .R(1'b0));
  FDRE \si_wrap_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_2),
        .D(p_0_in__0[1]),
        .Q(si_wrap_cnt_reg__0[1]),
        .R(1'b0));
  FDRE \si_wrap_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_2),
        .D(p_0_in__0[2]),
        .Q(si_wrap_cnt_reg__0[2]),
        .R(1'b0));
  FDRE \si_wrap_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_aw_reg_n_2),
        .D(D[1]),
        .Q(si_wrap_cnt_reg__0[3]),
        .R(1'b0));
  FDRE \si_wrap_word_next_reg[0] 
       (.C(s_axi_aclk),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[46] [0]),
        .Q(si_wrap_word_next[0]),
        .R(1'b0));
  FDRE \si_wrap_word_next_reg[1] 
       (.C(s_axi_aclk),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[46] [1]),
        .Q(si_wrap_word_next[1]),
        .R(1'b0));
  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "" *) 
  (* C_COUNT_36K_BRAM = "" *) 
  (* C_CTRL_ECC_ALGO = "ECCHSIAO32-7" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "1" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "BlankString" *) 
  (* C_INIT_FILE_NAME = "BlankString" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_WIDTH_A = "144" *) 
  (* C_READ_WIDTH_B = "144" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "GENERATE_X_ONLY" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "16" *) 
  (* C_WEB_WIDTH = "16" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "144" *) 
  (* C_WRITE_WIDTH_B = "144" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_auto_us_cc_df_1_blk_mem_gen_v8_4_1 w_buffer
       (.addra({si_buf_addr,Q}),
        .addrb(mi_buf_addr),
        .clka(s_axi_aclk),
        .clkb(CLK),
        .dbiterr(NLW_w_buffer_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_w_buffer_douta_UNCONNECTED[143:0]),
        .doutb({mi_wpayload[143],m_axi_wdata[127:120],mi_wpayload[134],m_axi_wdata[119:112],mi_wpayload[125],m_axi_wdata[111:104],mi_wpayload[116],m_axi_wdata[103:96],mi_wpayload[107],m_axi_wdata[95:88],mi_wpayload[98],m_axi_wdata[87:80],mi_wpayload[89],m_axi_wdata[79:72],mi_wpayload[80],m_axi_wdata[71:64],mi_wpayload[71],m_axi_wdata[63:56],mi_wpayload[62],m_axi_wdata[55:48],mi_wpayload[53],m_axi_wdata[47:40],mi_wpayload[44],m_axi_wdata[39:32],mi_wpayload[35],m_axi_wdata[31:24],mi_wpayload[26],m_axi_wdata[23:16],mi_wpayload[17],m_axi_wdata[15:8],mi_wpayload[8],m_axi_wdata[7:0]}),
        .eccpipece(1'b0),
        .ena(p_127_in),
        .enb(mi_buf_en),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_w_buffer_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_w_buffer_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_w_buffer_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_w_buffer_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_w_buffer_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_w_buffer_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_w_buffer_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_w_buffer_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_w_buffer_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_w_buffer_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_w_buffer_s_axi_rdata_UNCONNECTED[143:0]),
        .s_axi_rid(NLW_w_buffer_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_w_buffer_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_w_buffer_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_w_buffer_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_w_buffer_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_w_buffer_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_w_buffer_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(f_si_we_return),
        .web({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_wready),
        .O(p_127_in));
  LUT3 #(
    .INIT(8'h40)) 
    w_buffer_i_10
       (.I0(word[1]),
        .I1(word[0]),
        .I2(p_1_in),
        .O(f_si_we_return[7]));
  LUT3 #(
    .INIT(8'h40)) 
    w_buffer_i_11
       (.I0(word[1]),
        .I1(word[0]),
        .I2(\si_be_reg[0]_0 ),
        .O(f_si_we_return[6]));
  LUT3 #(
    .INIT(8'h40)) 
    w_buffer_i_12
       (.I0(word[1]),
        .I1(word[0]),
        .I2(\si_be_reg_n_0_[1] ),
        .O(f_si_we_return[5]));
  LUT3 #(
    .INIT(8'h40)) 
    w_buffer_i_13
       (.I0(word[1]),
        .I1(word[0]),
        .I2(\si_be_reg_n_0_[0] ),
        .O(f_si_we_return[4]));
  LUT3 #(
    .INIT(8'h10)) 
    w_buffer_i_14
       (.I0(word[1]),
        .I1(word[0]),
        .I2(p_1_in),
        .O(f_si_we_return[3]));
  LUT3 #(
    .INIT(8'h10)) 
    w_buffer_i_15
       (.I0(word[1]),
        .I1(word[0]),
        .I2(\si_be_reg[0]_0 ),
        .O(f_si_we_return[2]));
  LUT3 #(
    .INIT(8'h10)) 
    w_buffer_i_16
       (.I0(word[1]),
        .I1(word[0]),
        .I2(\si_be_reg_n_0_[1] ),
        .O(f_si_we_return[1]));
  LUT3 #(
    .INIT(8'h10)) 
    w_buffer_i_17
       (.I0(word[1]),
        .I1(word[0]),
        .I2(\si_be_reg_n_0_[0] ),
        .O(f_si_we_return[0]));
  LUT4 #(
    .INIT(16'hFEEE)) 
    w_buffer_i_18
       (.I0(load_mi_d1),
        .I1(load_mi_d2),
        .I2(m_axi_wready),
        .I3(m_axi_wvalid),
        .O(mi_buf_en));
  LUT3 #(
    .INIT(8'h80)) 
    w_buffer_i_2
       (.I0(word[1]),
        .I1(word[0]),
        .I2(p_1_in),
        .O(f_si_we_return[15]));
  LUT3 #(
    .INIT(8'h80)) 
    w_buffer_i_3
       (.I0(word[1]),
        .I1(word[0]),
        .I2(\si_be_reg[0]_0 ),
        .O(f_si_we_return[14]));
  LUT3 #(
    .INIT(8'h80)) 
    w_buffer_i_4
       (.I0(word[1]),
        .I1(word[0]),
        .I2(\si_be_reg_n_0_[1] ),
        .O(f_si_we_return[13]));
  LUT3 #(
    .INIT(8'h80)) 
    w_buffer_i_5
       (.I0(word[1]),
        .I1(word[0]),
        .I2(\si_be_reg_n_0_[0] ),
        .O(f_si_we_return[12]));
  LUT3 #(
    .INIT(8'h40)) 
    w_buffer_i_6
       (.I0(word[0]),
        .I1(word[1]),
        .I2(p_1_in),
        .O(f_si_we_return[11]));
  LUT3 #(
    .INIT(8'h40)) 
    w_buffer_i_7
       (.I0(word[0]),
        .I1(word[1]),
        .I2(\si_be_reg[0]_0 ),
        .O(f_si_we_return[10]));
  LUT3 #(
    .INIT(8'h40)) 
    w_buffer_i_8
       (.I0(word[0]),
        .I1(word[1]),
        .I2(\si_be_reg_n_0_[1] ),
        .O(f_si_we_return[9]));
  LUT3 #(
    .INIT(8'h40)) 
    w_buffer_i_9
       (.I0(word[0]),
        .I1(word[1]),
        .I2(\si_be_reg_n_0_[0] ),
        .O(f_si_we_return[8]));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_17_axi_register_slice" *) 
module design_1_auto_us_cc_df_1_axi_register_slice_v2_1_17_axi_register_slice
   (\aresetn_d_reg[1] ,
    aw_push,
    E,
    \si_burst_reg[1] ,
    \si_be_reg[0] ,
    \si_ptr_reg[0] ,
    \si_wrap_cnt_reg[3] ,
    D,
    \si_be_reg[0]_0 ,
    \si_wrap_cnt_reg[2] ,
    SR,
    \si_ptr_reg[5] ,
    m_valid_i_reg,
    S_AXI_WREADY_i_reg,
    m_valid_i_reg_0,
    \FSM_sequential_si_state_reg[1] ,
    \FSM_sequential_si_state_reg[0] ,
    \buf_cnt_reg[2] ,
    \buf_cnt_reg[1] ,
    \buf_cnt_reg[0] ,
    \si_word_reg[1] ,
    \si_word_reg[0] ,
    s_ready_i_reg,
    \gpr1.dout_i_reg[1] ,
    p_0_in,
    s_axi_aclk,
    out,
    s_axi_wlast,
    S_AXI_WREADY_i_reg_0,
    s_axi_wvalid,
    m_valid_i_reg_1,
    p_127_in,
    Q,
    \si_be_reg[3] ,
    \si_burst_reg[0] ,
    \si_word_reg[0]_0 ,
    \si_wrap_cnt_reg[3]_0 ,
    size,
    \si_wrap_be_next_reg[2] ,
    \m_payload_i_reg[61] ,
    \m_payload_i_reg[35] ,
    \m_payload_i_reg[36] ,
    \m_payload_i_reg[2] ,
    \m_payload_i_reg[3] ,
    \m_payload_i_reg[36]_0 ,
    \si_wrap_word_next_reg[1] ,
    word,
    \si_wrap_cnt_reg[0] ,
    S_AXI_WREADY_i_reg_1,
    \si_ptr_reg[5]_0 ,
    \si_ptr_reg[2] ,
    \m_payload_i_reg[36]_1 ,
    s_axi_awready,
    buf_cnt,
    s_axi_aresetn,
    s_ready_i_reg_0,
    allow_new_cmd__0,
    s_axi_awvalid,
    in0,
    empty,
    sr_awvalid,
    \m_payload_i_reg[39] );
  output \aresetn_d_reg[1] ;
  output aw_push;
  output [0:0]E;
  output [0:0]\si_burst_reg[1] ;
  output [0:0]\si_be_reg[0] ;
  output [0:0]\si_ptr_reg[0] ;
  output \si_wrap_cnt_reg[3] ;
  output [3:0]D;
  output \si_be_reg[0]_0 ;
  output [1:0]\si_wrap_cnt_reg[2] ;
  output [0:0]SR;
  output [4:0]\si_ptr_reg[5] ;
  output m_valid_i_reg;
  output S_AXI_WREADY_i_reg;
  output m_valid_i_reg_0;
  output \FSM_sequential_si_state_reg[1] ;
  output \FSM_sequential_si_state_reg[0] ;
  output \buf_cnt_reg[2] ;
  output \buf_cnt_reg[1] ;
  output \buf_cnt_reg[0] ;
  output \si_word_reg[1] ;
  output \si_word_reg[0] ;
  output s_ready_i_reg;
  output [64:0]\gpr1.dout_i_reg[1] ;
  input [0:0]p_0_in;
  input s_axi_aclk;
  input [1:0]out;
  input s_axi_wlast;
  input S_AXI_WREADY_i_reg_0;
  input s_axi_wvalid;
  input m_valid_i_reg_1;
  input p_127_in;
  input [1:0]Q;
  input [3:0]\si_be_reg[3] ;
  input \si_burst_reg[0] ;
  input \si_word_reg[0]_0 ;
  input [3:0]\si_wrap_cnt_reg[3]_0 ;
  input [1:0]size;
  input [2:0]\si_wrap_be_next_reg[2] ;
  input [51:0]\m_payload_i_reg[61] ;
  input \m_payload_i_reg[35] ;
  input \m_payload_i_reg[36] ;
  input \m_payload_i_reg[2] ;
  input \m_payload_i_reg[3] ;
  input \m_payload_i_reg[36]_0 ;
  input [1:0]\si_wrap_word_next_reg[1] ;
  input [1:0]word;
  input \si_wrap_cnt_reg[0] ;
  input S_AXI_WREADY_i_reg_1;
  input [5:0]\si_ptr_reg[5]_0 ;
  input \si_ptr_reg[2] ;
  input \m_payload_i_reg[36]_1 ;
  input s_axi_awready;
  input [2:0]buf_cnt;
  input s_axi_aresetn;
  input s_ready_i_reg_0;
  input allow_new_cmd__0;
  input s_axi_awvalid;
  input [1:0]in0;
  input empty;
  input sr_awvalid;
  input [22:0]\m_payload_i_reg[39] ;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_si_state_reg[0] ;
  wire \FSM_sequential_si_state_reg[1] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_WREADY_i_reg;
  wire S_AXI_WREADY_i_reg_0;
  wire S_AXI_WREADY_i_reg_1;
  wire allow_new_cmd__0;
  wire \aresetn_d_reg[1] ;
  wire aw_push;
  wire [2:0]buf_cnt;
  wire \buf_cnt_reg[0] ;
  wire \buf_cnt_reg[1] ;
  wire \buf_cnt_reg[2] ;
  wire empty;
  wire [64:0]\gpr1.dout_i_reg[1] ;
  wire [1:0]in0;
  wire \m_payload_i_reg[2] ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[36] ;
  wire \m_payload_i_reg[36]_0 ;
  wire \m_payload_i_reg[36]_1 ;
  wire [22:0]\m_payload_i_reg[39] ;
  wire \m_payload_i_reg[3] ;
  wire [51:0]\m_payload_i_reg[61] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire [1:0]out;
  wire [0:0]p_0_in;
  wire p_127_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire [0:0]\si_be_reg[0] ;
  wire \si_be_reg[0]_0 ;
  wire [3:0]\si_be_reg[3] ;
  wire \si_burst_reg[0] ;
  wire [0:0]\si_burst_reg[1] ;
  wire [0:0]\si_ptr_reg[0] ;
  wire \si_ptr_reg[2] ;
  wire [4:0]\si_ptr_reg[5] ;
  wire [5:0]\si_ptr_reg[5]_0 ;
  wire \si_word_reg[0] ;
  wire \si_word_reg[0]_0 ;
  wire \si_word_reg[1] ;
  wire [2:0]\si_wrap_be_next_reg[2] ;
  wire \si_wrap_cnt_reg[0] ;
  wire [1:0]\si_wrap_cnt_reg[2] ;
  wire \si_wrap_cnt_reg[3] ;
  wire [3:0]\si_wrap_cnt_reg[3]_0 ;
  wire [1:0]\si_wrap_word_next_reg[1] ;
  wire [1:0]size;
  wire sr_awvalid;
  wire [1:0]word;

  design_1_auto_us_cc_df_1_axi_register_slice_v2_1_17_axic_register_slice \aw.aw_pipe 
       (.D(D),
        .E(E),
        .\FSM_sequential_si_state_reg[0] (\FSM_sequential_si_state_reg[0] ),
        .\FSM_sequential_si_state_reg[1] (\FSM_sequential_si_state_reg[1] ),
        .Q(Q),
        .SR(SR),
        .S_AXI_WREADY_i_reg(S_AXI_WREADY_i_reg),
        .S_AXI_WREADY_i_reg_0(S_AXI_WREADY_i_reg_0),
        .S_AXI_WREADY_i_reg_1(S_AXI_WREADY_i_reg_1),
        .allow_new_cmd__0(allow_new_cmd__0),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1] ),
        .buf_cnt(buf_cnt),
        .\buf_cnt_reg[0] (\buf_cnt_reg[0] ),
        .\buf_cnt_reg[1] (\buf_cnt_reg[1] ),
        .\buf_cnt_reg[2] (\buf_cnt_reg[2] ),
        .empty(empty),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .in0(in0),
        .\m_payload_i_reg[2]_0 (\m_payload_i_reg[2] ),
        .\m_payload_i_reg[35]_0 (\m_payload_i_reg[35] ),
        .\m_payload_i_reg[36]_0 (\m_payload_i_reg[36] ),
        .\m_payload_i_reg[36]_1 (\m_payload_i_reg[36]_0 ),
        .\m_payload_i_reg[36]_2 (\m_payload_i_reg[36]_1 ),
        .\m_payload_i_reg[39]_0 (\m_payload_i_reg[39] ),
        .\m_payload_i_reg[3]_0 (\m_payload_i_reg[3] ),
        .\m_payload_i_reg[61]_0 (\m_payload_i_reg[61] ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .m_valid_i_reg_2(m_valid_i_reg_1),
        .out(out),
        .p_0_in(p_0_in),
        .p_127_in(p_127_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg_0(s_ready_i_reg),
        .s_ready_i_reg_1(s_ready_i_reg_0),
        .\si_be_reg[0] (\si_be_reg[0] ),
        .\si_be_reg[0]_0 (\si_be_reg[0]_0 ),
        .\si_be_reg[3] (\si_be_reg[3] ),
        .\si_buf_reg[0] (aw_push),
        .\si_burst_reg[0] (\si_burst_reg[0] ),
        .\si_burst_reg[1] (\si_burst_reg[1] ),
        .\si_ptr_reg[0] (\si_ptr_reg[0] ),
        .\si_ptr_reg[2] (\si_ptr_reg[2] ),
        .\si_ptr_reg[5] (\si_ptr_reg[5] ),
        .\si_ptr_reg[5]_0 (\si_ptr_reg[5]_0 ),
        .\si_word_reg[0] (\si_word_reg[0] ),
        .\si_word_reg[0]_0 (\si_word_reg[0]_0 ),
        .\si_word_reg[1] (\si_word_reg[1] ),
        .\si_wrap_be_next_reg[2] (\si_wrap_be_next_reg[2] ),
        .\si_wrap_cnt_reg[0] (\si_wrap_cnt_reg[0] ),
        .\si_wrap_cnt_reg[2] (\si_wrap_cnt_reg[2] ),
        .\si_wrap_cnt_reg[3] (\si_wrap_cnt_reg[3] ),
        .\si_wrap_cnt_reg[3]_0 (\si_wrap_cnt_reg[3]_0 ),
        .\si_wrap_word_next_reg[1] (\si_wrap_word_next_reg[1] ),
        .size(size),
        .sr_awvalid(sr_awvalid),
        .word(word));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_17_axi_register_slice" *) 
module design_1_auto_us_cc_df_1_axi_register_slice_v2_1_17_axi_register_slice__parameterized0
   (s_axi_awready,
    p_0_in,
    sr_awvalid,
    \m_payload_i_reg[65] ,
    D,
    Q,
    \si_be_reg[3] ,
    \si_wrap_cnt_reg[1] ,
    \si_wrap_cnt_reg[2] ,
    \si_ptr_reg[0] ,
    \si_wrap_be_next_reg[2] ,
    \m_payload_i_reg[63] ,
    \si_wrap_word_next_reg[1] ,
    \si_wrap_cnt_reg[1]_0 ,
    S,
    DI,
    \si_be_reg[2] ,
    \aresetn_d_reg[1] ,
    s_axi_aclk,
    SR,
    s_ready_i_reg,
    load_si_ptr,
    \si_wrap_cnt_reg[2]_0 ,
    \si_size_reg[0] ,
    \si_be_reg[2]_0 ,
    \si_wrap_cnt_reg[0] ,
    \si_ptr_reg[0]_0 ,
    CO,
    \s_axi_awregion[3] );
  output s_axi_awready;
  output [0:0]p_0_in;
  output sr_awvalid;
  output [22:0]\m_payload_i_reg[65] ;
  output [1:0]D;
  output [51:0]Q;
  output \si_be_reg[3] ;
  output \si_wrap_cnt_reg[1] ;
  output \si_wrap_cnt_reg[2] ;
  output [0:0]\si_ptr_reg[0] ;
  output [2:0]\si_wrap_be_next_reg[2] ;
  output \m_payload_i_reg[63] ;
  output [1:0]\si_wrap_word_next_reg[1] ;
  output \si_wrap_cnt_reg[1]_0 ;
  output [3:0]S;
  output [3:0]DI;
  output \si_be_reg[2] ;
  input \aresetn_d_reg[1] ;
  input s_axi_aclk;
  input [0:0]SR;
  input s_ready_i_reg;
  input load_si_ptr;
  input \si_wrap_cnt_reg[2]_0 ;
  input \si_size_reg[0] ;
  input [0:0]\si_be_reg[2]_0 ;
  input [0:0]\si_wrap_cnt_reg[0] ;
  input [0:0]\si_ptr_reg[0]_0 ;
  input [0:0]CO;
  input [60:0]\s_axi_awregion[3] ;

  wire [0:0]CO;
  wire [1:0]D;
  wire [3:0]DI;
  wire [51:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \aresetn_d_reg[1] ;
  wire load_si_ptr;
  wire \m_payload_i_reg[63] ;
  wire [22:0]\m_payload_i_reg[65] ;
  wire [0:0]p_0_in;
  wire s_axi_aclk;
  wire s_axi_awready;
  wire [60:0]\s_axi_awregion[3] ;
  wire s_ready_i_reg;
  wire \si_be_reg[2] ;
  wire [0:0]\si_be_reg[2]_0 ;
  wire \si_be_reg[3] ;
  wire [0:0]\si_ptr_reg[0] ;
  wire [0:0]\si_ptr_reg[0]_0 ;
  wire \si_size_reg[0] ;
  wire [2:0]\si_wrap_be_next_reg[2] ;
  wire [0:0]\si_wrap_cnt_reg[0] ;
  wire \si_wrap_cnt_reg[1] ;
  wire \si_wrap_cnt_reg[1]_0 ;
  wire \si_wrap_cnt_reg[2] ;
  wire \si_wrap_cnt_reg[2]_0 ;
  wire [1:0]\si_wrap_word_next_reg[1] ;
  wire sr_awvalid;

  design_1_auto_us_cc_df_1_axi_register_slice_v2_1_17_axic_register_slice__parameterized4 \aw.aw_pipe 
       (.CO(CO),
        .D(D),
        .DI(DI),
        .Q(Q),
        .S(S),
        .SR(SR),
        .\aresetn_d_reg[1] (\aresetn_d_reg[1] ),
        .load_si_ptr(load_si_ptr),
        .\m_payload_i_reg[63] (\m_payload_i_reg[63] ),
        .\m_payload_i_reg[65] (\m_payload_i_reg[65] ),
        .p_0_in(p_0_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awready(s_axi_awready),
        .\s_axi_awregion[3] (\s_axi_awregion[3] ),
        .s_ready_i_reg_0(s_ready_i_reg),
        .\si_be_reg[2] (\si_be_reg[2] ),
        .\si_be_reg[2]_0 (\si_be_reg[2]_0 ),
        .\si_be_reg[3] (\si_be_reg[3] ),
        .\si_ptr_reg[0] (\si_ptr_reg[0] ),
        .\si_ptr_reg[0]_0 (\si_ptr_reg[0]_0 ),
        .\si_size_reg[0] (\si_size_reg[0] ),
        .\si_wrap_be_next_reg[2] (\si_wrap_be_next_reg[2] ),
        .\si_wrap_cnt_reg[0] (\si_wrap_cnt_reg[0] ),
        .\si_wrap_cnt_reg[1] (\si_wrap_cnt_reg[1] ),
        .\si_wrap_cnt_reg[1]_0 (\si_wrap_cnt_reg[1]_0 ),
        .\si_wrap_cnt_reg[2] (\si_wrap_cnt_reg[2] ),
        .\si_wrap_cnt_reg[2]_0 (\si_wrap_cnt_reg[2]_0 ),
        .\si_wrap_word_next_reg[1] (\si_wrap_word_next_reg[1] ),
        .sr_awvalid(sr_awvalid));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_17_axic_register_slice" *) 
module design_1_auto_us_cc_df_1_axi_register_slice_v2_1_17_axic_register_slice
   (\aresetn_d_reg[1]_0 ,
    s_ready_i_reg_0,
    \si_buf_reg[0] ,
    E,
    \si_burst_reg[1] ,
    \si_be_reg[0] ,
    \si_ptr_reg[0] ,
    \si_wrap_cnt_reg[3] ,
    D,
    \si_be_reg[0]_0 ,
    \si_wrap_cnt_reg[2] ,
    SR,
    \si_ptr_reg[5] ,
    m_valid_i_reg_0,
    S_AXI_WREADY_i_reg,
    m_valid_i_reg_1,
    \FSM_sequential_si_state_reg[1] ,
    \FSM_sequential_si_state_reg[0] ,
    \buf_cnt_reg[2] ,
    \buf_cnt_reg[1] ,
    \buf_cnt_reg[0] ,
    \si_word_reg[1] ,
    \si_word_reg[0] ,
    \gpr1.dout_i_reg[1] ,
    p_0_in,
    s_axi_aclk,
    m_valid_i_reg_2,
    sr_awvalid,
    s_axi_awvalid,
    out,
    s_axi_wlast,
    S_AXI_WREADY_i_reg_0,
    s_axi_wvalid,
    p_127_in,
    Q,
    \si_be_reg[3] ,
    \si_burst_reg[0] ,
    \si_word_reg[0]_0 ,
    \si_wrap_cnt_reg[3]_0 ,
    size,
    \si_wrap_be_next_reg[2] ,
    \m_payload_i_reg[61]_0 ,
    \m_payload_i_reg[35]_0 ,
    \m_payload_i_reg[36]_0 ,
    \m_payload_i_reg[2]_0 ,
    \m_payload_i_reg[3]_0 ,
    \m_payload_i_reg[36]_1 ,
    \si_wrap_word_next_reg[1] ,
    word,
    \si_wrap_cnt_reg[0] ,
    S_AXI_WREADY_i_reg_1,
    \si_ptr_reg[5]_0 ,
    \si_ptr_reg[2] ,
    \m_payload_i_reg[36]_2 ,
    s_axi_awready,
    buf_cnt,
    s_axi_aresetn,
    s_ready_i_reg_1,
    allow_new_cmd__0,
    in0,
    empty,
    \m_payload_i_reg[39]_0 );
  output \aresetn_d_reg[1]_0 ;
  output s_ready_i_reg_0;
  output \si_buf_reg[0] ;
  output [0:0]E;
  output \si_burst_reg[1] ;
  output [0:0]\si_be_reg[0] ;
  output [0:0]\si_ptr_reg[0] ;
  output \si_wrap_cnt_reg[3] ;
  output [3:0]D;
  output \si_be_reg[0]_0 ;
  output [1:0]\si_wrap_cnt_reg[2] ;
  output [0:0]SR;
  output [4:0]\si_ptr_reg[5] ;
  output m_valid_i_reg_0;
  output S_AXI_WREADY_i_reg;
  output m_valid_i_reg_1;
  output \FSM_sequential_si_state_reg[1] ;
  output \FSM_sequential_si_state_reg[0] ;
  output \buf_cnt_reg[2] ;
  output \buf_cnt_reg[1] ;
  output \buf_cnt_reg[0] ;
  output \si_word_reg[1] ;
  output \si_word_reg[0] ;
  output [64:0]\gpr1.dout_i_reg[1] ;
  input [0:0]p_0_in;
  input s_axi_aclk;
  input m_valid_i_reg_2;
  input sr_awvalid;
  input s_axi_awvalid;
  input [1:0]out;
  input s_axi_wlast;
  input S_AXI_WREADY_i_reg_0;
  input s_axi_wvalid;
  input p_127_in;
  input [1:0]Q;
  input [3:0]\si_be_reg[3] ;
  input \si_burst_reg[0] ;
  input \si_word_reg[0]_0 ;
  input [3:0]\si_wrap_cnt_reg[3]_0 ;
  input [1:0]size;
  input [2:0]\si_wrap_be_next_reg[2] ;
  input [51:0]\m_payload_i_reg[61]_0 ;
  input \m_payload_i_reg[35]_0 ;
  input \m_payload_i_reg[36]_0 ;
  input \m_payload_i_reg[2]_0 ;
  input \m_payload_i_reg[3]_0 ;
  input \m_payload_i_reg[36]_1 ;
  input [1:0]\si_wrap_word_next_reg[1] ;
  input [1:0]word;
  input \si_wrap_cnt_reg[0] ;
  input S_AXI_WREADY_i_reg_1;
  input [5:0]\si_ptr_reg[5]_0 ;
  input \si_ptr_reg[2] ;
  input \m_payload_i_reg[36]_2 ;
  input s_axi_awready;
  input [2:0]buf_cnt;
  input s_axi_aresetn;
  input s_ready_i_reg_1;
  input allow_new_cmd__0;
  input [1:0]in0;
  input empty;
  input [22:0]\m_payload_i_reg[39]_0 ;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_si_state_reg[0] ;
  wire \FSM_sequential_si_state_reg[1] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_WREADY_i_reg;
  wire S_AXI_WREADY_i_reg_0;
  wire S_AXI_WREADY_i_reg_1;
  wire S_AXI_WREADY_ns;
  wire allow_new_cmd__0;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg_n_0_[1] ;
  wire [2:0]buf_cnt;
  wire \buf_cnt_reg[0] ;
  wire \buf_cnt_reg[1] ;
  wire \buf_cnt_reg[2] ;
  wire empty;
  wire [64:0]\gpr1.dout_i_reg[1] ;
  wire [1:0]in0;
  wire \m_payload_i[65]_i_1_n_0 ;
  wire \m_payload_i_reg[2]_0 ;
  wire \m_payload_i_reg[35]_0 ;
  wire \m_payload_i_reg[36]_0 ;
  wire \m_payload_i_reg[36]_1 ;
  wire \m_payload_i_reg[36]_2 ;
  wire [22:0]\m_payload_i_reg[39]_0 ;
  wire \m_payload_i_reg[3]_0 ;
  wire [51:0]\m_payload_i_reg[61]_0 ;
  wire m_valid_i_i_1__0_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire [1:0]out;
  wire [0:0]p_0_in;
  wire p_127_in;
  wire push_ready__3;
  wire s_awvalid_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire s_ready_i_i_1__0_n_0;
  wire s_ready_i_i_3_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire \si_be[0]_i_2_n_0 ;
  wire \si_be[1]_i_2_n_0 ;
  wire \si_be[1]_i_3_n_0 ;
  wire \si_be[2]_i_2_n_0 ;
  wire \si_be[2]_i_4_n_0 ;
  wire \si_be[3]_i_4_n_0 ;
  wire [0:0]\si_be_reg[0] ;
  wire \si_be_reg[0]_0 ;
  wire [3:0]\si_be_reg[3] ;
  wire \si_buf_reg[0] ;
  wire \si_burst_reg[0] ;
  wire \si_burst_reg[1] ;
  wire \si_ptr[5]_i_4_n_0 ;
  wire [0:0]\si_ptr_reg[0] ;
  wire \si_ptr_reg[2] ;
  wire [4:0]\si_ptr_reg[5] ;
  wire [5:0]\si_ptr_reg[5]_0 ;
  wire \si_word[0]_i_2_n_0 ;
  wire \si_word[1]_i_2_n_0 ;
  wire \si_word_reg[0] ;
  wire \si_word_reg[0]_0 ;
  wire \si_word_reg[1] ;
  wire [2:0]\si_wrap_be_next_reg[2] ;
  wire \si_wrap_cnt_reg[0] ;
  wire [1:0]\si_wrap_cnt_reg[2] ;
  wire \si_wrap_cnt_reg[3] ;
  wire [3:0]\si_wrap_cnt_reg[3]_0 ;
  wire [1:0]\si_wrap_word_next_reg[1] ;
  wire [1:0]size;
  wire sr_awvalid;
  wire [1:0]word;

  LUT5 #(
    .INIT(32'h13FF1300)) 
    \FSM_sequential_si_state[0]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(m_valid_i_reg_2),
        .I3(S_AXI_WREADY_ns),
        .I4(in0[0]),
        .O(\FSM_sequential_si_state_reg[0] ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \FSM_sequential_si_state[1]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(push_ready__3),
        .I3(S_AXI_WREADY_ns),
        .I4(in0[1]),
        .O(\FSM_sequential_si_state_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_WREADY_i_i_1
       (.I0(s_axi_aresetn),
        .O(\aresetn_d_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    S_AXI_WREADY_i_i_2
       (.I0(m_valid_i_reg_2),
        .I1(out[0]),
        .I2(S_AXI_WREADY_ns),
        .I3(S_AXI_WREADY_i_reg_0),
        .O(S_AXI_WREADY_i_reg));
  LUT6 #(
    .INIT(64'h0BC500C500C500C5)) 
    S_AXI_WREADY_i_i_3
       (.I0(m_valid_i_reg_2),
        .I1(push_ready__3),
        .I2(out[1]),
        .I3(out[0]),
        .I4(s_axi_wlast),
        .I5(p_127_in),
        .O(S_AXI_WREADY_ns));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\aresetn_d_reg_n_0_[1] ),
        .R(\aresetn_d_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h66669998)) 
    \buf_cnt[0]_i_1 
       (.I0(empty),
        .I1(\si_buf_reg[0] ),
        .I2(buf_cnt[1]),
        .I3(buf_cnt[2]),
        .I4(buf_cnt[0]),
        .O(\buf_cnt_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h3CF0F0C2)) 
    \buf_cnt[1]_i_1 
       (.I0(buf_cnt[2]),
        .I1(buf_cnt[0]),
        .I2(buf_cnt[1]),
        .I3(\si_buf_reg[0] ),
        .I4(empty),
        .O(\buf_cnt_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA8)) 
    \buf_cnt[2]_i_1 
       (.I0(buf_cnt[2]),
        .I1(buf_cnt[0]),
        .I2(buf_cnt[1]),
        .I3(\si_buf_reg[0] ),
        .I4(empty),
        .O(\buf_cnt_reg[2] ));
  LUT6 #(
    .INIT(64'h2280220022002200)) 
    dw_fifogen_aw_i_1
       (.I0(push_ready__3),
        .I1(out[0]),
        .I2(s_axi_wlast),
        .I3(out[1]),
        .I4(S_AXI_WREADY_i_reg_0),
        .I5(s_axi_wvalid),
        .O(\si_buf_reg[0] ));
  LUT5 #(
    .INIT(32'h88088888)) 
    dw_fifogen_aw_i_3
       (.I0(s_awvalid_reg),
        .I1(s_axi_awready),
        .I2(buf_cnt[2]),
        .I3(buf_cnt[0]),
        .I4(buf_cnt[1]),
        .O(push_ready__3));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[65]_i_1 
       (.I0(s_awvalid_reg),
        .O(\m_payload_i[65]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [0]),
        .Q(\gpr1.dout_i_reg[1] [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [9]),
        .Q(\gpr1.dout_i_reg[1] [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [10]),
        .Q(\gpr1.dout_i_reg[1] [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [11]),
        .Q(\gpr1.dout_i_reg[1] [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [12]),
        .Q(\gpr1.dout_i_reg[1] [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [13]),
        .Q(\gpr1.dout_i_reg[1] [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [14]),
        .Q(\gpr1.dout_i_reg[1] [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [15]),
        .Q(\gpr1.dout_i_reg[1] [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [16]),
        .Q(\gpr1.dout_i_reg[1] [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [17]),
        .Q(\gpr1.dout_i_reg[1] [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [18]),
        .Q(\gpr1.dout_i_reg[1] [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [1]),
        .Q(\gpr1.dout_i_reg[1] [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [19]),
        .Q(\gpr1.dout_i_reg[1] [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [20]),
        .Q(\gpr1.dout_i_reg[1] [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [21]),
        .Q(\gpr1.dout_i_reg[1] [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [22]),
        .Q(\gpr1.dout_i_reg[1] [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [23]),
        .Q(\gpr1.dout_i_reg[1] [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [24]),
        .Q(\gpr1.dout_i_reg[1] [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [25]),
        .Q(\gpr1.dout_i_reg[1] [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [26]),
        .Q(\gpr1.dout_i_reg[1] [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [27]),
        .Q(\gpr1.dout_i_reg[1] [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [28]),
        .Q(\gpr1.dout_i_reg[1] [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [2]),
        .Q(\gpr1.dout_i_reg[1] [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [29]),
        .Q(\gpr1.dout_i_reg[1] [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [30]),
        .Q(\gpr1.dout_i_reg[1] [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [31]),
        .Q(\gpr1.dout_i_reg[1] [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [32]),
        .Q(\gpr1.dout_i_reg[1] [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [33]),
        .Q(\gpr1.dout_i_reg[1] [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [6]),
        .Q(\gpr1.dout_i_reg[1] [35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [7]),
        .Q(\gpr1.dout_i_reg[1] [36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [8]),
        .Q(\gpr1.dout_i_reg[1] [37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [9]),
        .Q(\gpr1.dout_i_reg[1] [38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [10]),
        .Q(\gpr1.dout_i_reg[1] [39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [3]),
        .Q(\gpr1.dout_i_reg[1] [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [38]),
        .Q(\gpr1.dout_i_reg[1] [40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [39]),
        .Q(\gpr1.dout_i_reg[1] [41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [40]),
        .Q(\gpr1.dout_i_reg[1] [42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [41]),
        .Q(\gpr1.dout_i_reg[1] [43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [11]),
        .Q(\gpr1.dout_i_reg[1] [44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [12]),
        .Q(\gpr1.dout_i_reg[1] [45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [13]),
        .Q(\gpr1.dout_i_reg[1] [46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [14]),
        .Q(\gpr1.dout_i_reg[1] [47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [15]),
        .Q(\gpr1.dout_i_reg[1] [48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [16]),
        .Q(\gpr1.dout_i_reg[1] [49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [4]),
        .Q(\gpr1.dout_i_reg[1] [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [17]),
        .Q(\gpr1.dout_i_reg[1] [50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [18]),
        .Q(\gpr1.dout_i_reg[1] [51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [43]),
        .Q(\gpr1.dout_i_reg[1] [52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [44]),
        .Q(\gpr1.dout_i_reg[1] [53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [45]),
        .Q(\gpr1.dout_i_reg[1] [54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [46]),
        .Q(\gpr1.dout_i_reg[1] [55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [47]),
        .Q(\gpr1.dout_i_reg[1] [56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [48]),
        .Q(\gpr1.dout_i_reg[1] [57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [49]),
        .Q(\gpr1.dout_i_reg[1] [58]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [5]),
        .Q(\gpr1.dout_i_reg[1] [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [50]),
        .Q(\gpr1.dout_i_reg[1] [59]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [51]),
        .Q(\gpr1.dout_i_reg[1] [60]),
        .R(1'b0));
  FDRE \m_payload_i_reg[62] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [19]),
        .Q(\gpr1.dout_i_reg[1] [61]),
        .R(1'b0));
  FDRE \m_payload_i_reg[63] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [20]),
        .Q(\gpr1.dout_i_reg[1] [62]),
        .R(1'b0));
  FDRE \m_payload_i_reg[64] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [21]),
        .Q(\gpr1.dout_i_reg[1] [63]),
        .R(1'b0));
  FDRE \m_payload_i_reg[65] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[39]_0 [22]),
        .Q(\gpr1.dout_i_reg[1] [64]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [5]),
        .Q(\gpr1.dout_i_reg[1] [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [6]),
        .Q(\gpr1.dout_i_reg[1] [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [7]),
        .Q(\gpr1.dout_i_reg[1] [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[65]_i_1_n_0 ),
        .D(\m_payload_i_reg[61]_0 [8]),
        .Q(\gpr1.dout_i_reg[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB1F5F5F500000000)) 
    m_valid_i_i_1
       (.I0(s_ready_i_reg_1),
        .I1(allow_new_cmd__0),
        .I2(s_axi_awvalid),
        .I3(s_axi_aresetn),
        .I4(m_valid_i_reg_0),
        .I5(\aresetn_d_reg_n_0_[1] ),
        .O(m_valid_i_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1D00)) 
    m_valid_i_i_1__0
       (.I0(\si_buf_reg[0] ),
        .I1(m_valid_i_reg_0),
        .I2(m_valid_i_reg_2),
        .I3(\aresetn_d_reg_n_0_[1] ),
        .O(m_valid_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__0_n_0),
        .Q(s_awvalid_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h575757FF00000000)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg_n_0_[1] ),
        .I1(m_valid_i_reg_2),
        .I2(s_ready_i_i_3_n_0),
        .I3(sr_awvalid),
        .I4(s_axi_awvalid),
        .I5(p_0_in),
        .O(s_ready_i_reg_0));
  LUT5 #(
    .INIT(32'hDFD50000)) 
    s_ready_i_i_1__0
       (.I0(\aresetn_d_reg_n_0_[1] ),
        .I1(\si_buf_reg[0] ),
        .I2(s_awvalid_reg),
        .I3(m_valid_i_reg_2),
        .I4(p_0_in),
        .O(s_ready_i_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    s_ready_i_i_3
       (.I0(s_axi_aresetn),
        .I1(m_valid_i_reg_0),
        .O(s_ready_i_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__0_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAFEAAFAAAAEAAAA)) 
    \si_be[0]_i_1 
       (.I0(\si_be[0]_i_2_n_0 ),
        .I1(size[0]),
        .I2(\si_burst_reg[0] ),
        .I3(\si_burst_reg[1] ),
        .I4(\si_be_reg[3] [2]),
        .I5(\si_wrap_be_next_reg[2] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFEAFFFFEAEAEAEA)) 
    \si_be[0]_i_2 
       (.I0(\si_be[2]_i_4_n_0 ),
        .I1(\si_be_reg[0]_0 ),
        .I2(\si_be_reg[3] [3]),
        .I3(\m_payload_i_reg[61]_0 [34]),
        .I4(\m_payload_i_reg[61]_0 [0]),
        .I5(\si_be[1]_i_3_n_0 ),
        .O(\si_be[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFEAAFAAAAEAAAA)) 
    \si_be[1]_i_1 
       (.I0(\si_be[1]_i_2_n_0 ),
        .I1(size[0]),
        .I2(\si_burst_reg[0] ),
        .I3(\si_burst_reg[1] ),
        .I4(\si_be_reg[3] [3]),
        .I5(\si_wrap_be_next_reg[2] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \si_be[1]_i_2 
       (.I0(\si_be[2]_i_4_n_0 ),
        .I1(\si_be_reg[0]_0 ),
        .I2(\si_be_reg[3] [0]),
        .I3(\m_payload_i_reg[61]_0 [0]),
        .I4(\m_payload_i_reg[61]_0 [34]),
        .I5(\si_be[1]_i_3_n_0 ),
        .O(\si_be[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \si_be[1]_i_3 
       (.I0(\si_burst_reg[1] ),
        .I1(\m_payload_i_reg[61]_0 [1]),
        .O(\si_be[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFEAAFAAAAEAAAA)) 
    \si_be[2]_i_1 
       (.I0(\si_be[2]_i_2_n_0 ),
        .I1(size[0]),
        .I2(\si_burst_reg[0] ),
        .I3(\si_burst_reg[1] ),
        .I4(\si_be_reg[3] [0]),
        .I5(\si_wrap_be_next_reg[2] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \si_be[2]_i_2 
       (.I0(\si_be[2]_i_4_n_0 ),
        .I1(\si_be_reg[0]_0 ),
        .I2(\si_be_reg[3] [1]),
        .I3(\si_burst_reg[1] ),
        .I4(\m_payload_i_reg[35]_0 ),
        .I5(\m_payload_i_reg[61]_0 [1]),
        .O(\si_be[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \si_be[2]_i_4 
       (.I0(size[1]),
        .I1(\si_be[3]_i_4_n_0 ),
        .I2(\si_burst_reg[1] ),
        .I3(\m_payload_i_reg[61]_0 [35]),
        .O(\si_be[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \si_be[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(s_axi_wvalid),
        .I3(S_AXI_WREADY_i_reg_0),
        .I4(\si_burst_reg[1] ),
        .O(\si_be_reg[0] ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \si_be[3]_i_2 
       (.I0(\m_payload_i_reg[36]_0 ),
        .I1(size[1]),
        .I2(\si_burst_reg[1] ),
        .I3(size[0]),
        .I4(\si_be[3]_i_4_n_0 ),
        .I5(\si_be_reg[3] [1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0000FFEF)) 
    \si_be[3]_i_4 
       (.I0(\si_wrap_cnt_reg[0] ),
        .I1(\si_wrap_cnt_reg[3]_0 [3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\si_burst_reg[1] ),
        .O(\si_be[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \si_be[3]_i_5 
       (.I0(\si_be[3]_i_4_n_0 ),
        .I1(size[0]),
        .O(\si_be_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h1031101110111011)) 
    \si_burst[1]_i_1 
       (.I0(out[0]),
        .I1(m_valid_i_reg_2),
        .I2(push_ready__3),
        .I3(out[1]),
        .I4(s_axi_wlast),
        .I5(p_127_in),
        .O(\si_burst_reg[1] ));
  LUT6 #(
    .INIT(64'hF606060606060606)) 
    \si_ptr[1]_i_1 
       (.I0(\si_ptr_reg[5]_0 [1]),
        .I1(\si_ptr_reg[5]_0 [0]),
        .I2(\si_burst_reg[1] ),
        .I3(\m_payload_i_reg[61]_0 [42]),
        .I4(\m_payload_i_reg[61]_0 [4]),
        .I5(\m_payload_i_reg[36]_2 ),
        .O(\si_ptr_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \si_ptr[2]_i_1 
       (.I0(\si_burst_reg[1] ),
        .I1(\si_ptr_reg[5]_0 [0]),
        .I2(\si_ptr_reg[5]_0 [1]),
        .I3(\si_ptr_reg[5]_0 [2]),
        .O(\si_ptr_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \si_ptr[3]_i_1 
       (.I0(\si_burst_reg[1] ),
        .I1(\si_ptr_reg[5]_0 [2]),
        .I2(\si_ptr_reg[5]_0 [1]),
        .I3(\si_ptr_reg[5]_0 [0]),
        .I4(\si_ptr_reg[5]_0 [3]),
        .O(\si_ptr_reg[5] [2]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \si_ptr[4]_i_1 
       (.I0(\si_burst_reg[1] ),
        .I1(\si_ptr_reg[5]_0 [3]),
        .I2(\si_ptr_reg[5]_0 [0]),
        .I3(\si_ptr_reg[5]_0 [1]),
        .I4(\si_ptr_reg[5]_0 [2]),
        .I5(\si_ptr_reg[5]_0 [4]),
        .O(\si_ptr_reg[5] [3]));
  LUT5 #(
    .INIT(32'hFF8A8A8A)) 
    \si_ptr[5]_i_1 
       (.I0(\si_burst_reg[1] ),
        .I1(\m_payload_i_reg[61]_0 [36]),
        .I2(\m_payload_i_reg[61]_0 [37]),
        .I3(\si_ptr[5]_i_4_n_0 ),
        .I4(S_AXI_WREADY_i_reg_1),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFAAABAAABAAABAA)) 
    \si_ptr[5]_i_2 
       (.I0(\si_burst_reg[1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_127_in),
        .I4(\si_word_reg[0]_0 ),
        .I5(\si_be_reg[3] [3]),
        .O(\si_ptr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h5104)) 
    \si_ptr[5]_i_3 
       (.I0(\si_burst_reg[1] ),
        .I1(\si_ptr_reg[5]_0 [4]),
        .I2(\si_ptr_reg[2] ),
        .I3(\si_ptr_reg[5]_0 [5]),
        .O(\si_ptr_reg[5] [4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \si_ptr[5]_i_4 
       (.I0(\si_wrap_cnt_reg[0] ),
        .I1(\si_wrap_cnt_reg[3]_0 [3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\si_burst_reg[1] ),
        .O(\si_ptr[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF808FFFFFD0D0000)) 
    \si_word[0]_i_1 
       (.I0(\si_burst_reg[0] ),
        .I1(\si_wrap_word_next_reg[1] [0]),
        .I2(\si_burst_reg[1] ),
        .I3(\m_payload_i_reg[61]_0 [2]),
        .I4(\si_word[0]_i_2_n_0 ),
        .I5(word[0]),
        .O(\si_word_reg[0] ));
  LUT6 #(
    .INIT(64'hFEAAFEAAFEAAAAAA)) 
    \si_word[0]_i_2 
       (.I0(\si_burst_reg[1] ),
        .I1(\si_be_reg[3] [3]),
        .I2(\si_burst_reg[0] ),
        .I3(p_127_in),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\si_word[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \si_word[1]_i_1 
       (.I0(\si_word[1]_i_2_n_0 ),
        .I1(\si_burst_reg[1] ),
        .I2(\si_be_reg[3] [3]),
        .I3(\si_burst_reg[0] ),
        .I4(S_AXI_WREADY_i_reg_1),
        .I5(word[1]),
        .O(\si_word_reg[1] ));
  LUT6 #(
    .INIT(64'hCCCCAAAACCCC0FF0)) 
    \si_word[1]_i_2 
       (.I0(\si_wrap_word_next_reg[1] [1]),
        .I1(\m_payload_i_reg[61]_0 [3]),
        .I2(word[1]),
        .I3(word[0]),
        .I4(\si_burst_reg[1] ),
        .I5(\si_burst_reg[0] ),
        .O(\si_word[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEFCCF)) 
    \si_wrap_cnt[1]_i_1 
       (.I0(\m_payload_i_reg[2]_0 ),
        .I1(\m_payload_i_reg[3]_0 ),
        .I2(\si_wrap_cnt_reg[3]_0 [0]),
        .I3(\si_wrap_cnt_reg[3]_0 [1]),
        .I4(\si_burst_reg[1] ),
        .O(\si_wrap_cnt_reg[2] [0]));
  LUT5 #(
    .INIT(32'hAAAAEEEB)) 
    \si_wrap_cnt[2]_i_1 
       (.I0(\m_payload_i_reg[36]_1 ),
        .I1(\si_wrap_cnt_reg[3]_0 [2]),
        .I2(\si_wrap_cnt_reg[3]_0 [1]),
        .I3(\si_wrap_cnt_reg[3]_0 [0]),
        .I4(\si_burst_reg[1] ),
        .O(\si_wrap_cnt_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \si_wrap_cnt[3]_i_1 
       (.I0(S_AXI_WREADY_i_reg_0),
        .I1(s_axi_wvalid),
        .I2(\si_burst_reg[1] ),
        .O(E));
  LUT5 #(
    .INIT(32'h55540001)) 
    \si_wrap_cnt[3]_i_4 
       (.I0(\si_burst_reg[1] ),
        .I1(\si_wrap_cnt_reg[3]_0 [2]),
        .I2(\si_wrap_cnt_reg[3]_0 [1]),
        .I3(\si_wrap_cnt_reg[3]_0 [0]),
        .I4(\si_wrap_cnt_reg[3]_0 [3]),
        .O(\si_wrap_cnt_reg[3] ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_17_axic_register_slice" *) 
module design_1_auto_us_cc_df_1_axi_register_slice_v2_1_17_axic_register_slice__parameterized4
   (s_axi_awready,
    p_0_in,
    sr_awvalid,
    \m_payload_i_reg[65] ,
    D,
    Q,
    \si_be_reg[3] ,
    \si_wrap_cnt_reg[1] ,
    \si_wrap_cnt_reg[2] ,
    \si_ptr_reg[0] ,
    \si_wrap_be_next_reg[2] ,
    \m_payload_i_reg[63] ,
    \si_wrap_word_next_reg[1] ,
    \si_wrap_cnt_reg[1]_0 ,
    S,
    DI,
    \si_be_reg[2] ,
    \aresetn_d_reg[1] ,
    s_axi_aclk,
    SR,
    s_ready_i_reg_0,
    load_si_ptr,
    \si_wrap_cnt_reg[2]_0 ,
    \si_size_reg[0] ,
    \si_be_reg[2]_0 ,
    \si_wrap_cnt_reg[0] ,
    \si_ptr_reg[0]_0 ,
    CO,
    \s_axi_awregion[3] );
  output s_axi_awready;
  output [0:0]p_0_in;
  output sr_awvalid;
  output [22:0]\m_payload_i_reg[65] ;
  output [1:0]D;
  output [51:0]Q;
  output \si_be_reg[3] ;
  output \si_wrap_cnt_reg[1] ;
  output \si_wrap_cnt_reg[2] ;
  output [0:0]\si_ptr_reg[0] ;
  output [2:0]\si_wrap_be_next_reg[2] ;
  output \m_payload_i_reg[63] ;
  output [1:0]\si_wrap_word_next_reg[1] ;
  output \si_wrap_cnt_reg[1]_0 ;
  output [3:0]S;
  output [3:0]DI;
  output \si_be_reg[2] ;
  input \aresetn_d_reg[1] ;
  input s_axi_aclk;
  input [0:0]SR;
  input s_ready_i_reg_0;
  input load_si_ptr;
  input \si_wrap_cnt_reg[2]_0 ;
  input \si_size_reg[0] ;
  input [0:0]\si_be_reg[2]_0 ;
  input [0:0]\si_wrap_cnt_reg[0] ;
  input [0:0]\si_ptr_reg[0]_0 ;
  input [0:0]CO;
  input [60:0]\s_axi_awregion[3] ;

  wire [0:0]CO;
  wire [1:0]D;
  wire [3:0]DI;
  wire [51:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \USE_WRITE.write_addr_inst/access_need_extra_word__2 ;
  wire [5:4]\USE_WRITE.write_addr_inst/burst_mask__21 ;
  wire \USE_WRITE.write_addr_inst/cmd_fix_i ;
  wire \USE_WRITE.write_addr_inst/p_10_in ;
  wire \USE_WRITE.write_addr_inst/upsized_length1__0 ;
  wire [5:0]\USE_WRITE.write_addr_inst/upsized_length__30 ;
  wire \aresetn_d_reg[1] ;
  wire load_si_ptr;
  wire \m_payload_i[0]_i_2_n_0 ;
  wire \m_payload_i[2]_i_2_n_0 ;
  wire \m_payload_i[2]_i_3_n_0 ;
  wire \m_payload_i[2]_i_4_n_0 ;
  wire \m_payload_i[3]_i_2_n_0 ;
  wire \m_payload_i[3]_i_3_n_0 ;
  wire \m_payload_i[3]_i_4_n_0 ;
  wire \m_payload_i[3]_i_5_n_0 ;
  wire \m_payload_i[44]_i_4_n_0 ;
  wire \m_payload_i[48]_i_10_n_0 ;
  wire \m_payload_i[48]_i_11_n_0 ;
  wire \m_payload_i[48]_i_12_n_0 ;
  wire \m_payload_i[48]_i_13_n_0 ;
  wire \m_payload_i[48]_i_14_n_0 ;
  wire \m_payload_i[48]_i_15_n_0 ;
  wire \m_payload_i[48]_i_16_n_0 ;
  wire \m_payload_i[48]_i_17_n_0 ;
  wire \m_payload_i[48]_i_18_n_0 ;
  wire \m_payload_i[48]_i_19_n_0 ;
  wire \m_payload_i[48]_i_20_n_0 ;
  wire \m_payload_i[48]_i_21_n_0 ;
  wire \m_payload_i[48]_i_4_n_0 ;
  wire \m_payload_i[48]_i_7_n_0 ;
  wire \m_payload_i[48]_i_8_n_0 ;
  wire \m_payload_i[48]_i_9_n_0 ;
  wire \m_payload_i[49]_i_2_n_0 ;
  wire \m_payload_i[49]_i_4_n_0 ;
  wire \m_payload_i[4]_i_3_n_0 ;
  wire \m_payload_i[51]_i_2_n_0 ;
  wire \m_payload_i[51]_i_5_n_0 ;
  wire \m_payload_i[51]_i_6_n_0 ;
  wire \m_payload_i[51]_i_7_n_0 ;
  wire \m_payload_i[51]_i_8_n_0 ;
  wire \m_payload_i[5]_i_2_n_0 ;
  wire \m_payload_i[5]_i_4_n_0 ;
  wire \m_payload_i[5]_i_5_n_0 ;
  wire \m_payload_i[5]_i_6_n_0 ;
  wire \m_payload_i[61]_i_1_n_0 ;
  wire \m_payload_i[62]_i_2_n_0 ;
  wire \m_payload_i[62]_i_3_n_0 ;
  wire \m_payload_i[62]_i_4_n_0 ;
  wire \m_payload_i[62]_i_5_n_0 ;
  wire \m_payload_i[63]_i_3_n_0 ;
  wire \m_payload_i[63]_i_4_n_0 ;
  wire \m_payload_i[63]_i_5_n_0 ;
  wire \m_payload_i[63]_i_6_n_0 ;
  wire \m_payload_i[63]_i_7_n_0 ;
  wire \m_payload_i[64]_i_2_n_0 ;
  wire \m_payload_i[64]_i_3_n_0 ;
  wire \m_payload_i[65]_i_3_n_0 ;
  wire \m_payload_i[65]_i_4_n_0 ;
  wire \m_payload_i_reg[63] ;
  wire [22:0]\m_payload_i_reg[65] ;
  wire [0:0]p_0_in;
  wire s_axi_aclk;
  wire [7:0]s_axi_awlen_ii;
  wire s_axi_awready;
  wire [60:0]\s_axi_awregion[3] ;
  wire s_ready_i_reg_0;
  wire \si_be[3]_i_6_n_0 ;
  wire \si_be_reg[2] ;
  wire [0:0]\si_be_reg[2]_0 ;
  wire \si_be_reg[3] ;
  wire \si_ptr[0]_i_2_n_0 ;
  wire [0:0]\si_ptr_reg[0] ;
  wire [0:0]\si_ptr_reg[0]_0 ;
  wire \si_size_reg[0] ;
  wire [2:0]\si_wrap_be_next_reg[2] ;
  wire \si_wrap_cnt[0]_i_2_n_0 ;
  wire \si_wrap_cnt[2]_i_3_n_0 ;
  wire \si_wrap_cnt[3]_i_3_n_0 ;
  wire [0:0]\si_wrap_cnt_reg[0] ;
  wire \si_wrap_cnt_reg[1] ;
  wire \si_wrap_cnt_reg[1]_0 ;
  wire \si_wrap_cnt_reg[2] ;
  wire \si_wrap_cnt_reg[2]_0 ;
  wire [1:0]\si_wrap_word_next_reg[1] ;
  wire [4:4]sr_awaddr;
  wire [2:2]sr_awsize;
  wire sr_awvalid;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(p_0_in),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    cmd_packed_wrap_i1_carry_i_1
       (.I0(s_axi_awlen_ii[6]),
        .I1(s_axi_awlen_ii[7]),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'hE)) 
    cmd_packed_wrap_i1_carry_i_2
       (.I0(s_axi_awlen_ii[4]),
        .I1(s_axi_awlen_ii[5]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'hEEECEEE0)) 
    cmd_packed_wrap_i1_carry_i_3
       (.I0(s_axi_awlen_ii[2]),
        .I1(Q[42]),
        .I2(Q[35]),
        .I3(sr_awsize),
        .I4(Q[34]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'hEAEAEA00)) 
    cmd_packed_wrap_i1_carry_i_4
       (.I0(sr_awsize),
        .I1(Q[35]),
        .I2(Q[34]),
        .I3(s_axi_awlen_ii[1]),
        .I4(s_axi_awlen_ii[0]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h1)) 
    cmd_packed_wrap_i1_carry_i_5
       (.I0(s_axi_awlen_ii[7]),
        .I1(s_axi_awlen_ii[6]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h1)) 
    cmd_packed_wrap_i1_carry_i_6
       (.I0(s_axi_awlen_ii[5]),
        .I1(s_axi_awlen_ii[4]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h010200FC)) 
    cmd_packed_wrap_i1_carry_i_7
       (.I0(Q[34]),
        .I1(sr_awsize),
        .I2(Q[35]),
        .I3(Q[42]),
        .I4(s_axi_awlen_ii[2]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h04320C30)) 
    cmd_packed_wrap_i1_carry_i_8
       (.I0(Q[35]),
        .I1(s_axi_awlen_ii[0]),
        .I2(sr_awsize),
        .I3(s_axi_awlen_ii[1]),
        .I4(Q[34]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFF000010000000)) 
    \m_payload_i[0]_i_1 
       (.I0(CO),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(\m_payload_i[0]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\m_payload_i[3]_i_3_n_0 ),
        .O(\m_payload_i_reg[65] [0]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \m_payload_i[0]_i_2 
       (.I0(Q[34]),
        .I1(sr_awsize),
        .I2(Q[35]),
        .I3(s_axi_awlen_ii[0]),
        .O(\m_payload_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000010000000)) 
    \m_payload_i[1]_i_1 
       (.I0(CO),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(\m_payload_i[63]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\m_payload_i[3]_i_3_n_0 ),
        .O(\m_payload_i_reg[65] [1]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    \m_payload_i[2]_i_1 
       (.I0(\m_payload_i[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\m_payload_i[3]_i_3_n_0 ),
        .O(\m_payload_i_reg[65] [2]));
  LUT6 #(
    .INIT(64'hFFFBFFFBFFFFFFFB)) 
    \m_payload_i[2]_i_2 
       (.I0(\m_payload_i[2]_i_3_n_0 ),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(CO),
        .I4(s_axi_awlen_ii[2]),
        .I5(\m_payload_i[2]_i_4_n_0 ),
        .O(\m_payload_i[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h00000CA0)) 
    \m_payload_i[2]_i_3 
       (.I0(s_axi_awlen_ii[1]),
        .I1(s_axi_awlen_ii[0]),
        .I2(Q[34]),
        .I3(Q[35]),
        .I4(sr_awsize),
        .O(\m_payload_i[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_payload_i[2]_i_4 
       (.I0(Q[35]),
        .I1(sr_awsize),
        .I2(Q[34]),
        .O(\m_payload_i[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_payload_i[35]_i_1 
       (.I0(Q[34]),
        .I1(\USE_WRITE.write_addr_inst/p_10_in ),
        .O(\m_payload_i_reg[65] [6]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_payload_i[36]_i_1 
       (.I0(Q[35]),
        .I1(\USE_WRITE.write_addr_inst/p_10_in ),
        .O(\m_payload_i_reg[65] [7]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[37]_i_1 
       (.I0(\USE_WRITE.write_addr_inst/p_10_in ),
        .I1(sr_awsize),
        .O(\m_payload_i_reg[65] [8]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hF2F0)) 
    \m_payload_i[38]_i_1 
       (.I0(\USE_WRITE.write_addr_inst/p_10_in ),
        .I1(CO),
        .I2(Q[36]),
        .I3(Q[37]),
        .O(\m_payload_i_reg[65] [9]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hFD00)) 
    \m_payload_i[39]_i_1 
       (.I0(\USE_WRITE.write_addr_inst/p_10_in ),
        .I1(CO),
        .I2(Q[36]),
        .I3(Q[37]),
        .O(\m_payload_i_reg[65] [10]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    \m_payload_i[3]_i_1 
       (.I0(\m_payload_i[3]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\m_payload_i[3]_i_3_n_0 ),
        .O(\m_payload_i_reg[65] [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0E02)) 
    \m_payload_i[3]_i_2 
       (.I0(Q[42]),
        .I1(Q[34]),
        .I2(\m_payload_i[62]_i_3_n_0 ),
        .I3(s_axi_awlen_ii[2]),
        .I4(\m_payload_i[3]_i_4_n_0 ),
        .I5(\m_payload_i[3]_i_5_n_0 ),
        .O(\m_payload_i[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'hCFEFFFFF)) 
    \m_payload_i[3]_i_3 
       (.I0(CO),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(\m_payload_i[5]_i_4_n_0 ),
        .I4(\USE_WRITE.write_addr_inst/p_10_in ),
        .O(\m_payload_i[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \m_payload_i[3]_i_4 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(CO),
        .O(\m_payload_i[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h44400040)) 
    \m_payload_i[3]_i_5 
       (.I0(sr_awsize),
        .I1(Q[35]),
        .I2(s_axi_awlen_ii[1]),
        .I3(Q[34]),
        .I4(s_axi_awlen_ii[0]),
        .O(\m_payload_i[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_payload_i[44]_i_1 
       (.I0(\USE_WRITE.write_addr_inst/upsized_length__30 [0]),
        .I1(\USE_WRITE.write_addr_inst/access_need_extra_word__2 ),
        .O(\m_payload_i_reg[65] [11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAA0400)) 
    \m_payload_i[44]_i_2 
       (.I0(\USE_WRITE.write_addr_inst/upsized_length1__0 ),
        .I1(\m_payload_i_reg[63] ),
        .I2(sr_awsize),
        .I3(s_axi_awlen_ii[2]),
        .I4(s_axi_awlen_ii[0]),
        .I5(\m_payload_i[44]_i_4_n_0 ),
        .O(\USE_WRITE.write_addr_inst/upsized_length__30 [0]));
  LUT6 #(
    .INIT(64'h0080000000A80000)) 
    \m_payload_i[44]_i_3 
       (.I0(\USE_WRITE.write_addr_inst/p_10_in ),
        .I1(\m_payload_i[48]_i_10_n_0 ),
        .I2(\m_payload_i[48]_i_9_n_0 ),
        .I3(Q[37]),
        .I4(Q[36]),
        .I5(\m_payload_i[65]_i_4_n_0 ),
        .O(\USE_WRITE.write_addr_inst/access_need_extra_word__2 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \m_payload_i[44]_i_4 
       (.I0(Q[42]),
        .I1(s_axi_awlen_ii[4]),
        .I2(Q[34]),
        .I3(sr_awsize),
        .I4(Q[35]),
        .I5(\USE_WRITE.write_addr_inst/upsized_length1__0 ),
        .O(\m_payload_i[44]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \m_payload_i[45]_i_1 
       (.I0(\m_payload_i[48]_i_4_n_0 ),
        .I1(\USE_WRITE.write_addr_inst/upsized_length__30 [1]),
        .O(\m_payload_i_reg[65] [12]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \m_payload_i[46]_i_1 
       (.I0(\m_payload_i[48]_i_4_n_0 ),
        .I1(\USE_WRITE.write_addr_inst/upsized_length__30 [1]),
        .I2(\USE_WRITE.write_addr_inst/upsized_length__30 [2]),
        .O(\m_payload_i_reg[65] [13]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \m_payload_i[47]_i_1 
       (.I0(\USE_WRITE.write_addr_inst/upsized_length__30 [1]),
        .I1(\m_payload_i[48]_i_4_n_0 ),
        .I2(\USE_WRITE.write_addr_inst/upsized_length__30 [2]),
        .I3(\USE_WRITE.write_addr_inst/upsized_length__30 [3]),
        .O(\m_payload_i_reg[65] [14]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \m_payload_i[48]_i_1 
       (.I0(\USE_WRITE.write_addr_inst/upsized_length__30 [3]),
        .I1(\USE_WRITE.write_addr_inst/upsized_length__30 [2]),
        .I2(\m_payload_i[48]_i_4_n_0 ),
        .I3(\USE_WRITE.write_addr_inst/upsized_length__30 [1]),
        .I4(\USE_WRITE.write_addr_inst/upsized_length__30 [4]),
        .O(\m_payload_i_reg[65] [15]));
  LUT6 #(
    .INIT(64'hFFFFFF0800000000)) 
    \m_payload_i[48]_i_10 
       (.I0(\m_payload_i[48]_i_19_n_0 ),
        .I1(Q[35]),
        .I2(sr_awsize),
        .I3(\m_payload_i[3]_i_4_n_0 ),
        .I4(\m_payload_i[48]_i_20_n_0 ),
        .I5(Q[3]),
        .O(\m_payload_i[48]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \m_payload_i[48]_i_11 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(\USE_WRITE.write_addr_inst/p_10_in ),
        .O(\m_payload_i[48]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \m_payload_i[48]_i_12 
       (.I0(s_axi_awlen_ii[4]),
        .I1(s_axi_awlen_ii[5]),
        .I2(Q[34]),
        .I3(sr_awsize),
        .I4(Q[35]),
        .I5(\USE_WRITE.write_addr_inst/upsized_length1__0 ),
        .O(\m_payload_i[48]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_payload_i[48]_i_13 
       (.I0(Q[34]),
        .I1(Q[35]),
        .I2(sr_awsize),
        .O(\m_payload_i[48]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0400040004000000)) 
    \m_payload_i[48]_i_14 
       (.I0(sr_awsize),
        .I1(Q[35]),
        .I2(Q[34]),
        .I3(\USE_WRITE.write_addr_inst/p_10_in ),
        .I4(Q[37]),
        .I5(Q[36]),
        .O(\m_payload_i[48]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hFFFFA8AA)) 
    \m_payload_i[48]_i_15 
       (.I0(Q[1]),
        .I1(CO),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(\m_payload_i[48]_i_19_n_0 ),
        .O(\m_payload_i[48]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h20202000)) 
    \m_payload_i[48]_i_16 
       (.I0(Q[0]),
        .I1(\m_payload_i[2]_i_4_n_0 ),
        .I2(s_axi_awlen_ii[0]),
        .I3(Q[37]),
        .I4(Q[36]),
        .O(\m_payload_i[48]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2220)) 
    \m_payload_i[48]_i_17 
       (.I0(Q[1]),
        .I1(\m_payload_i[63]_i_3_n_0 ),
        .I2(Q[37]),
        .I3(Q[36]),
        .O(\m_payload_i[48]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF400000000)) 
    \m_payload_i[48]_i_18 
       (.I0(\m_payload_i[2]_i_4_n_0 ),
        .I1(s_axi_awlen_ii[2]),
        .I2(CO),
        .I3(\m_payload_i[48]_i_21_n_0 ),
        .I4(\m_payload_i[2]_i_3_n_0 ),
        .I5(Q[2]),
        .O(\m_payload_i[48]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[48]_i_19 
       (.I0(s_axi_awlen_ii[0]),
        .I1(Q[34]),
        .I2(s_axi_awlen_ii[1]),
        .O(\m_payload_i[48]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAA0400)) 
    \m_payload_i[48]_i_2 
       (.I0(\USE_WRITE.write_addr_inst/upsized_length1__0 ),
        .I1(\m_payload_i_reg[63] ),
        .I2(sr_awsize),
        .I3(s_axi_awlen_ii[5]),
        .I4(Q[42]),
        .I5(\m_payload_i[48]_i_7_n_0 ),
        .O(\USE_WRITE.write_addr_inst/upsized_length__30 [3]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h02030200)) 
    \m_payload_i[48]_i_20 
       (.I0(s_axi_awlen_ii[2]),
        .I1(Q[35]),
        .I2(sr_awsize),
        .I3(Q[34]),
        .I4(Q[42]),
        .O(\m_payload_i[48]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[48]_i_21 
       (.I0(Q[36]),
        .I1(Q[37]),
        .O(\m_payload_i[48]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAA0400)) 
    \m_payload_i[48]_i_3 
       (.I0(\USE_WRITE.write_addr_inst/upsized_length1__0 ),
        .I1(\m_payload_i_reg[63] ),
        .I2(sr_awsize),
        .I3(s_axi_awlen_ii[4]),
        .I4(s_axi_awlen_ii[2]),
        .I5(\m_payload_i[48]_i_8_n_0 ),
        .O(\USE_WRITE.write_addr_inst/upsized_length__30 [2]));
  LUT6 #(
    .INIT(64'h0EEFFFFFFFFFFFFF)) 
    \m_payload_i[48]_i_4 
       (.I0(\m_payload_i[65]_i_4_n_0 ),
        .I1(\USE_WRITE.write_addr_inst/cmd_fix_i ),
        .I2(\m_payload_i[48]_i_9_n_0 ),
        .I3(\m_payload_i[48]_i_10_n_0 ),
        .I4(\m_payload_i[48]_i_11_n_0 ),
        .I5(\USE_WRITE.write_addr_inst/upsized_length__30 [0]),
        .O(\m_payload_i[48]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAA0400)) 
    \m_payload_i[48]_i_5 
       (.I0(\USE_WRITE.write_addr_inst/upsized_length1__0 ),
        .I1(\m_payload_i_reg[63] ),
        .I2(sr_awsize),
        .I3(Q[42]),
        .I4(s_axi_awlen_ii[1]),
        .I5(\m_payload_i[48]_i_12_n_0 ),
        .O(\USE_WRITE.write_addr_inst/upsized_length__30 [1]));
  LUT6 #(
    .INIT(64'hFFFFF000F888F888)) 
    \m_payload_i[48]_i_6 
       (.I0(\m_payload_i[48]_i_13_n_0 ),
        .I1(s_axi_awlen_ii[7]),
        .I2(\m_payload_i[48]_i_14_n_0 ),
        .I3(s_axi_awlen_ii[6]),
        .I4(s_axi_awlen_ii[4]),
        .I5(\USE_WRITE.write_addr_inst/upsized_length1__0 ),
        .O(\USE_WRITE.write_addr_inst/upsized_length__30 [4]));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \m_payload_i[48]_i_7 
       (.I0(s_axi_awlen_ii[6]),
        .I1(s_axi_awlen_ii[7]),
        .I2(Q[34]),
        .I3(sr_awsize),
        .I4(Q[35]),
        .I5(\USE_WRITE.write_addr_inst/upsized_length1__0 ),
        .O(\m_payload_i[48]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \m_payload_i[48]_i_8 
       (.I0(s_axi_awlen_ii[5]),
        .I1(s_axi_awlen_ii[6]),
        .I2(Q[34]),
        .I3(sr_awsize),
        .I4(Q[35]),
        .I5(\USE_WRITE.write_addr_inst/upsized_length1__0 ),
        .O(\m_payload_i[48]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF11111111000)) 
    \m_payload_i[48]_i_9 
       (.I0(\m_payload_i[64]_i_3_n_0 ),
        .I1(\USE_WRITE.write_addr_inst/cmd_fix_i ),
        .I2(\m_payload_i[48]_i_15_n_0 ),
        .I3(\m_payload_i[48]_i_16_n_0 ),
        .I4(\m_payload_i[48]_i_17_n_0 ),
        .I5(\m_payload_i[48]_i_18_n_0 ),
        .O(\m_payload_i[48]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h99A9999955655555)) 
    \m_payload_i[49]_i_1 
       (.I0(\m_payload_i[49]_i_2_n_0 ),
        .I1(\USE_WRITE.write_addr_inst/upsized_length1__0 ),
        .I2(\m_payload_i_reg[63] ),
        .I3(sr_awsize),
        .I4(s_axi_awlen_ii[7]),
        .I5(s_axi_awlen_ii[5]),
        .O(\m_payload_i_reg[65] [16]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \m_payload_i[49]_i_2 
       (.I0(\USE_WRITE.write_addr_inst/upsized_length__30 [4]),
        .I1(\USE_WRITE.write_addr_inst/upsized_length__30 [1]),
        .I2(\m_payload_i[48]_i_4_n_0 ),
        .I3(\USE_WRITE.write_addr_inst/upsized_length__30 [2]),
        .I4(\USE_WRITE.write_addr_inst/upsized_length__30 [3]),
        .O(\m_payload_i[49]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00015555)) 
    \m_payload_i[49]_i_3 
       (.I0(\m_payload_i[49]_i_4_n_0 ),
        .I1(\m_payload_i[51]_i_7_n_0 ),
        .I2(\m_payload_i[51]_i_6_n_0 ),
        .I3(\m_payload_i[51]_i_5_n_0 ),
        .I4(Q[39]),
        .I5(\USE_WRITE.write_addr_inst/cmd_fix_i ),
        .O(\USE_WRITE.write_addr_inst/upsized_length1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hE0E0E000)) 
    \m_payload_i[49]_i_4 
       (.I0(Q[42]),
        .I1(s_axi_awlen_ii[2]),
        .I2(Q[39]),
        .I3(Q[36]),
        .I4(Q[37]),
        .O(\m_payload_i[49]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_payload_i[49]_i_5 
       (.I0(Q[37]),
        .I1(Q[36]),
        .O(\USE_WRITE.write_addr_inst/cmd_fix_i ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \m_payload_i[4]_i_1 
       (.I0(\USE_WRITE.write_addr_inst/burst_mask__21 [4]),
        .I1(\m_payload_i[5]_i_2_n_0 ),
        .I2(sr_awaddr),
        .O(\m_payload_i_reg[65] [4]));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAAEA)) 
    \m_payload_i[4]_i_2 
       (.I0(\m_payload_i[4]_i_3_n_0 ),
        .I1(s_axi_awlen_ii[0]),
        .I2(sr_awsize),
        .I3(Q[34]),
        .I4(Q[35]),
        .I5(s_axi_awlen_ii[4]),
        .O(\USE_WRITE.write_addr_inst/burst_mask__21 [4]));
  LUT6 #(
    .INIT(64'h00000000AACCF000)) 
    \m_payload_i[4]_i_3 
       (.I0(s_axi_awlen_ii[1]),
        .I1(s_axi_awlen_ii[2]),
        .I2(Q[42]),
        .I3(Q[34]),
        .I4(Q[35]),
        .I5(sr_awsize),
        .O(\m_payload_i[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h02AAFD55)) 
    \m_payload_i[50]_i_1 
       (.I0(s_axi_awlen_ii[6]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(\USE_WRITE.write_addr_inst/p_10_in ),
        .I4(\m_payload_i[51]_i_2_n_0 ),
        .O(\m_payload_i_reg[65] [17]));
  LUT6 #(
    .INIT(64'h000BBBBB00044444)) 
    \m_payload_i[51]_i_1 
       (.I0(\m_payload_i[51]_i_2_n_0 ),
        .I1(s_axi_awlen_ii[6]),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(\USE_WRITE.write_addr_inst/p_10_in ),
        .I5(s_axi_awlen_ii[7]),
        .O(\m_payload_i_reg[65] [18]));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \m_payload_i[51]_i_2 
       (.I0(\USE_WRITE.write_addr_inst/upsized_length__30 [3]),
        .I1(\USE_WRITE.write_addr_inst/upsized_length__30 [2]),
        .I2(\m_payload_i[48]_i_4_n_0 ),
        .I3(\USE_WRITE.write_addr_inst/upsized_length__30 [1]),
        .I4(\USE_WRITE.write_addr_inst/upsized_length__30 [4]),
        .I5(\USE_WRITE.write_addr_inst/upsized_length__30 [5]),
        .O(\m_payload_i[51]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF00FE00)) 
    \m_payload_i[51]_i_3 
       (.I0(\m_payload_i[51]_i_5_n_0 ),
        .I1(\m_payload_i[51]_i_6_n_0 ),
        .I2(\m_payload_i[51]_i_7_n_0 ),
        .I3(\m_payload_i[51]_i_8_n_0 ),
        .I4(s_axi_awlen_ii[2]),
        .I5(Q[42]),
        .O(\USE_WRITE.write_addr_inst/p_10_in ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000C00)) 
    \m_payload_i[51]_i_4 
       (.I0(s_axi_awlen_ii[5]),
        .I1(s_axi_awlen_ii[7]),
        .I2(sr_awsize),
        .I3(Q[35]),
        .I4(Q[34]),
        .I5(\USE_WRITE.write_addr_inst/upsized_length1__0 ),
        .O(\USE_WRITE.write_addr_inst/upsized_length__30 [5]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[51]_i_5 
       (.I0(s_axi_awlen_ii[0]),
        .I1(s_axi_awlen_ii[1]),
        .O(\m_payload_i[51]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[51]_i_6 
       (.I0(s_axi_awlen_ii[4]),
        .I1(s_axi_awlen_ii[5]),
        .O(\m_payload_i[51]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[51]_i_7 
       (.I0(s_axi_awlen_ii[6]),
        .I1(s_axi_awlen_ii[7]),
        .O(\m_payload_i[51]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \m_payload_i[51]_i_8 
       (.I0(Q[39]),
        .I1(Q[36]),
        .I2(Q[37]),
        .O(\m_payload_i[51]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \m_payload_i[5]_i_1 
       (.I0(\m_payload_i[5]_i_2_n_0 ),
        .I1(\USE_WRITE.write_addr_inst/burst_mask__21 [5]),
        .I2(sr_awaddr),
        .I3(Q[4]),
        .O(\m_payload_i_reg[65] [5]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \m_payload_i[5]_i_2 
       (.I0(\USE_WRITE.write_addr_inst/p_10_in ),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(CO),
        .I4(\m_payload_i[5]_i_4_n_0 ),
        .O(\m_payload_i[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEAAAAAAAEAA)) 
    \m_payload_i[5]_i_3 
       (.I0(\m_payload_i[5]_i_5_n_0 ),
        .I1(s_axi_awlen_ii[4]),
        .I2(Q[35]),
        .I3(Q[34]),
        .I4(sr_awsize),
        .I5(s_axi_awlen_ii[2]),
        .O(\USE_WRITE.write_addr_inst/burst_mask__21 [5]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[5]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\m_payload_i[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000E0002)) 
    \m_payload_i[5]_i_5 
       (.I0(s_axi_awlen_ii[5]),
        .I1(Q[35]),
        .I2(Q[34]),
        .I3(sr_awsize),
        .I4(Q[42]),
        .I5(\m_payload_i[5]_i_6_n_0 ),
        .O(\m_payload_i[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h23002000)) 
    \m_payload_i[5]_i_6 
       (.I0(s_axi_awlen_ii[0]),
        .I1(Q[35]),
        .I2(Q[34]),
        .I3(sr_awsize),
        .I4(s_axi_awlen_ii[1]),
        .O(\m_payload_i[5]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[61]_i_1 
       (.I0(sr_awvalid),
        .O(\m_payload_i[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF004E00)) 
    \m_payload_i[62]_i_1 
       (.I0(Q[34]),
        .I1(\m_payload_i[62]_i_2_n_0 ),
        .I2(\m_payload_i[62]_i_3_n_0 ),
        .I3(\m_payload_i[62]_i_4_n_0 ),
        .I4(Q[0]),
        .I5(\m_payload_i[62]_i_5_n_0 ),
        .O(\m_payload_i_reg[65] [19]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_payload_i[62]_i_2 
       (.I0(s_axi_awlen_ii[0]),
        .I1(sr_awsize),
        .O(\m_payload_i[62]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[62]_i_3 
       (.I0(sr_awsize),
        .I1(Q[35]),
        .O(\m_payload_i[62]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF557F557D)) 
    \m_payload_i[62]_i_4 
       (.I0(Q[36]),
        .I1(Q[34]),
        .I2(Q[35]),
        .I3(sr_awsize),
        .I4(s_axi_awlen_ii[0]),
        .I5(Q[0]),
        .O(\m_payload_i[62]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    \m_payload_i[62]_i_5 
       (.I0(sr_awsize),
        .I1(Q[35]),
        .I2(Q[34]),
        .I3(Q[37]),
        .O(\m_payload_i[62]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBFBFFFF00000000)) 
    \m_payload_i[63]_i_1 
       (.I0(Q[1]),
        .I1(Q[37]),
        .I2(\m_payload_i_reg[63] ),
        .I3(sr_awsize),
        .I4(\m_payload_i[63]_i_3_n_0 ),
        .I5(\m_payload_i[63]_i_4_n_0 ),
        .O(\m_payload_i_reg[65] [20]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_payload_i[63]_i_2 
       (.I0(Q[35]),
        .I1(Q[34]),
        .O(\m_payload_i_reg[63] ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \m_payload_i[63]_i_3 
       (.I0(Q[35]),
        .I1(sr_awsize),
        .I2(s_axi_awlen_ii[1]),
        .I3(Q[34]),
        .I4(s_axi_awlen_ii[0]),
        .O(\m_payload_i[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF40FF00FF40)) 
    \m_payload_i[63]_i_4 
       (.I0(Q[34]),
        .I1(Q[0]),
        .I2(\m_payload_i[62]_i_2_n_0 ),
        .I3(\m_payload_i[63]_i_5_n_0 ),
        .I4(\m_payload_i[63]_i_6_n_0 ),
        .I5(\m_payload_i[63]_i_7_n_0 ),
        .O(\m_payload_i[63]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    \m_payload_i[63]_i_5 
       (.I0(sr_awsize),
        .I1(Q[35]),
        .I2(Q[34]),
        .I3(Q[36]),
        .O(\m_payload_i[63]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF47000000B8)) 
    \m_payload_i[63]_i_6 
       (.I0(s_axi_awlen_ii[0]),
        .I1(Q[34]),
        .I2(s_axi_awlen_ii[1]),
        .I3(sr_awsize),
        .I4(Q[35]),
        .I5(Q[1]),
        .O(\m_payload_i[63]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \m_payload_i[63]_i_7 
       (.I0(s_axi_awlen_ii[0]),
        .I1(Q[35]),
        .I2(sr_awsize),
        .I3(Q[34]),
        .I4(Q[0]),
        .O(\m_payload_i[63]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h3FF3513F)) 
    \m_payload_i[64]_i_1 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(\m_payload_i[64]_i_2_n_0 ),
        .I3(\m_payload_i[64]_i_3_n_0 ),
        .I4(Q[2]),
        .O(\m_payload_i_reg[65] [21]));
  LUT6 #(
    .INIT(64'h0C0E0C0A00080000)) 
    \m_payload_i[64]_i_2 
       (.I0(s_axi_awlen_ii[1]),
        .I1(s_axi_awlen_ii[0]),
        .I2(\m_payload_i[62]_i_3_n_0 ),
        .I3(Q[34]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\m_payload_i[64]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEEFEEBFBEFFF)) 
    \m_payload_i[64]_i_3 
       (.I0(sr_awsize),
        .I1(Q[34]),
        .I2(Q[35]),
        .I3(s_axi_awlen_ii[0]),
        .I4(s_axi_awlen_ii[1]),
        .I5(s_axi_awlen_ii[2]),
        .O(\m_payload_i[64]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h3FF3513F)) 
    \m_payload_i[65]_i_2 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(\m_payload_i[65]_i_3_n_0 ),
        .I3(\m_payload_i[65]_i_4_n_0 ),
        .I4(Q[3]),
        .O(\m_payload_i_reg[65] [22]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \m_payload_i[65]_i_3 
       (.I0(\m_payload_i[64]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\m_payload_i[64]_i_3_n_0 ),
        .O(\m_payload_i[65]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEEFEEBFBEFFF)) 
    \m_payload_i[65]_i_4 
       (.I0(sr_awsize),
        .I1(Q[34]),
        .I2(Q[35]),
        .I3(s_axi_awlen_ii[1]),
        .I4(s_axi_awlen_ii[2]),
        .I5(Q[42]),
        .O(\m_payload_i[65]_i_4_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [10]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [11]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [12]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [13]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [14]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [15]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [16]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [17]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [18]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [19]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [20]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [21]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [22]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [23]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [24]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [25]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [26]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [27]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [28]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [29]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [30]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [31]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [32]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [33]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [34]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [35]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [36]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [37]),
        .Q(sr_awsize),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [38]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [39]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [40]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [41]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [42]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [43]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [44]),
        .Q(s_axi_awlen_ii[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [45]),
        .Q(s_axi_awlen_ii[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [46]),
        .Q(s_axi_awlen_ii[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [47]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [48]),
        .Q(s_axi_awlen_ii[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [49]),
        .Q(s_axi_awlen_ii[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [4]),
        .Q(sr_awaddr),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [50]),
        .Q(s_axi_awlen_ii[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [51]),
        .Q(s_axi_awlen_ii[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [52]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [53]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [54]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [55]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [56]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [57]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [58]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [5]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [59]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [60]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [6]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [7]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [8]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[61]_i_1_n_0 ),
        .D(\s_axi_awregion[3] [9]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_ready_i_reg_0),
        .Q(sr_awvalid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[1] ),
        .Q(s_axi_awready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \si_be[2]_i_5 
       (.I0(Q[34]),
        .I1(Q[0]),
        .O(\si_be_reg[2] ));
  LUT6 #(
    .INIT(64'hFFC0EAC0EAC0EAC0)) 
    \si_be[3]_i_3 
       (.I0(Q[35]),
        .I1(\si_size_reg[0] ),
        .I2(\si_be_reg[2]_0 ),
        .I3(load_si_ptr),
        .I4(\si_be[3]_i_6_n_0 ),
        .I5(Q[1]),
        .O(\si_be_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \si_be[3]_i_6 
       (.I0(Q[0]),
        .I1(Q[34]),
        .O(\si_be[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h808F)) 
    \si_ptr[0]_i_1 
       (.I0(\si_ptr[0]_i_2_n_0 ),
        .I1(sr_awaddr),
        .I2(load_si_ptr),
        .I3(\si_ptr_reg[0]_0 ),
        .O(\si_ptr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h0AC0)) 
    \si_ptr[0]_i_2 
       (.I0(s_axi_awlen_ii[2]),
        .I1(Q[42]),
        .I2(Q[34]),
        .I3(Q[35]),
        .O(\si_ptr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \si_wrap_be_next[0]_i_1 
       (.I0(Q[1]),
        .I1(s_axi_awlen_ii[1]),
        .I2(Q[34]),
        .I3(Q[35]),
        .O(\si_wrap_be_next_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \si_wrap_be_next[1]_i_1 
       (.I0(Q[35]),
        .I1(Q[34]),
        .O(\si_wrap_be_next_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFF02)) 
    \si_wrap_be_next[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[34]),
        .I2(s_axi_awlen_ii[1]),
        .I3(Q[35]),
        .O(\si_wrap_be_next_reg[2] [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0400C4C0)) 
    \si_wrap_cnt[0]_i_1 
       (.I0(Q[1]),
        .I1(load_si_ptr),
        .I2(Q[35]),
        .I3(Q[34]),
        .I4(Q[2]),
        .I5(\si_wrap_cnt[0]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h010001FF)) 
    \si_wrap_cnt[0]_i_2 
       (.I0(Q[34]),
        .I1(Q[35]),
        .I2(Q[0]),
        .I3(load_si_ptr),
        .I4(\si_wrap_cnt_reg[0] ),
        .O(\si_wrap_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \si_wrap_cnt[1]_i_2 
       (.I0(Q[2]),
        .I1(s_axi_awlen_ii[1]),
        .I2(Q[35]),
        .I3(Q[34]),
        .O(\si_wrap_cnt_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h4400440000000C00)) 
    \si_wrap_cnt[1]_i_3 
       (.I0(Q[3]),
        .I1(load_si_ptr),
        .I2(Q[1]),
        .I3(s_axi_awlen_ii[1]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(\si_wrap_cnt_reg[1] ));
  LUT5 #(
    .INIT(32'hFF000800)) 
    \si_wrap_cnt[2]_i_2 
       (.I0(Q[35]),
        .I1(s_axi_awlen_ii[2]),
        .I2(sr_awaddr),
        .I3(load_si_ptr),
        .I4(\si_wrap_cnt[2]_i_3_n_0 ),
        .O(\si_wrap_cnt_reg[2] ));
  LUT5 #(
    .INIT(32'h04150000)) 
    \si_wrap_cnt[2]_i_3 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(s_axi_awlen_ii[2]),
        .O(\si_wrap_cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8C888888)) 
    \si_wrap_cnt[3]_i_2 
       (.I0(\si_wrap_cnt[3]_i_3_n_0 ),
        .I1(load_si_ptr),
        .I2(Q[4]),
        .I3(Q[42]),
        .I4(Q[35]),
        .I5(\si_wrap_cnt_reg[2]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h01230000)) 
    \si_wrap_cnt[3]_i_3 
       (.I0(Q[34]),
        .I1(Q[35]),
        .I2(Q[3]),
        .I3(sr_awaddr),
        .I4(Q[42]),
        .O(\si_wrap_cnt[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h41004D00)) 
    \si_wrap_word_next[0]_i_1 
       (.I0(s_axi_awlen_ii[2]),
        .I1(Q[34]),
        .I2(Q[35]),
        .I3(Q[2]),
        .I4(s_axi_awlen_ii[1]),
        .O(\si_wrap_word_next_reg[1] [0]));
  LUT6 #(
    .INIT(64'h03500000F35F0000)) 
    \si_wrap_word_next[1]_i_1 
       (.I0(s_axi_awlen_ii[2]),
        .I1(s_axi_awlen_ii[1]),
        .I2(Q[34]),
        .I3(Q[35]),
        .I4(Q[3]),
        .I5(Q[42]),
        .O(\si_wrap_word_next_reg[1] [1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_async_rst__2
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_async_rst__3
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_async_rst__4
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_async_rst__5
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_async_rst__6
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [3]),
        .I4(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [4]),
        .I2(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\dest_graysync_ff[2] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_gray__3
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [3]),
        .I4(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [4]),
        .I2(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\dest_graysync_ff[2] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_gray__4
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [3]),
        .I4(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [4]),
        .I2(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\dest_graysync_ff[2] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_gray__5
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [3]),
        .I4(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [4]),
        .I2(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\dest_graysync_ff[2] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_gray__6
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [3]),
        .I4(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [4]),
        .I2(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\dest_graysync_ff[2] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_gray__7
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [3]),
        .I4(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [4]),
        .I2(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\dest_graysync_ff[2] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_single__3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_single__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_single__5
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_us_cc_df_1_xpm_cdc_single__6
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module design_1_auto_us_cc_df_1_blk_mem_gen_generic_cstr
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [143:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [35:0]dina;
  input [15:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [35:0]dina;
  wire [143:0]doutb;
  wire ena;
  wire enb;
  wire [15:0]wea;

  design_1_auto_us_cc_df_1_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb[71:0]),
        .ena(ena),
        .enb(enb),
        .wea(wea[7:0]));
  design_1_auto_us_cc_df_1_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb[143:72]),
        .ena(ena),
        .enb(enb),
        .wea(wea[15:8]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_auto_us_cc_df_1_blk_mem_gen_prim_width
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [35:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [35:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;

  design_1_auto_us_cc_df_1_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_auto_us_cc_df_1_blk_mem_gen_prim_width__parameterized0
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [35:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [35:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;

  design_1_auto_us_cc_df_1_blk_mem_gen_prim_wrapper__parameterized0 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_auto_us_cc_df_1_blk_mem_gen_prim_wrapper
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [35:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [35:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("GENERATE_X_ONLY"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[35],dina[26],dina[17],dina[8]}),
        .DOADO({doutb[34:27],doutb[25:18],doutb[16:9],doutb[7:0]}),
        .DOBDO({doutb[70:63],doutb[61:54],doutb[52:45],doutb[43:36]}),
        .DOPADOP({doutb[35],doutb[26],doutb[17],doutb[8]}),
        .DOPBDOP({doutb[71],doutb[62],doutb[53],doutb[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(ena),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_auto_us_cc_df_1_blk_mem_gen_prim_wrapper__parameterized0
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [35:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [35:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("GENERATE_X_ONLY"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[35],dina[26],dina[17],dina[8]}),
        .DOADO({doutb[34:27],doutb[25:18],doutb[16:9],doutb[7:0]}),
        .DOBDO({doutb[70:63],doutb[61:54],doutb[52:45],doutb[43:36]}),
        .DOPADOP({doutb[35],doutb[26],doutb[17],doutb[8]}),
        .DOPBDOP({doutb[71],doutb[62],doutb[53],doutb[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(ena),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module design_1_auto_us_cc_df_1_blk_mem_gen_top
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [143:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [35:0]dina;
  input [15:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [35:0]dina;
  wire [143:0]doutb;
  wire ena;
  wire enb;
  wire [15:0]wea;

  design_1_auto_us_cc_df_1_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "9" *) (* C_ADDRB_WIDTH = "9" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "" *) 
(* C_COUNT_36K_BRAM = "" *) (* C_CTRL_ECC_ALGO = "ECCHSIAO32-7" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "1" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "1" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "1" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "BlankString" *) 
(* C_INIT_FILE_NAME = "BlankString" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "0" *) 
(* C_MEM_TYPE = "1" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "512" *) (* C_READ_DEPTH_B = "512" *) (* C_READ_WIDTH_A = "144" *) 
(* C_READ_WIDTH_B = "144" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "GENERATE_X_ONLY" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "1" *) (* C_USE_BYTE_WEB = "1" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "16" *) (* C_WEB_WIDTH = "16" *) 
(* C_WRITE_DEPTH_A = "512" *) (* C_WRITE_DEPTH_B = "512" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "144" *) (* C_WRITE_WIDTH_B = "144" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) 
module design_1_auto_us_cc_df_1_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [15:0]wea;
  input [8:0]addra;
  input [143:0]dina;
  output [143:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [15:0]web;
  input [8:0]addrb;
  input [143:0]dinb;
  output [143:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [8:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [143:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [143:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [8:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [143:0]dina;
  wire [143:0]doutb;
  wire ena;
  wire enb;
  wire [15:0]wea;

  assign dbiterr = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[143] = \<const0> ;
  assign s_axi_rdata[142] = \<const0> ;
  assign s_axi_rdata[141] = \<const0> ;
  assign s_axi_rdata[140] = \<const0> ;
  assign s_axi_rdata[139] = \<const0> ;
  assign s_axi_rdata[138] = \<const0> ;
  assign s_axi_rdata[137] = \<const0> ;
  assign s_axi_rdata[136] = \<const0> ;
  assign s_axi_rdata[135] = \<const0> ;
  assign s_axi_rdata[134] = \<const0> ;
  assign s_axi_rdata[133] = \<const0> ;
  assign s_axi_rdata[132] = \<const0> ;
  assign s_axi_rdata[131] = \<const0> ;
  assign s_axi_rdata[130] = \<const0> ;
  assign s_axi_rdata[129] = \<const0> ;
  assign s_axi_rdata[128] = \<const0> ;
  assign s_axi_rdata[127] = \<const0> ;
  assign s_axi_rdata[126] = \<const0> ;
  assign s_axi_rdata[125] = \<const0> ;
  assign s_axi_rdata[124] = \<const0> ;
  assign s_axi_rdata[123] = \<const0> ;
  assign s_axi_rdata[122] = \<const0> ;
  assign s_axi_rdata[121] = \<const0> ;
  assign s_axi_rdata[120] = \<const0> ;
  assign s_axi_rdata[119] = \<const0> ;
  assign s_axi_rdata[118] = \<const0> ;
  assign s_axi_rdata[117] = \<const0> ;
  assign s_axi_rdata[116] = \<const0> ;
  assign s_axi_rdata[115] = \<const0> ;
  assign s_axi_rdata[114] = \<const0> ;
  assign s_axi_rdata[113] = \<const0> ;
  assign s_axi_rdata[112] = \<const0> ;
  assign s_axi_rdata[111] = \<const0> ;
  assign s_axi_rdata[110] = \<const0> ;
  assign s_axi_rdata[109] = \<const0> ;
  assign s_axi_rdata[108] = \<const0> ;
  assign s_axi_rdata[107] = \<const0> ;
  assign s_axi_rdata[106] = \<const0> ;
  assign s_axi_rdata[105] = \<const0> ;
  assign s_axi_rdata[104] = \<const0> ;
  assign s_axi_rdata[103] = \<const0> ;
  assign s_axi_rdata[102] = \<const0> ;
  assign s_axi_rdata[101] = \<const0> ;
  assign s_axi_rdata[100] = \<const0> ;
  assign s_axi_rdata[99] = \<const0> ;
  assign s_axi_rdata[98] = \<const0> ;
  assign s_axi_rdata[97] = \<const0> ;
  assign s_axi_rdata[96] = \<const0> ;
  assign s_axi_rdata[95] = \<const0> ;
  assign s_axi_rdata[94] = \<const0> ;
  assign s_axi_rdata[93] = \<const0> ;
  assign s_axi_rdata[92] = \<const0> ;
  assign s_axi_rdata[91] = \<const0> ;
  assign s_axi_rdata[90] = \<const0> ;
  assign s_axi_rdata[89] = \<const0> ;
  assign s_axi_rdata[88] = \<const0> ;
  assign s_axi_rdata[87] = \<const0> ;
  assign s_axi_rdata[86] = \<const0> ;
  assign s_axi_rdata[85] = \<const0> ;
  assign s_axi_rdata[84] = \<const0> ;
  assign s_axi_rdata[83] = \<const0> ;
  assign s_axi_rdata[82] = \<const0> ;
  assign s_axi_rdata[81] = \<const0> ;
  assign s_axi_rdata[80] = \<const0> ;
  assign s_axi_rdata[79] = \<const0> ;
  assign s_axi_rdata[78] = \<const0> ;
  assign s_axi_rdata[77] = \<const0> ;
  assign s_axi_rdata[76] = \<const0> ;
  assign s_axi_rdata[75] = \<const0> ;
  assign s_axi_rdata[74] = \<const0> ;
  assign s_axi_rdata[73] = \<const0> ;
  assign s_axi_rdata[72] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_us_cc_df_1_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[107:72]),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module design_1_auto_us_cc_df_1_blk_mem_gen_v8_4_1_synth
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [143:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [35:0]dina;
  input [15:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [35:0]dina;
  wire [143:0]doutb;
  wire ena;
  wire enb;
  wire [15:0]wea;

  design_1_auto_us_cc_df_1_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module design_1_auto_us_cc_df_1_clk_x_pntrs
   (ram_full_i_reg,
    RD_PNTR_WR,
    ram_full_i_reg_0,
    ram_empty_fb_i_reg,
    WR_PNTR_RD,
    Q,
    \gic0.gc0.count_reg[1] ,
    \gc0.count_reg[3] ,
    \gpregsm1.curr_fwft_state_reg[1] ,
    \gc0.count_d1_reg[3] ,
    \gc0.count_d1_reg[4] ,
    m_aclk,
    \gic0.gc0.count_d2_reg[4] ,
    s_aclk);
  output ram_full_i_reg;
  output [2:0]RD_PNTR_WR;
  output ram_full_i_reg_0;
  output ram_empty_fb_i_reg;
  output [1:0]WR_PNTR_RD;
  input [1:0]Q;
  input [1:0]\gic0.gc0.count_reg[1] ;
  input [3:0]\gc0.count_reg[3] ;
  input \gpregsm1.curr_fwft_state_reg[1] ;
  input \gc0.count_d1_reg[3] ;
  input [4:0]\gc0.count_d1_reg[4] ;
  input m_aclk;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input s_aclk;

  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire [1:0]WR_PNTR_RD;
  wire \gc0.count_d1_reg[3] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [3:0]\gc0.count_reg[3] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [1:0]\gic0.gc0.count_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[1] ;
  wire m_aclk;
  wire [2:0]p_24_out;
  wire [1:0]p_25_out;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i_i_3_n_0;
  wire ram_empty_i_i_5_n_0;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire s_aclk;

  LUT6 #(
    .INIT(64'hFFFF900090009000)) 
    ram_empty_i_i_1
       (.I0(p_24_out[0]),
        .I1(\gc0.count_reg[3] [0]),
        .I2(\gpregsm1.curr_fwft_state_reg[1] ),
        .I3(ram_empty_i_i_3_n_0),
        .I4(\gc0.count_d1_reg[3] ),
        .I5(ram_empty_i_i_5_n_0),
        .O(ram_empty_fb_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_3
       (.I0(WR_PNTR_RD[0]),
        .I1(\gc0.count_reg[3] [3]),
        .I2(p_24_out[2]),
        .I3(\gc0.count_reg[3] [2]),
        .I4(\gc0.count_reg[3] [1]),
        .I5(p_24_out[1]),
        .O(ram_empty_i_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_5
       (.I0(p_24_out[2]),
        .I1(\gc0.count_d1_reg[4] [2]),
        .I2(p_24_out[1]),
        .I3(\gc0.count_d1_reg[4] [1]),
        .I4(\gc0.count_d1_reg[4] [0]),
        .I5(p_24_out[0]),
        .O(ram_empty_i_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_3
       (.I0(p_25_out[0]),
        .I1(\gic0.gc0.count_reg[1] [0]),
        .I2(p_25_out[1]),
        .I3(\gic0.gc0.count_reg[1] [1]),
        .O(ram_full_i_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_4
       (.I0(p_25_out[0]),
        .I1(Q[0]),
        .I2(p_25_out[1]),
        .I3(Q[1]),
        .O(ram_full_i_reg));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_gray rd_pntr_cdc_inst
       (.dest_clk(m_aclk),
        .dest_out_bin({RD_PNTR_WR,p_25_out}),
        .src_clk(s_aclk),
        .src_in_bin(\gc0.count_d1_reg[4] ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_gray__7 wr_pntr_cdc_inst
       (.dest_clk(s_aclk),
        .dest_out_bin({WR_PNTR_RD,p_24_out}),
        .src_clk(m_aclk),
        .src_in_bin(\gic0.gc0.count_d2_reg[4] ));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module design_1_auto_us_cc_df_1_clk_x_pntrs__xdcDup__1
   (ram_empty_i_reg,
    WR_PNTR_RD,
    ram_empty_i_reg_0,
    ram_full_i_reg,
    RD_PNTR_WR,
    ram_full_i_reg_0,
    Q,
    \gc0.count_reg[4] ,
    \gic0.gc0.count_d1_reg[1] ,
    \gic0.gc0.count_reg[1] ,
    wr_clk,
    \gic0.gc0.count_d2_reg[4] ,
    rd_clk);
  output ram_empty_i_reg;
  output [1:0]WR_PNTR_RD;
  output ram_empty_i_reg_0;
  output ram_full_i_reg;
  output [2:0]RD_PNTR_WR;
  output ram_full_i_reg_0;
  input [4:0]Q;
  input [2:0]\gc0.count_reg[4] ;
  input [1:0]\gic0.gc0.count_d1_reg[1] ;
  input [1:0]\gic0.gc0.count_reg[1] ;
  input wr_clk;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input rd_clk;

  wire [4:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire [1:0]WR_PNTR_RD;
  wire [2:0]\gc0.count_reg[4] ;
  wire [1:0]\gic0.gc0.count_d1_reg[1] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [1:0]\gic0.gc0.count_reg[1] ;
  wire [4:2]p_24_out;
  wire [1:0]p_25_out;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire rd_clk;
  wire wr_clk;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_2
       (.I0(p_24_out[3]),
        .I1(Q[3]),
        .I2(p_24_out[2]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(p_24_out[4]),
        .O(ram_empty_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_5
       (.I0(p_24_out[3]),
        .I1(\gc0.count_reg[4] [1]),
        .I2(p_24_out[2]),
        .I3(\gc0.count_reg[4] [0]),
        .I4(\gc0.count_reg[4] [2]),
        .I5(p_24_out[4]),
        .O(ram_empty_i_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_3
       (.I0(p_25_out[0]),
        .I1(\gic0.gc0.count_d1_reg[1] [0]),
        .I2(p_25_out[1]),
        .I3(\gic0.gc0.count_d1_reg[1] [1]),
        .O(ram_full_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_4
       (.I0(p_25_out[0]),
        .I1(\gic0.gc0.count_reg[1] [0]),
        .I2(p_25_out[1]),
        .I3(\gic0.gc0.count_reg[1] [1]),
        .O(ram_full_i_reg_0));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_gray__4 rd_pntr_cdc_inst
       (.dest_clk(wr_clk),
        .dest_out_bin({RD_PNTR_WR,p_25_out}),
        .src_clk(rd_clk),
        .src_in_bin(Q));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_gray__3 wr_pntr_cdc_inst
       (.dest_clk(rd_clk),
        .dest_out_bin({p_24_out,WR_PNTR_RD}),
        .src_clk(wr_clk),
        .src_in_bin(\gic0.gc0.count_d2_reg[4] ));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module design_1_auto_us_cc_df_1_clk_x_pntrs__xdcDup__2
   (ram_full_i_reg,
    RD_PNTR_WR,
    ram_full_i_reg_0,
    ram_empty_fb_i_reg,
    WR_PNTR_RD,
    Q,
    \gic0.gc0.count_reg[1] ,
    \gc0.count_reg[3] ,
    \gpregsm1.curr_fwft_state_reg[1] ,
    \gc0.count_d1_reg[3] ,
    \gc0.count_d1_reg[4] ,
    s_aclk,
    \gic0.gc0.count_d2_reg[4] ,
    m_aclk);
  output ram_full_i_reg;
  output [2:0]RD_PNTR_WR;
  output ram_full_i_reg_0;
  output ram_empty_fb_i_reg;
  output [1:0]WR_PNTR_RD;
  input [1:0]Q;
  input [1:0]\gic0.gc0.count_reg[1] ;
  input [3:0]\gc0.count_reg[3] ;
  input \gpregsm1.curr_fwft_state_reg[1] ;
  input \gc0.count_d1_reg[3] ;
  input [4:0]\gc0.count_d1_reg[4] ;
  input s_aclk;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input m_aclk;

  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire [1:0]WR_PNTR_RD;
  wire \gc0.count_d1_reg[3] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [3:0]\gc0.count_reg[3] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [1:0]\gic0.gc0.count_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[1] ;
  wire m_aclk;
  wire [2:0]p_24_out;
  wire [1:0]p_25_out;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i_i_3_n_0;
  wire ram_empty_i_i_5_n_0;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire s_aclk;

  LUT6 #(
    .INIT(64'hFFFF900090009000)) 
    ram_empty_i_i_1
       (.I0(p_24_out[0]),
        .I1(\gc0.count_reg[3] [0]),
        .I2(\gpregsm1.curr_fwft_state_reg[1] ),
        .I3(ram_empty_i_i_3_n_0),
        .I4(\gc0.count_d1_reg[3] ),
        .I5(ram_empty_i_i_5_n_0),
        .O(ram_empty_fb_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_3
       (.I0(WR_PNTR_RD[0]),
        .I1(\gc0.count_reg[3] [3]),
        .I2(p_24_out[2]),
        .I3(\gc0.count_reg[3] [2]),
        .I4(\gc0.count_reg[3] [1]),
        .I5(p_24_out[1]),
        .O(ram_empty_i_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_5
       (.I0(p_24_out[2]),
        .I1(\gc0.count_d1_reg[4] [2]),
        .I2(p_24_out[1]),
        .I3(\gc0.count_d1_reg[4] [1]),
        .I4(\gc0.count_d1_reg[4] [0]),
        .I5(p_24_out[0]),
        .O(ram_empty_i_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_3
       (.I0(p_25_out[0]),
        .I1(\gic0.gc0.count_reg[1] [0]),
        .I2(p_25_out[1]),
        .I3(\gic0.gc0.count_reg[1] [1]),
        .O(ram_full_i_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_4
       (.I0(p_25_out[0]),
        .I1(Q[0]),
        .I2(p_25_out[1]),
        .I3(Q[1]),
        .O(ram_full_i_reg));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_gray__6 rd_pntr_cdc_inst
       (.dest_clk(s_aclk),
        .dest_out_bin({RD_PNTR_WR,p_25_out}),
        .src_clk(m_aclk),
        .src_in_bin(\gc0.count_d1_reg[4] ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_gray__5 wr_pntr_cdc_inst
       (.dest_clk(m_aclk),
        .dest_out_bin({WR_PNTR_RD,p_24_out}),
        .src_clk(s_aclk),
        .src_in_bin(\gic0.gc0.count_d2_reg[4] ));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_auto_us_cc_df_1_dmem__parameterized0
   (dout_i,
    s_aclk,
    ram_full_fb_i_reg,
    DI,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    \gpregsm1.curr_fwft_state_reg[1] ,
    m_aclk);
  output [64:0]dout_i;
  input s_aclk;
  input [0:0]ram_full_fb_i_reg;
  input [64:0]DI;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  input m_aclk;

  wire [64:0]DI;
  wire [64:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire m_aclk;
  wire [64:0]p_0_out;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_31_60_64_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_60_64_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_0_5
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gic0.gc0.count_d2_reg[4] ),
        .DIA(DI[1:0]),
        .DIB(DI[3:2]),
        .DIC(DI[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_12_17
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gic0.gc0.count_d2_reg[4] ),
        .DIA(DI[13:12]),
        .DIB(DI[15:14]),
        .DIC(DI[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[13:12]),
        .DOB(p_0_out[15:14]),
        .DOC(p_0_out[17:16]),
        .DOD(NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_18_23
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gic0.gc0.count_d2_reg[4] ),
        .DIA(DI[19:18]),
        .DIB(DI[21:20]),
        .DIC(DI[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[19:18]),
        .DOB(p_0_out[21:20]),
        .DOC(p_0_out[23:22]),
        .DOD(NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_24_29
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gic0.gc0.count_d2_reg[4] ),
        .DIA(DI[25:24]),
        .DIB(DI[27:26]),
        .DIC(DI[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[25:24]),
        .DOB(p_0_out[27:26]),
        .DOC(p_0_out[29:28]),
        .DOD(NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_30_35
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gic0.gc0.count_d2_reg[4] ),
        .DIA(DI[31:30]),
        .DIB(DI[33:32]),
        .DIC(DI[35:34]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[31:30]),
        .DOB(p_0_out[33:32]),
        .DOC(p_0_out[35:34]),
        .DOD(NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_36_41
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gic0.gc0.count_d2_reg[4] ),
        .DIA(DI[37:36]),
        .DIB(DI[39:38]),
        .DIC(DI[41:40]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[37:36]),
        .DOB(p_0_out[39:38]),
        .DOC(p_0_out[41:40]),
        .DOD(NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_42_47
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gic0.gc0.count_d2_reg[4] ),
        .DIA(DI[43:42]),
        .DIB(DI[45:44]),
        .DIC(DI[47:46]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[43:42]),
        .DOB(p_0_out[45:44]),
        .DOC(p_0_out[47:46]),
        .DOD(NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_48_53
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gic0.gc0.count_d2_reg[4] ),
        .DIA(DI[49:48]),
        .DIB(DI[51:50]),
        .DIC(DI[53:52]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[49:48]),
        .DOB(p_0_out[51:50]),
        .DOC(p_0_out[53:52]),
        .DOD(NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_54_59
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gic0.gc0.count_d2_reg[4] ),
        .DIA(DI[55:54]),
        .DIB(DI[57:56]),
        .DIC(DI[59:58]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[55:54]),
        .DOB(p_0_out[57:56]),
        .DOC(p_0_out[59:58]),
        .DOD(NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_60_64
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gic0.gc0.count_d2_reg[4] ),
        .DIA(DI[61:60]),
        .DIB(DI[63:62]),
        .DIC({1'b0,DI[64]}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[61:60]),
        .DOB(p_0_out[63:62]),
        .DOC({NLW_RAM_reg_0_31_60_64_DOC_UNCONNECTED[1],p_0_out[64]}),
        .DOD(NLW_RAM_reg_0_31_60_64_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_6_11
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gic0.gc0.count_d2_reg[4] ),
        .DIA(DI[7:6]),
        .DIB(DI[9:8]),
        .DIC(DI[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(p_0_out[11:10]),
        .DOD(NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(ram_full_fb_i_reg));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[0]),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[10]),
        .Q(dout_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[11]),
        .Q(dout_i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[12]),
        .Q(dout_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[13]),
        .Q(dout_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[14]),
        .Q(dout_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[15]),
        .Q(dout_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[16]),
        .Q(dout_i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[17]),
        .Q(dout_i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[18]),
        .Q(dout_i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[19]),
        .Q(dout_i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[1]),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[20]),
        .Q(dout_i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[21]),
        .Q(dout_i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[22]),
        .Q(dout_i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[23]),
        .Q(dout_i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[24]),
        .Q(dout_i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[25]),
        .Q(dout_i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[26]),
        .Q(dout_i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[27]),
        .Q(dout_i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[28]),
        .Q(dout_i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[29] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[29]),
        .Q(dout_i[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[2]),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[30] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[30]),
        .Q(dout_i[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[31] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[31]),
        .Q(dout_i[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[32] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[32]),
        .Q(dout_i[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[33] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[33]),
        .Q(dout_i[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[34] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[34]),
        .Q(dout_i[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[35] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[35]),
        .Q(dout_i[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[36] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[36]),
        .Q(dout_i[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[37] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[37]),
        .Q(dout_i[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[38] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[38]),
        .Q(dout_i[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[39] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[39]),
        .Q(dout_i[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[3]),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[40] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[40]),
        .Q(dout_i[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[41] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[41]),
        .Q(dout_i[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[42] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[42]),
        .Q(dout_i[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[43] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[43]),
        .Q(dout_i[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[44] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[44]),
        .Q(dout_i[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[45] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[45]),
        .Q(dout_i[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[46] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[46]),
        .Q(dout_i[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[47] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[47]),
        .Q(dout_i[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[48] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[48]),
        .Q(dout_i[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[49] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[49]),
        .Q(dout_i[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[4]),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[50] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[50]),
        .Q(dout_i[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[51] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[51]),
        .Q(dout_i[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[52] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[52]),
        .Q(dout_i[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[53] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[53]),
        .Q(dout_i[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[54] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[54]),
        .Q(dout_i[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[55] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[55]),
        .Q(dout_i[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[56] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[56]),
        .Q(dout_i[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[57] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[57]),
        .Q(dout_i[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[58] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[58]),
        .Q(dout_i[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[59] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[59]),
        .Q(dout_i[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[5]),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[60] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[60]),
        .Q(dout_i[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[61] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[61]),
        .Q(dout_i[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[62] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[62]),
        .Q(dout_i[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[63] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[63]),
        .Q(dout_i[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[64] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[64]),
        .Q(dout_i[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[6]),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[7]),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[8]),
        .Q(dout_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(m_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[9]),
        .Q(dout_i[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_auto_us_cc_df_1_dmem__parameterized1
   (dout_i,
    m_aclk,
    p_20_out,
    m_axi_bresp,
    \gc0.count_d1_reg[4] ,
    I123,
    E,
    s_aclk);
  output [1:0]dout_i;
  input m_aclk;
  input p_20_out;
  input [1:0]m_axi_bresp;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]I123;
  input [0:0]E;
  input s_aclk;

  wire [0:0]E;
  wire [4:0]I123;
  wire RAM_reg_0_31_0_2_n_3;
  wire [1:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire m_aclk;
  wire [1:0]m_axi_bresp;
  wire [1:0]p_0_out;
  wire p_20_out;
  wire s_aclk;
  wire [1:1]NLW_RAM_reg_0_31_0_2_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_0_2_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_0_2_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_0_2
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(I123),
        .DIA(m_axi_bresp),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out),
        .DOB({NLW_RAM_reg_0_31_0_2_DOB_UNCONNECTED[1],RAM_reg_0_31_0_2_n_3}),
        .DOC(NLW_RAM_reg_0_31_0_2_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_31_0_2_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(p_20_out));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(p_0_out[0]),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(p_0_out[1]),
        .Q(dout_i[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_auto_us_cc_df_1_fifo_generator_ramfifo
   (empty,
    rst,
    wr_clk,
    rd_clk,
    rd_en,
    wr_en);
  output empty;
  input rst;
  input wr_clk;
  input rd_clk;
  input rd_en;
  input wr_en;

  wire empty;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_3 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_4 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_8 ;
  wire [4:0]p_0_out;
  wire [4:0]p_13_out;
  wire [1:0]p_14_out;
  wire [1:0]p_24_out;
  wire [4:2]p_25_out;
  wire rd_clk;
  wire rd_en;
  wire [4:2]rd_pntr_plus1;
  wire rst;
  wire rstblk_n_0;
  wire rstblk_n_1;
  wire wr_clk;
  wire wr_en;
  wire [1:0]wr_pntr_plus2;

  design_1_auto_us_cc_df_1_clk_x_pntrs__xdcDup__1 \gntv_or_sync_fifo.gcx.clkx 
       (.Q(p_0_out),
        .RD_PNTR_WR(p_25_out),
        .WR_PNTR_RD(p_24_out),
        .\gc0.count_reg[4] (rd_pntr_plus1),
        .\gic0.gc0.count_d1_reg[1] (p_14_out),
        .\gic0.gc0.count_d2_reg[4] (p_13_out),
        .\gic0.gc0.count_reg[1] (wr_pntr_plus2),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_empty_i_reg_0(\gntv_or_sync_fifo.gcx.clkx_n_3 ),
        .ram_full_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_4 ),
        .ram_full_i_reg_0(\gntv_or_sync_fifo.gcx.clkx_n_8 ),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
  design_1_auto_us_cc_df_1_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.Q(rd_pntr_plus1),
        .WR_PNTR_RD(p_24_out),
        .\dest_out_bin_ff_reg[3] (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\dest_out_bin_ff_reg[3]_0 (\gntv_or_sync_fifo.gcx.clkx_n_3 ),
        .empty(empty),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (rstblk_n_1),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\src_gray_ff_reg[4] (p_0_out));
  design_1_auto_us_cc_df_1_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_0),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(p_25_out),
        .\dest_out_bin_ff_reg[0] (\gntv_or_sync_fifo.gcx.clkx_n_4 ),
        .\dest_out_bin_ff_reg[0]_0 (\gntv_or_sync_fifo.gcx.clkx_n_8 ),
        .\gic0.gc0.count_d2_reg[1] (p_14_out),
        .\src_gray_ff_reg[4] (p_13_out),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  design_1_auto_us_cc_df_1_reset_blk_ramfifo rstblk
       (.AR(rstblk_n_0),
        .rd_clk(rd_clk),
        .rst(rst),
        .\syncstages_ff_reg[0] (rstblk_n_1),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_auto_us_cc_df_1_fifo_generator_ramfifo__parameterized0
   (Q,
    s_axi_awready,
    m_axi_awvalid,
    s_aclk,
    m_aclk,
    DI,
    s_axi_awvalid,
    m_axi_awready,
    s_aresetn);
  output [64:0]Q;
  output s_axi_awready;
  output m_axi_awvalid;
  input s_aclk;
  input m_aclk;
  input [64:0]DI;
  input s_axi_awvalid;
  input m_axi_awready;
  input s_aresetn;

  wire [64:0]DI;
  wire [64:0]Q;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_4 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_5 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_0 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_6 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_7 ;
  wire m_aclk;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [4:0]p_0_out_0;
  wire [4:0]p_13_out;
  wire [1:0]p_14_out;
  wire p_20_out;
  wire [4:3]p_24_out;
  wire [4:2]p_25_out;
  wire ram_rd_en_i;
  wire [3:0]rd_pntr_plus1;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire rstblk_n_1;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [1:0]wr_pntr_plus2;

  design_1_auto_us_cc_df_1_clk_x_pntrs__xdcDup__2 \gntv_or_sync_fifo.gcx.clkx 
       (.Q(p_14_out),
        .RD_PNTR_WR(p_25_out),
        .WR_PNTR_RD(p_24_out),
        .\gc0.count_d1_reg[3] (\gntv_or_sync_fifo.gl0.rd_n_7 ),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gc0.count_reg[3] (rd_pntr_plus1),
        .\gic0.gc0.count_d2_reg[4] (p_13_out),
        .\gic0.gc0.count_reg[1] (wr_pntr_plus2),
        .\gpregsm1.curr_fwft_state_reg[1] (\gntv_or_sync_fifo.gl0.rd_n_0 ),
        .m_aclk(m_aclk),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_5 ),
        .ram_full_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_full_i_reg_0(\gntv_or_sync_fifo.gcx.clkx_n_4 ),
        .s_aclk(s_aclk));
  design_1_auto_us_cc_df_1_rd_logic__parameterized0 \gntv_or_sync_fifo.gl0.rd 
       (.E(ram_rd_en_i),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(p_24_out),
        .\dest_out_bin_ff_reg[0] (\gntv_or_sync_fifo.gcx.clkx_n_5 ),
        .\goreg_dm.dout_i_reg[64] (\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .m_aclk(m_aclk),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (rstblk_n_1),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_0 ),
        .ram_empty_fb_i_reg_0(\gntv_or_sync_fifo.gl0.rd_n_7 ),
        .\src_gray_ff_reg[4] (p_0_out_0));
  design_1_auto_us_cc_df_1_wr_logic__parameterized0 \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_0),
        .E(p_20_out),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(p_25_out),
        .\dest_out_bin_ff_reg[0] (\gntv_or_sync_fifo.gcx.clkx_n_4 ),
        .\dest_out_bin_ff_reg[0]_0 (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\gic0.gc0.count_d2_reg[1] (p_14_out),
        .\grstd1.grst_full.grst_f.rst_d3_reg (rst_full_gen_i),
        .out(rst_full_ff_i),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .\src_gray_ff_reg[4] (p_13_out));
  design_1_auto_us_cc_df_1_memory__parameterized0 \gntv_or_sync_fifo.mem 
       (.DI(DI),
        .E(\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .Q(Q),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gic0.gc0.count_d2_reg[4] (p_13_out),
        .\gpregsm1.curr_fwft_state_reg[1] (ram_rd_en_i),
        .m_aclk(m_aclk),
        .ram_full_fb_i_reg(p_20_out),
        .s_aclk(s_aclk));
  design_1_auto_us_cc_df_1_reset_blk_ramfifo__parameterized0__xdcDup__1 rstblk
       (.AR(rstblk_n_0),
        .m_aclk(m_aclk),
        .out(rst_full_ff_i),
        .ram_full_i_reg(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .\syncstages_ff_reg[0] (rstblk_n_1));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_auto_us_cc_df_1_fifo_generator_ramfifo__parameterized1
   (s_axi_bresp,
    s_axi_bvalid,
    m_axi_bready,
    m_aclk,
    s_aclk,
    s_axi_bready,
    m_axi_bresp,
    m_axi_bvalid,
    s_aresetn);
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output m_axi_bready;
  input m_aclk;
  input s_aclk;
  input s_axi_bready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input s_aresetn;

  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_4 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_5 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_0 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_2 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_8 ;
  wire [0:0]\gr1.gr1_int.rfwft/p_0_in ;
  wire m_aclk;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [4:0]p_0_out_0;
  wire [4:0]p_13_out;
  wire [1:0]p_14_out;
  wire p_20_out;
  wire [4:3]p_24_out;
  wire [4:2]p_25_out;
  wire ram_rd_en_i;
  wire [3:0]rd_pntr_plus1;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire rstblk_n_1;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [1:0]wr_pntr_plus2;

  design_1_auto_us_cc_df_1_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.Q(p_14_out),
        .RD_PNTR_WR(p_25_out),
        .WR_PNTR_RD(p_24_out),
        .\gc0.count_d1_reg[3] (\gntv_or_sync_fifo.gl0.rd_n_8 ),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gc0.count_reg[3] (rd_pntr_plus1),
        .\gic0.gc0.count_d2_reg[4] (p_13_out),
        .\gic0.gc0.count_reg[1] (wr_pntr_plus2),
        .\gpregsm1.curr_fwft_state_reg[1] (\gntv_or_sync_fifo.gl0.rd_n_2 ),
        .m_aclk(m_aclk),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_5 ),
        .ram_full_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_full_i_reg_0(\gntv_or_sync_fifo.gcx.clkx_n_4 ),
        .s_aclk(s_aclk));
  design_1_auto_us_cc_df_1_rd_logic__parameterized1 \gntv_or_sync_fifo.gl0.rd 
       (.E(ram_rd_en_i),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(p_24_out),
        .\dest_out_bin_ff_reg[0] (\gntv_or_sync_fifo.gcx.clkx_n_5 ),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (rstblk_n_1),
        .out({\gntv_or_sync_fifo.gl0.rd_n_0 ,\gr1.gr1_int.rfwft/p_0_in }),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_2 ),
        .ram_empty_fb_i_reg_0(\gntv_or_sync_fifo.gl0.rd_n_8 ),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .\src_gray_ff_reg[4] (p_0_out_0));
  design_1_auto_us_cc_df_1_wr_logic__parameterized0_4 \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_0),
        .E(p_20_out),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(p_25_out),
        .\dest_out_bin_ff_reg[0] (\gntv_or_sync_fifo.gcx.clkx_n_4 ),
        .\dest_out_bin_ff_reg[0]_0 (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\gic0.gc0.count_d2_reg[1] (p_14_out),
        .\grstd1.grst_full.grst_f.rst_d3_reg (rst_full_gen_i),
        .m_aclk(m_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .out(rst_full_ff_i),
        .\src_gray_ff_reg[4] (p_13_out));
  design_1_auto_us_cc_df_1_memory__parameterized1 \gntv_or_sync_fifo.mem 
       (.E(ram_rd_en_i),
        .I123(p_13_out),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .m_aclk(m_aclk),
        .m_axi_bresp(m_axi_bresp),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (rstblk_n_1),
        .out({\gntv_or_sync_fifo.gl0.rd_n_0 ,\gr1.gr1_int.rfwft/p_0_in }),
        .p_20_out(p_20_out),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp));
  design_1_auto_us_cc_df_1_reset_blk_ramfifo__parameterized0 rstblk
       (.AR(rstblk_n_0),
        .m_aclk(m_aclk),
        .out(rst_full_ff_i),
        .ram_full_i_reg(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .\syncstages_ff_reg[0] (rstblk_n_1));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_auto_us_cc_df_1_fifo_generator_top
   (empty,
    rst,
    wr_clk,
    rd_clk,
    rd_en,
    wr_en);
  output empty;
  input rst;
  input wr_clk;
  input rd_clk;
  input rd_en;
  input wr_en;

  wire empty;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;

  design_1_auto_us_cc_df_1_fifo_generator_ramfifo \grf.rf 
       (.empty(empty),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_auto_us_cc_df_1_fifo_generator_top__parameterized0
   (Q,
    s_axi_awready,
    m_axi_awvalid,
    s_aclk,
    m_aclk,
    DI,
    s_axi_awvalid,
    m_axi_awready,
    s_aresetn);
  output [64:0]Q;
  output s_axi_awready;
  output m_axi_awvalid;
  input s_aclk;
  input m_aclk;
  input [64:0]DI;
  input s_axi_awvalid;
  input m_axi_awready;
  input s_aresetn;

  wire [64:0]DI;
  wire [64:0]Q;
  wire m_aclk;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_awready;
  wire s_axi_awvalid;

  design_1_auto_us_cc_df_1_fifo_generator_ramfifo__parameterized0 \grf.rf 
       (.DI(DI),
        .Q(Q),
        .m_aclk(m_aclk),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_auto_us_cc_df_1_fifo_generator_top__parameterized1
   (s_axi_bresp,
    s_axi_bvalid,
    m_axi_bready,
    m_aclk,
    s_aclk,
    s_axi_bready,
    m_axi_bresp,
    m_axi_bvalid,
    s_aresetn);
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output m_axi_bready;
  input m_aclk;
  input s_aclk;
  input s_axi_bready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input s_aresetn;

  wire m_aclk;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;

  design_1_auto_us_cc_df_1_fifo_generator_ramfifo__parameterized1 \grf.rf 
       (.m_aclk(m_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "5" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "1" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "1" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "0" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "0" *) (* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "5" *) 
(* C_RD_DEPTH = "32" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "5" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "5" *) 
(* C_WR_DEPTH = "32" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "5" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_2" *) 
module design_1_auto_us_cc_df_1_fifo_generator_v13_2_2
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [0:0]din;
  input wr_en;
  input rd_en;
  input [4:0]prog_empty_thresh;
  input [4:0]prog_empty_thresh_assert;
  input [4:0]prog_empty_thresh_negate;
  input [4:0]prog_full_thresh;
  input [4:0]prog_full_thresh_assert;
  input [4:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [0:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [4:0]data_count;
  output [4:0]rd_data_count;
  output [4:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire empty;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const0> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[0] = \<const0> ;
  assign full = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_us_cc_df_1_fifo_generator_v13_2_2_synth inst_fifo_gen
       (.empty(empty),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "4" *) (* C_AXI_AWUSER_WIDTH = "4" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "18" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "65" *) (* C_DIN_WIDTH_RDCH = "35" *) 
(* C_DIN_WIDTH_WACH = "65" *) (* C_DIN_WIDTH_WDCH = "37" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "18" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "1" *) (* C_HAS_AXI_AWUSER = "1" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "12" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "11" *) (* C_IMPLEMENTATION_TYPE_WACH = "12" *) (* C_IMPLEMENTATION_TYPE_WDCH = "11" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "12" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "2" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx4" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "30" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "31" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "2" *) 
(* C_WRCH_TYPE = "2" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "32" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "32" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "5" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "5" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_2" *) 
module design_1_auto_us_cc_df_1_fifo_generator_v13_2_2__parameterized0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [17:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [17:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [4:0]axi_aw_prog_full_thresh;
  input [4:0]axi_aw_prog_empty_thresh;
  output [5:0]axi_aw_data_count;
  output [5:0]axi_aw_wr_data_count;
  output [5:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [4:0]axi_ar_prog_full_thresh;
  input [4:0]axi_ar_prog_empty_thresh;
  output [5:0]axi_ar_data_count;
  output [5:0]axi_ar_wr_data_count;
  output [5:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire m_aclk;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire [3:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [3:0]s_axi_awuser;
  wire s_axi_awvalid;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[5] = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[5] = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[5] = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[5] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[5] = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[5] = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const0> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[3] = \<const0> ;
  assign m_axi_aruser[2] = \<const0> ;
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_us_cc_df_1_fifo_generator_v13_2_2_synth__parameterized0 inst_fifo_gen
       (.DI({s_axi_awaddr,s_axi_awlen,s_axi_awsize,s_axi_awburst,s_axi_awlock,s_axi_awcache,s_axi_awprot,s_axi_awqos,s_axi_awregion,s_axi_awuser}),
        .Q({m_axi_awaddr,m_axi_awlen,m_axi_awsize,m_axi_awburst,m_axi_awlock,m_axi_awcache,m_axi_awprot,m_axi_awqos,m_axi_awregion,m_axi_awuser}),
        .m_aclk(m_aclk),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "18" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "63" *) (* C_DIN_WIDTH_RDCH = "36" *) 
(* C_DIN_WIDTH_WACH = "63" *) (* C_DIN_WIDTH_WDCH = "38" *) (* C_DIN_WIDTH_WRCH = "3" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "18" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "1" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "11" *) (* C_IMPLEMENTATION_TYPE_RACH = "12" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "11" *) (* C_IMPLEMENTATION_TYPE_WACH = "12" *) (* C_IMPLEMENTATION_TYPE_WDCH = "11" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "12" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "2" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx4" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1021" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "13" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1021" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "13" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1021" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "29" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "31" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "2" *) (* C_WDCH_TYPE = "2" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "32" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "5" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_2" *) 
module design_1_auto_us_cc_df_1_fifo_generator_v13_2_2__parameterized1
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [17:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [17:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [4:0]axi_b_prog_full_thresh;
  input [4:0]axi_b_prog_empty_thresh;
  output [5:0]axi_b_data_count;
  output [5:0]axi_b_wr_data_count;
  output [5:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire m_aclk;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[5] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const0> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[5] = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[5] = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_us_cc_df_1_fifo_generator_v13_2_2_synth__parameterized1 inst_fifo_gen
       (.m_aclk(m_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_2_synth" *) 
module design_1_auto_us_cc_df_1_fifo_generator_v13_2_2_synth
   (empty,
    rst,
    wr_clk,
    rd_clk,
    rd_en,
    wr_en);
  output empty;
  input rst;
  input wr_clk;
  input rd_clk;
  input rd_en;
  input wr_en;

  wire empty;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;

  design_1_auto_us_cc_df_1_fifo_generator_top \gconvfifo.rf 
       (.empty(empty),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_2_synth" *) 
module design_1_auto_us_cc_df_1_fifo_generator_v13_2_2_synth__parameterized0
   (Q,
    s_axi_awready,
    m_axi_awvalid,
    s_aclk,
    m_aclk,
    DI,
    s_axi_awvalid,
    m_axi_awready,
    s_aresetn);
  output [64:0]Q;
  output s_axi_awready;
  output m_axi_awvalid;
  input s_aclk;
  input m_aclk;
  input [64:0]DI;
  input s_axi_awvalid;
  input m_axi_awready;
  input s_aresetn;

  wire [64:0]DI;
  wire [64:0]Q;
  wire m_aclk;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_awready;
  wire s_axi_awvalid;

  design_1_auto_us_cc_df_1_fifo_generator_top__parameterized0 \gaxi_full_lite.gwrite_ch.gwach2.axi_wach 
       (.DI(DI),
        .Q(Q),
        .m_aclk(m_aclk),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_2_synth" *) 
module design_1_auto_us_cc_df_1_fifo_generator_v13_2_2_synth__parameterized1
   (s_axi_bresp,
    s_axi_bvalid,
    m_axi_bready,
    m_aclk,
    s_aclk,
    s_axi_bready,
    m_axi_bresp,
    m_axi_bvalid,
    s_aresetn);
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output m_axi_bready;
  input m_aclk;
  input s_aclk;
  input s_axi_bready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input s_aresetn;

  wire m_aclk;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;

  design_1_auto_us_cc_df_1_fifo_generator_top__parameterized1 \gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch 
       (.m_aclk(m_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_auto_us_cc_df_1_memory__parameterized0
   (Q,
    E,
    m_aclk,
    s_aclk,
    ram_full_fb_i_reg,
    DI,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [64:0]Q;
  input [0:0]E;
  input m_aclk;
  input s_aclk;
  input [0:0]ram_full_fb_i_reg;
  input [64:0]DI;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire [64:0]DI;
  wire [0:0]E;
  wire [64:0]Q;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire \gdm.dm_gen.dm_n_0 ;
  wire \gdm.dm_gen.dm_n_1 ;
  wire \gdm.dm_gen.dm_n_10 ;
  wire \gdm.dm_gen.dm_n_11 ;
  wire \gdm.dm_gen.dm_n_12 ;
  wire \gdm.dm_gen.dm_n_13 ;
  wire \gdm.dm_gen.dm_n_14 ;
  wire \gdm.dm_gen.dm_n_15 ;
  wire \gdm.dm_gen.dm_n_16 ;
  wire \gdm.dm_gen.dm_n_17 ;
  wire \gdm.dm_gen.dm_n_18 ;
  wire \gdm.dm_gen.dm_n_19 ;
  wire \gdm.dm_gen.dm_n_2 ;
  wire \gdm.dm_gen.dm_n_20 ;
  wire \gdm.dm_gen.dm_n_21 ;
  wire \gdm.dm_gen.dm_n_22 ;
  wire \gdm.dm_gen.dm_n_23 ;
  wire \gdm.dm_gen.dm_n_24 ;
  wire \gdm.dm_gen.dm_n_25 ;
  wire \gdm.dm_gen.dm_n_26 ;
  wire \gdm.dm_gen.dm_n_27 ;
  wire \gdm.dm_gen.dm_n_28 ;
  wire \gdm.dm_gen.dm_n_29 ;
  wire \gdm.dm_gen.dm_n_3 ;
  wire \gdm.dm_gen.dm_n_30 ;
  wire \gdm.dm_gen.dm_n_31 ;
  wire \gdm.dm_gen.dm_n_32 ;
  wire \gdm.dm_gen.dm_n_33 ;
  wire \gdm.dm_gen.dm_n_34 ;
  wire \gdm.dm_gen.dm_n_35 ;
  wire \gdm.dm_gen.dm_n_36 ;
  wire \gdm.dm_gen.dm_n_37 ;
  wire \gdm.dm_gen.dm_n_38 ;
  wire \gdm.dm_gen.dm_n_39 ;
  wire \gdm.dm_gen.dm_n_4 ;
  wire \gdm.dm_gen.dm_n_40 ;
  wire \gdm.dm_gen.dm_n_41 ;
  wire \gdm.dm_gen.dm_n_42 ;
  wire \gdm.dm_gen.dm_n_43 ;
  wire \gdm.dm_gen.dm_n_44 ;
  wire \gdm.dm_gen.dm_n_45 ;
  wire \gdm.dm_gen.dm_n_46 ;
  wire \gdm.dm_gen.dm_n_47 ;
  wire \gdm.dm_gen.dm_n_48 ;
  wire \gdm.dm_gen.dm_n_49 ;
  wire \gdm.dm_gen.dm_n_5 ;
  wire \gdm.dm_gen.dm_n_50 ;
  wire \gdm.dm_gen.dm_n_51 ;
  wire \gdm.dm_gen.dm_n_52 ;
  wire \gdm.dm_gen.dm_n_53 ;
  wire \gdm.dm_gen.dm_n_54 ;
  wire \gdm.dm_gen.dm_n_55 ;
  wire \gdm.dm_gen.dm_n_56 ;
  wire \gdm.dm_gen.dm_n_57 ;
  wire \gdm.dm_gen.dm_n_58 ;
  wire \gdm.dm_gen.dm_n_59 ;
  wire \gdm.dm_gen.dm_n_6 ;
  wire \gdm.dm_gen.dm_n_60 ;
  wire \gdm.dm_gen.dm_n_61 ;
  wire \gdm.dm_gen.dm_n_62 ;
  wire \gdm.dm_gen.dm_n_63 ;
  wire \gdm.dm_gen.dm_n_64 ;
  wire \gdm.dm_gen.dm_n_7 ;
  wire \gdm.dm_gen.dm_n_8 ;
  wire \gdm.dm_gen.dm_n_9 ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire m_aclk;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;

  design_1_auto_us_cc_df_1_dmem__parameterized0 \gdm.dm_gen.dm 
       (.DI(DI),
        .dout_i({\gdm.dm_gen.dm_n_0 ,\gdm.dm_gen.dm_n_1 ,\gdm.dm_gen.dm_n_2 ,\gdm.dm_gen.dm_n_3 ,\gdm.dm_gen.dm_n_4 ,\gdm.dm_gen.dm_n_5 ,\gdm.dm_gen.dm_n_6 ,\gdm.dm_gen.dm_n_7 ,\gdm.dm_gen.dm_n_8 ,\gdm.dm_gen.dm_n_9 ,\gdm.dm_gen.dm_n_10 ,\gdm.dm_gen.dm_n_11 ,\gdm.dm_gen.dm_n_12 ,\gdm.dm_gen.dm_n_13 ,\gdm.dm_gen.dm_n_14 ,\gdm.dm_gen.dm_n_15 ,\gdm.dm_gen.dm_n_16 ,\gdm.dm_gen.dm_n_17 ,\gdm.dm_gen.dm_n_18 ,\gdm.dm_gen.dm_n_19 ,\gdm.dm_gen.dm_n_20 ,\gdm.dm_gen.dm_n_21 ,\gdm.dm_gen.dm_n_22 ,\gdm.dm_gen.dm_n_23 ,\gdm.dm_gen.dm_n_24 ,\gdm.dm_gen.dm_n_25 ,\gdm.dm_gen.dm_n_26 ,\gdm.dm_gen.dm_n_27 ,\gdm.dm_gen.dm_n_28 ,\gdm.dm_gen.dm_n_29 ,\gdm.dm_gen.dm_n_30 ,\gdm.dm_gen.dm_n_31 ,\gdm.dm_gen.dm_n_32 ,\gdm.dm_gen.dm_n_33 ,\gdm.dm_gen.dm_n_34 ,\gdm.dm_gen.dm_n_35 ,\gdm.dm_gen.dm_n_36 ,\gdm.dm_gen.dm_n_37 ,\gdm.dm_gen.dm_n_38 ,\gdm.dm_gen.dm_n_39 ,\gdm.dm_gen.dm_n_40 ,\gdm.dm_gen.dm_n_41 ,\gdm.dm_gen.dm_n_42 ,\gdm.dm_gen.dm_n_43 ,\gdm.dm_gen.dm_n_44 ,\gdm.dm_gen.dm_n_45 ,\gdm.dm_gen.dm_n_46 ,\gdm.dm_gen.dm_n_47 ,\gdm.dm_gen.dm_n_48 ,\gdm.dm_gen.dm_n_49 ,\gdm.dm_gen.dm_n_50 ,\gdm.dm_gen.dm_n_51 ,\gdm.dm_gen.dm_n_52 ,\gdm.dm_gen.dm_n_53 ,\gdm.dm_gen.dm_n_54 ,\gdm.dm_gen.dm_n_55 ,\gdm.dm_gen.dm_n_56 ,\gdm.dm_gen.dm_n_57 ,\gdm.dm_gen.dm_n_58 ,\gdm.dm_gen.dm_n_59 ,\gdm.dm_gen.dm_n_60 ,\gdm.dm_gen.dm_n_61 ,\gdm.dm_gen.dm_n_62 ,\gdm.dm_gen.dm_n_63 ,\gdm.dm_gen.dm_n_64 }),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .\gpregsm1.curr_fwft_state_reg[1] (\gpregsm1.curr_fwft_state_reg[1] ),
        .m_aclk(m_aclk),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_64 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_54 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_53 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_52 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_51 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_50 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_49 ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_48 ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_47 ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_46 ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_45 ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_63 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_44 ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_43 ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_42 ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_41 ),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_40 ),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_39 ),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_38 ),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_37 ),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_36 ),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[29] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_35 ),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_62 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[30] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_34 ),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[31] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_33 ),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[32] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_32 ),
        .Q(Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[33] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_31 ),
        .Q(Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[34] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_30 ),
        .Q(Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[35] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_29 ),
        .Q(Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[36] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_28 ),
        .Q(Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[37] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_27 ),
        .Q(Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[38] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_26 ),
        .Q(Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[39] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_25 ),
        .Q(Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_61 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[40] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_24 ),
        .Q(Q[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[41] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_23 ),
        .Q(Q[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[42] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_22 ),
        .Q(Q[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[43] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_21 ),
        .Q(Q[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[44] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_20 ),
        .Q(Q[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[45] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_19 ),
        .Q(Q[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[46] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_18 ),
        .Q(Q[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[47] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_17 ),
        .Q(Q[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[48] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_16 ),
        .Q(Q[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[49] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_15 ),
        .Q(Q[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_60 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[50] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_14 ),
        .Q(Q[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[51] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_13 ),
        .Q(Q[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[52] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_12 ),
        .Q(Q[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[53] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_11 ),
        .Q(Q[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[54] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_10 ),
        .Q(Q[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[55] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_9 ),
        .Q(Q[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[56] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_8 ),
        .Q(Q[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[57] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_7 ),
        .Q(Q[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[58] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_6 ),
        .Q(Q[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[59] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_5 ),
        .Q(Q[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_59 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[60] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_4 ),
        .Q(Q[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[61] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_3 ),
        .Q(Q[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[62] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_2 ),
        .Q(Q[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[63] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_1 ),
        .Q(Q[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[64] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_0 ),
        .Q(Q[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_58 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_57 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_56 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_55 ),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_auto_us_cc_df_1_memory__parameterized1
   (s_axi_bresp,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    out,
    s_axi_bready,
    s_aclk,
    m_aclk,
    p_20_out,
    m_axi_bresp,
    \gc0.count_d1_reg[4] ,
    I123,
    E);
  output [1:0]s_axi_bresp;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  input [1:0]out;
  input s_axi_bready;
  input s_aclk;
  input m_aclk;
  input p_20_out;
  input [1:0]m_axi_bresp;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]I123;
  input [0:0]E;

  wire [0:0]E;
  wire [4:0]I123;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire \gdm.dm_gen.dm_n_0 ;
  wire \gdm.dm_gen.dm_n_1 ;
  wire \goreg_dm.dout_i[0]_i_1_n_0 ;
  wire \goreg_dm.dout_i[1]_i_1_n_0 ;
  wire m_aclk;
  wire [1:0]m_axi_bresp;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire [1:0]out;
  wire p_20_out;
  wire s_aclk;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;

  design_1_auto_us_cc_df_1_dmem__parameterized1 \gdm.dm_gen.dm 
       (.E(E),
        .I123(I123),
        .dout_i({\gdm.dm_gen.dm_n_0 ,\gdm.dm_gen.dm_n_1 }),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .m_aclk(m_aclk),
        .m_axi_bresp(m_axi_bresp),
        .p_20_out(p_20_out),
        .s_aclk(s_aclk));
  LUT6 #(
    .INIT(64'hEFEFFFEF20200020)) 
    \goreg_dm.dout_i[0]_i_1 
       (.I0(\gdm.dm_gen.dm_n_1 ),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .I2(out[1]),
        .I3(out[0]),
        .I4(s_axi_bready),
        .I5(s_axi_bresp[0]),
        .O(\goreg_dm.dout_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFFFEF20200020)) 
    \goreg_dm.dout_i[1]_i_1 
       (.I0(\gdm.dm_gen.dm_n_0 ),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .I2(out[1]),
        .I3(out[0]),
        .I4(s_axi_bready),
        .I5(s_axi_bresp[1]),
        .O(\goreg_dm.dout_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\goreg_dm.dout_i[0]_i_1_n_0 ),
        .Q(s_axi_bresp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\goreg_dm.dout_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_auto_us_cc_df_1_rd_bin_cntr
   (Q,
    ram_empty_fb_i_reg,
    \src_gray_ff_reg[4] ,
    WR_PNTR_RD,
    E,
    m_aclk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg );
  output [4:0]Q;
  output ram_empty_fb_i_reg;
  output [4:0]\src_gray_ff_reg[4] ;
  input [1:0]WR_PNTR_RD;
  input [0:0]E;
  input m_aclk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;

  wire [0:0]E;
  wire [4:0]Q;
  wire [1:0]WR_PNTR_RD;
  wire m_aclk;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire [4:0]plusOp__0;
  wire ram_empty_fb_i_reg;
  wire [4:0]\src_gray_ff_reg[4] ;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(plusOp__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[0]),
        .Q(\src_gray_ff_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[1]),
        .Q(\src_gray_ff_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[2]),
        .Q(\src_gray_ff_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[3]),
        .Q(\src_gray_ff_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[4]),
        .Q(\src_gray_ff_reg[4] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp__0[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp__0[4]),
        .Q(Q[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_4
       (.I0(\src_gray_ff_reg[4] [3]),
        .I1(WR_PNTR_RD[0]),
        .I2(\src_gray_ff_reg[4] [4]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_auto_us_cc_df_1_rd_bin_cntr_3
   (Q,
    ram_empty_i_reg,
    \src_gray_ff_reg[4] ,
    \dest_out_bin_ff_reg[3] ,
    E,
    \dest_out_bin_ff_reg[3]_0 ,
    WR_PNTR_RD,
    rd_clk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg );
  output [2:0]Q;
  output ram_empty_i_reg;
  output [4:0]\src_gray_ff_reg[4] ;
  input \dest_out_bin_ff_reg[3] ;
  input [0:0]E;
  input \dest_out_bin_ff_reg[3]_0 ;
  input [1:0]WR_PNTR_RD;
  input rd_clk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;

  wire [0:0]E;
  wire [2:0]Q;
  wire [1:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[3] ;
  wire \dest_out_bin_ff_reg[3]_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire [4:0]plusOp;
  wire ram_empty_i_i_3_n_0;
  wire ram_empty_i_i_4_n_0;
  wire ram_empty_i_reg;
  wire rd_clk;
  wire [1:0]rd_pntr_plus1;
  wire [4:0]\src_gray_ff_reg[4] ;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(Q[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(Q[0]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(\src_gray_ff_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(\src_gray_ff_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[0]),
        .Q(\src_gray_ff_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[1]),
        .Q(\src_gray_ff_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[2]),
        .Q(\src_gray_ff_reg[4] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(rd_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp[2]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp[3]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp[4]),
        .Q(Q[2]));
  LUT5 #(
    .INIT(32'hF8888888)) 
    ram_empty_i_i_1
       (.I0(\dest_out_bin_ff_reg[3] ),
        .I1(ram_empty_i_i_3_n_0),
        .I2(E),
        .I3(ram_empty_i_i_4_n_0),
        .I4(\dest_out_bin_ff_reg[3]_0 ),
        .O(ram_empty_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_3
       (.I0(\src_gray_ff_reg[4] [0]),
        .I1(WR_PNTR_RD[0]),
        .I2(\src_gray_ff_reg[4] [1]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_i_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_4
       (.I0(rd_pntr_plus1[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_i_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_auto_us_cc_df_1_rd_bin_cntr_9
   (Q,
    ram_empty_fb_i_reg,
    \src_gray_ff_reg[4] ,
    WR_PNTR_RD,
    E,
    s_aclk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg );
  output [4:0]Q;
  output ram_empty_fb_i_reg;
  output [4:0]\src_gray_ff_reg[4] ;
  input [1:0]WR_PNTR_RD;
  input [0:0]E;
  input s_aclk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;

  wire [0:0]E;
  wire [4:0]Q;
  wire [1:0]WR_PNTR_RD;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire [4:0]plusOp__0;
  wire ram_empty_fb_i_reg;
  wire s_aclk;
  wire [4:0]\src_gray_ff_reg[4] ;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(plusOp__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[0]),
        .Q(\src_gray_ff_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[1]),
        .Q(\src_gray_ff_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[2]),
        .Q(\src_gray_ff_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[3]),
        .Q(\src_gray_ff_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(Q[4]),
        .Q(\src_gray_ff_reg[4] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp__0[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(plusOp__0[4]),
        .Q(Q[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_4
       (.I0(\src_gray_ff_reg[4] [3]),
        .I1(WR_PNTR_RD[0]),
        .I2(\src_gray_ff_reg[4] [4]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_auto_us_cc_df_1_rd_fwft
   (ram_empty_fb_i_reg,
    E,
    \goreg_dm.dout_i_reg[64] ,
    m_axi_awvalid,
    m_aclk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    m_axi_awready,
    out,
    WR_PNTR_RD,
    Q);
  output ram_empty_fb_i_reg;
  output [0:0]E;
  output [0:0]\goreg_dm.dout_i_reg[64] ;
  output m_axi_awvalid;
  input m_aclk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  input m_axi_awready;
  input out;
  input [0:0]WR_PNTR_RD;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]WR_PNTR_RD;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire [0:0]\goreg_dm.dout_i_reg[64] ;
  wire m_aclk;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [1:0]next_fwft_state;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire out;
  wire ram_empty_fb_i_reg;
  (* DONT_TOUCH *) wire user_valid;

  LUT5 #(
    .INIT(32'hEF80EB00)) 
    aempty_fwft_fb_i_i_1
       (.I0(out),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(aempty_fwft_fb_i),
        .I4(m_axi_awready),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_i_i_1
       (.I0(empty_fwft_fb_i),
        .I1(curr_fwft_state[1]),
        .I2(m_axi_awready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_o_i_i_1
       (.I0(empty_fwft_fb_o_i),
        .I1(curr_fwft_state[1]),
        .I2(m_axi_awready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[4]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_awready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(E));
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[64]_i_1 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(m_axi_awready),
        .O(\goreg_dm.dout_i_reg[64] ));
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(m_axi_awready),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_awready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_awvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axi_awvalid));
  LUT6 #(
    .INIT(64'h00DF0000000000DF)) 
    ram_empty_i_i_2
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_awready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .I4(WR_PNTR_RD),
        .I5(Q),
        .O(ram_empty_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_auto_us_cc_df_1_rd_fwft_1
   (empty,
    E,
    rd_clk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    rd_en,
    out);
  output empty;
  output [0:0]E;
  input rd_clk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  input rd_en;
  input out;

  wire [0:0]E;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire [1:0]next_fwft_state;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire out;
  wire rd_clk;
  wire rd_en;
  (* DONT_TOUCH *) wire user_valid;

  assign empty = empty_fwft_i;
  LUT5 #(
    .INIT(32'hFFCB8000)) 
    aempty_fwft_fb_i_i_1
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(out),
        .I4(aempty_fwft_fb_i),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_i_i_1
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_i),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_o_i_i_1
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_o_i),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h4555)) 
    \gc0.count_d1[4]_i_1 
       (.I0(out),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(E));
  LUT3 #(
    .INIT(8'hBA)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(next_fwft_state[0]),
        .Q(user_valid));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_auto_us_cc_df_1_rd_fwft_7
   (out,
    ram_empty_fb_i_reg,
    E,
    s_axi_bvalid,
    s_aclk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    s_axi_bready,
    ram_empty_fb_i_reg_0,
    WR_PNTR_RD,
    Q);
  output [1:0]out;
  output ram_empty_fb_i_reg;
  output [0:0]E;
  output s_axi_bvalid;
  input s_aclk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  input s_axi_bready;
  input ram_empty_fb_i_reg_0;
  input [0:0]WR_PNTR_RD;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]WR_PNTR_RD;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire [1:0]next_fwft_state;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;
  (* DONT_TOUCH *) wire user_valid;

  assign out[1:0] = curr_fwft_state;
  LUT5 #(
    .INIT(32'hEF80EB00)) 
    aempty_fwft_fb_i_i_1
       (.I0(ram_empty_fb_i_reg_0),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(aempty_fwft_fb_i),
        .I4(s_axi_bready),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_i_i_1
       (.I0(empty_fwft_fb_i),
        .I1(curr_fwft_state[1]),
        .I2(s_axi_bready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_o_i_i_1
       (.I0(empty_fwft_fb_o_i),
        .I1(curr_fwft_state[1]),
        .I2(s_axi_bready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[4]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(s_axi_bready),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg_0),
        .O(E));
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(s_axi_bready),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(s_axi_bready),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg_0),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT6 #(
    .INIT(64'h00DF0000000000DF)) 
    ram_empty_i_i_2
       (.I0(curr_fwft_state[1]),
        .I1(s_axi_bready),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg_0),
        .I4(WR_PNTR_RD),
        .I5(Q),
        .O(ram_empty_fb_i_reg));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_bvalid_INST_0
       (.I0(empty_fwft_i),
        .O(s_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_auto_us_cc_df_1_rd_logic
   (empty,
    Q,
    \src_gray_ff_reg[4] ,
    rd_clk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    rd_en,
    \dest_out_bin_ff_reg[3] ,
    \dest_out_bin_ff_reg[3]_0 ,
    WR_PNTR_RD);
  output empty;
  output [2:0]Q;
  output [4:0]\src_gray_ff_reg[4] ;
  input rd_clk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  input rd_en;
  input \dest_out_bin_ff_reg[3] ;
  input \dest_out_bin_ff_reg[3]_0 ;
  input [1:0]WR_PNTR_RD;

  wire [2:0]Q;
  wire [1:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[3] ;
  wire \dest_out_bin_ff_reg[3]_0 ;
  wire empty;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire p_2_out;
  wire p_8_out;
  wire rd_clk;
  wire rd_en;
  wire rpntr_n_3;
  wire [4:0]\src_gray_ff_reg[4] ;

  design_1_auto_us_cc_df_1_rd_fwft_1 \gr1.gr1_int.rfwft 
       (.E(p_8_out),
        .empty(empty),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(p_2_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  design_1_auto_us_cc_df_1_rd_status_flags_as_2 \gras.rsts 
       (.\dest_out_bin_ff_reg[3] (rpntr_n_3),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(p_2_out),
        .rd_clk(rd_clk));
  design_1_auto_us_cc_df_1_rd_bin_cntr_3 rpntr
       (.E(p_8_out),
        .Q(Q),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\dest_out_bin_ff_reg[3] (\dest_out_bin_ff_reg[3] ),
        .\dest_out_bin_ff_reg[3]_0 (\dest_out_bin_ff_reg[3]_0 ),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .ram_empty_i_reg(rpntr_n_3),
        .rd_clk(rd_clk),
        .\src_gray_ff_reg[4] (\src_gray_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_auto_us_cc_df_1_rd_logic__parameterized0
   (ram_empty_fb_i_reg,
    Q,
    E,
    \goreg_dm.dout_i_reg[64] ,
    ram_empty_fb_i_reg_0,
    \src_gray_ff_reg[4] ,
    m_axi_awvalid,
    \dest_out_bin_ff_reg[0] ,
    m_aclk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    m_axi_awready,
    WR_PNTR_RD);
  output ram_empty_fb_i_reg;
  output [3:0]Q;
  output [0:0]E;
  output [0:0]\goreg_dm.dout_i_reg[64] ;
  output ram_empty_fb_i_reg_0;
  output [4:0]\src_gray_ff_reg[4] ;
  output m_axi_awvalid;
  input \dest_out_bin_ff_reg[0] ;
  input m_aclk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  input m_axi_awready;
  input [1:0]WR_PNTR_RD;

  wire [0:0]E;
  wire [3:0]Q;
  wire [1:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[0] ;
  wire [0:0]\goreg_dm.dout_i_reg[64] ;
  wire m_aclk;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire p_2_out;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire [4:4]rd_pntr_plus1;
  wire [4:0]\src_gray_ff_reg[4] ;

  design_1_auto_us_cc_df_1_rd_fwft \gr1.gr1_int.rfwft 
       (.E(E),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(WR_PNTR_RD[1]),
        .\goreg_dm.dout_i_reg[64] (\goreg_dm.dout_i_reg[64] ),
        .m_aclk(m_aclk),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(p_2_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg));
  design_1_auto_us_cc_df_1_rd_status_flags_as \gras.rsts 
       (.\dest_out_bin_ff_reg[0] (\dest_out_bin_ff_reg[0] ),
        .m_aclk(m_aclk),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(p_2_out));
  design_1_auto_us_cc_df_1_rd_bin_cntr rpntr
       (.E(E),
        .Q({rd_pntr_plus1,Q}),
        .WR_PNTR_RD(WR_PNTR_RD),
        .m_aclk(m_aclk),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg_0),
        .\src_gray_ff_reg[4] (\src_gray_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_auto_us_cc_df_1_rd_logic__parameterized1
   (out,
    ram_empty_fb_i_reg,
    Q,
    E,
    ram_empty_fb_i_reg_0,
    \src_gray_ff_reg[4] ,
    s_axi_bvalid,
    \dest_out_bin_ff_reg[0] ,
    s_aclk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    s_axi_bready,
    WR_PNTR_RD);
  output [1:0]out;
  output ram_empty_fb_i_reg;
  output [3:0]Q;
  output [0:0]E;
  output ram_empty_fb_i_reg_0;
  output [4:0]\src_gray_ff_reg[4] ;
  output s_axi_bvalid;
  input \dest_out_bin_ff_reg[0] ;
  input s_aclk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  input s_axi_bready;
  input [1:0]WR_PNTR_RD;

  wire [0:0]E;
  wire [3:0]Q;
  wire [1:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[0] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire [1:0]out;
  wire p_2_out;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire [4:4]rd_pntr_plus1;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [4:0]\src_gray_ff_reg[4] ;

  design_1_auto_us_cc_df_1_rd_fwft_7 \gr1.gr1_int.rfwft 
       (.E(E),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(WR_PNTR_RD[1]),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_empty_fb_i_reg_0(p_2_out),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid));
  design_1_auto_us_cc_df_1_rd_status_flags_as_8 \gras.rsts 
       (.\dest_out_bin_ff_reg[0] (\dest_out_bin_ff_reg[0] ),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(p_2_out),
        .s_aclk(s_aclk));
  design_1_auto_us_cc_df_1_rd_bin_cntr_9 rpntr
       (.E(E),
        .Q({rd_pntr_plus1,Q}),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg_0),
        .s_aclk(s_aclk),
        .\src_gray_ff_reg[4] (\src_gray_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module design_1_auto_us_cc_df_1_rd_status_flags_as
   (out,
    \dest_out_bin_ff_reg[0] ,
    m_aclk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg );
  output out;
  input \dest_out_bin_ff_reg[0] ;
  input m_aclk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;

  wire \dest_out_bin_ff_reg[0] ;
  wire m_aclk;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(\dest_out_bin_ff_reg[0] ),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(\dest_out_bin_ff_reg[0] ),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module design_1_auto_us_cc_df_1_rd_status_flags_as_2
   (out,
    \dest_out_bin_ff_reg[3] ,
    rd_clk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg );
  output out;
  input \dest_out_bin_ff_reg[3] ;
  input rd_clk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;

  wire \dest_out_bin_ff_reg[3] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire rd_clk;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_out_bin_ff_reg[3] ),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_out_bin_ff_reg[3] ),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module design_1_auto_us_cc_df_1_rd_status_flags_as_8
   (out,
    \dest_out_bin_ff_reg[0] ,
    s_aclk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg );
  output out;
  input \dest_out_bin_ff_reg[0] ;
  input s_aclk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;

  wire \dest_out_bin_ff_reg[0] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire s_aclk;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(\dest_out_bin_ff_reg[0] ),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(\dest_out_bin_ff_reg[0] ),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_auto_us_cc_df_1_reset_blk_ramfifo
   (AR,
    \syncstages_ff_reg[0] ,
    rst,
    wr_clk,
    rd_clk);
  output [0:0]AR;
  output \syncstages_ff_reg[0] ;
  input rst;
  input wr_clk;
  input rd_clk;

  wire [0:0]AR;
  wire dest_out;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ;
  wire rd_clk;
  wire [1:0]rd_rst_wr_ext;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire sckt_rd_rst_wr;
  wire \syncstages_ff_reg[0] ;
  wire wr_clk;
  wire [1:0]wr_rst_rd_ext;

  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_async_rst__3 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst 
       (.dest_arst(rst_rd_reg2),
        .dest_clk(rd_clk),
        .src_arst(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1 
       (.I0(\syncstages_ff_reg[0] ),
        .I1(wr_rst_rd_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\syncstages_ff_reg[0] ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1 
       (.I0(AR),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(AR));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(dest_out),
        .Q(wr_rst_rd_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(wr_rst_rd_ext[0]),
        .Q(wr_rst_rd_ext[1]));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_single__3 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(wr_clk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(rd_clk),
        .src_in(\syncstages_ff_reg[0] ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_single__2 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(rd_clk),
        .dest_out(dest_out),
        .src_clk(wr_clk),
        .src_in(AR));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_async_rst__2 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(wr_clk),
        .src_arst(rst));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_auto_us_cc_df_1_reset_blk_ramfifo__parameterized0
   (AR,
    \syncstages_ff_reg[0] ,
    out,
    ram_full_i_reg,
    m_aclk,
    s_aclk,
    s_aresetn);
  output [0:0]AR;
  output \syncstages_ff_reg[0] ;
  output out;
  output ram_full_i_reg;
  input m_aclk;
  input s_aclk;
  input s_aresetn;

  wire [0:0]AR;
  wire dest_out;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ;
  wire inverted_reset;
  wire m_aclk;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0 ;
  wire [3:0]rd_rst_wr_ext;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_aclk;
  wire s_aresetn;
  wire sckt_rd_rst_wr;
  wire \syncstages_ff_reg[0] ;
  wire [1:0]wr_rst_rd_ext;

  assign out = rst_d2;
  assign ram_full_i_reg = rst_d3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1 
       (.I0(rst_d2),
        .I1(AR),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_async_rst \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst 
       (.dest_arst(rst_rd_reg2),
        .dest_clk(s_aclk),
        .src_arst(inverted_reset));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1 
       (.I0(\syncstages_ff_reg[0] ),
        .I1(wr_rst_rd_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\syncstages_ff_reg[0] ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1 
       (.I0(AR),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(AR));
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0 ),
        .I1(rd_rst_wr_ext[1]),
        .I2(rd_rst_wr_ext[0]),
        .I3(rd_rst_wr_ext[3]),
        .I4(rd_rst_wr_ext[2]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(dest_out),
        .Q(wr_rst_rd_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(wr_rst_rd_ext[0]),
        .Q(wr_rst_rd_ext[1]));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_single \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(m_aclk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(s_aclk),
        .src_in(\syncstages_ff_reg[0] ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_single__6 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(s_aclk),
        .dest_out(dest_out),
        .src_clk(m_aclk),
        .src_in(AR));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_async_rst__6 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(m_aclk),
        .src_arst(inverted_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst_i_1 
       (.I0(s_aresetn),
        .O(inverted_reset));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_auto_us_cc_df_1_reset_blk_ramfifo__parameterized0__xdcDup__1
   (AR,
    \syncstages_ff_reg[0] ,
    out,
    ram_full_i_reg,
    s_aclk,
    m_aclk,
    s_aresetn);
  output [0:0]AR;
  output \syncstages_ff_reg[0] ;
  output out;
  output ram_full_i_reg;
  input s_aclk;
  input m_aclk;
  input s_aresetn;

  wire [0:0]AR;
  wire dest_out;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ;
  wire inverted_reset;
  wire m_aclk;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0 ;
  wire [3:0]rd_rst_wr_ext;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_aclk;
  wire s_aresetn;
  wire sckt_rd_rst_wr;
  wire \syncstages_ff_reg[0] ;
  wire [1:0]wr_rst_rd_ext;

  assign out = rst_d2;
  assign ram_full_i_reg = rst_d3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1 
       (.I0(rst_d2),
        .I1(AR),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_async_rst__5 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst 
       (.dest_arst(rst_rd_reg2),
        .dest_clk(m_aclk),
        .src_arst(inverted_reset));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1 
       (.I0(\syncstages_ff_reg[0] ),
        .I1(wr_rst_rd_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\syncstages_ff_reg[0] ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1 
       (.I0(AR),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(AR));
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0 ),
        .I1(rd_rst_wr_ext[1]),
        .I2(rd_rst_wr_ext[0]),
        .I3(rd_rst_wr_ext[3]),
        .I4(rd_rst_wr_ext[2]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(dest_out),
        .Q(wr_rst_rd_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(wr_rst_rd_ext[0]),
        .Q(wr_rst_rd_ext[1]));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_single__5 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(s_aclk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(m_aclk),
        .src_in(\syncstages_ff_reg[0] ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_single__4 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(m_aclk),
        .dest_out(dest_out),
        .src_clk(s_aclk),
        .src_in(AR));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_us_cc_df_1_xpm_cdc_async_rst__4 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(s_aclk),
        .src_arst(inverted_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst_i_1 
       (.I0(s_aresetn),
        .O(inverted_reset));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_auto_us_cc_df_1_wr_bin_cntr
   (ram_full_i_reg,
    Q,
    \gic0.gc0.count_d2_reg[1]_0 ,
    \src_gray_ff_reg[4] ,
    \dest_out_bin_ff_reg[0] ,
    E,
    \dest_out_bin_ff_reg[0]_0 ,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    RD_PNTR_WR,
    s_aclk,
    AR);
  output ram_full_i_reg;
  output [1:0]Q;
  output [1:0]\gic0.gc0.count_d2_reg[1]_0 ;
  output [4:0]\src_gray_ff_reg[4] ;
  input \dest_out_bin_ff_reg[0] ;
  input [0:0]E;
  input \dest_out_bin_ff_reg[0]_0 ;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input [2:0]RD_PNTR_WR;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[0] ;
  wire \dest_out_bin_ff_reg[0]_0 ;
  wire [1:0]\gic0.gc0.count_d2_reg[1]_0 ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire [4:2]p_14_out;
  wire [4:0]plusOp;
  wire ram_full_i_i_2_n_0;
  wire ram_full_i_i_5_n_0;
  wire ram_full_i_reg;
  wire s_aclk;
  wire [4:0]\src_gray_ff_reg[4] ;
  wire [4:2]wr_pntr_plus2;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(wr_pntr_plus2[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wr_pntr_plus2[2]),
        .I3(wr_pntr_plus2[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[4]_i_1 
       (.I0(wr_pntr_plus2[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(wr_pntr_plus2[3]),
        .I4(wr_pntr_plus2[4]),
        .O(plusOp[4]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[0]),
        .PRE(AR),
        .Q(\gic0.gc0.count_d2_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(\gic0.gc0.count_d2_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[2]),
        .Q(p_14_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[3]),
        .Q(p_14_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[4]),
        .Q(p_14_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d2_reg[1]_0 [0]),
        .Q(\src_gray_ff_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d2_reg[1]_0 [1]),
        .Q(\src_gray_ff_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_14_out[2]),
        .Q(\src_gray_ff_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_14_out[3]),
        .Q(\src_gray_ff_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_14_out[4]),
        .Q(\src_gray_ff_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[1]),
        .PRE(AR),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(wr_pntr_plus2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[3]),
        .Q(wr_pntr_plus2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[4]),
        .Q(wr_pntr_plus2[4]));
  LUT6 #(
    .INIT(64'h00000000FF808080)) 
    ram_full_i_i_1
       (.I0(ram_full_i_i_2_n_0),
        .I1(\dest_out_bin_ff_reg[0] ),
        .I2(E),
        .I3(\dest_out_bin_ff_reg[0]_0 ),
        .I4(ram_full_i_i_5_n_0),
        .I5(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .O(ram_full_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_2
       (.I0(wr_pntr_plus2[3]),
        .I1(RD_PNTR_WR[1]),
        .I2(wr_pntr_plus2[2]),
        .I3(RD_PNTR_WR[0]),
        .I4(RD_PNTR_WR[2]),
        .I5(wr_pntr_plus2[4]),
        .O(ram_full_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_5
       (.I0(p_14_out[3]),
        .I1(RD_PNTR_WR[1]),
        .I2(p_14_out[2]),
        .I3(RD_PNTR_WR[0]),
        .I4(RD_PNTR_WR[2]),
        .I5(p_14_out[4]),
        .O(ram_full_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_auto_us_cc_df_1_wr_bin_cntr_0
   (ram_full_i_reg,
    Q,
    \gic0.gc0.count_d2_reg[1]_0 ,
    \src_gray_ff_reg[4] ,
    \dest_out_bin_ff_reg[0] ,
    wr_en,
    out,
    \dest_out_bin_ff_reg[0]_0 ,
    RD_PNTR_WR,
    E,
    wr_clk,
    AR);
  output ram_full_i_reg;
  output [1:0]Q;
  output [1:0]\gic0.gc0.count_d2_reg[1]_0 ;
  output [4:0]\src_gray_ff_reg[4] ;
  input \dest_out_bin_ff_reg[0] ;
  input wr_en;
  input out;
  input \dest_out_bin_ff_reg[0]_0 ;
  input [2:0]RD_PNTR_WR;
  input [0:0]E;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[0] ;
  wire \dest_out_bin_ff_reg[0]_0 ;
  wire [1:0]\gic0.gc0.count_d2_reg[1]_0 ;
  wire out;
  wire [4:2]p_14_out;
  wire [4:0]plusOp__0;
  wire ram_full_i_i_2_n_0;
  wire ram_full_i_i_5_n_0;
  wire ram_full_i_reg;
  wire [4:0]\src_gray_ff_reg[4] ;
  wire wr_clk;
  wire wr_en;
  wire [4:2]wr_pntr_plus2;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(wr_pntr_plus2[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wr_pntr_plus2[2]),
        .I3(wr_pntr_plus2[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[4]_i_1 
       (.I0(wr_pntr_plus2[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(wr_pntr_plus2[3]),
        .I4(wr_pntr_plus2[4]),
        .O(plusOp__0[4]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[0]),
        .PRE(AR),
        .Q(\gic0.gc0.count_d2_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(\gic0.gc0.count_d2_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[2]),
        .Q(p_14_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[3]),
        .Q(p_14_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[4]),
        .Q(p_14_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d2_reg[1]_0 [0]),
        .Q(\src_gray_ff_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d2_reg[1]_0 [1]),
        .Q(\src_gray_ff_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_14_out[2]),
        .Q(\src_gray_ff_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_14_out[3]),
        .Q(\src_gray_ff_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_14_out[4]),
        .Q(\src_gray_ff_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[1]),
        .PRE(AR),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(wr_pntr_plus2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(wr_pntr_plus2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[4]),
        .Q(wr_pntr_plus2[4]));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    ram_full_i_i_1
       (.I0(ram_full_i_i_2_n_0),
        .I1(\dest_out_bin_ff_reg[0] ),
        .I2(wr_en),
        .I3(out),
        .I4(\dest_out_bin_ff_reg[0]_0 ),
        .I5(ram_full_i_i_5_n_0),
        .O(ram_full_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_2
       (.I0(p_14_out[3]),
        .I1(RD_PNTR_WR[1]),
        .I2(p_14_out[2]),
        .I3(RD_PNTR_WR[0]),
        .I4(RD_PNTR_WR[2]),
        .I5(p_14_out[4]),
        .O(ram_full_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_5
       (.I0(wr_pntr_plus2[3]),
        .I1(RD_PNTR_WR[1]),
        .I2(wr_pntr_plus2[2]),
        .I3(RD_PNTR_WR[0]),
        .I4(RD_PNTR_WR[2]),
        .I5(wr_pntr_plus2[4]),
        .O(ram_full_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_auto_us_cc_df_1_wr_bin_cntr_6
   (ram_full_i_reg,
    Q,
    \gic0.gc0.count_d2_reg[1]_0 ,
    \src_gray_ff_reg[4] ,
    \dest_out_bin_ff_reg[0] ,
    E,
    \dest_out_bin_ff_reg[0]_0 ,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    RD_PNTR_WR,
    m_aclk,
    AR);
  output ram_full_i_reg;
  output [1:0]Q;
  output [1:0]\gic0.gc0.count_d2_reg[1]_0 ;
  output [4:0]\src_gray_ff_reg[4] ;
  input \dest_out_bin_ff_reg[0] ;
  input [0:0]E;
  input \dest_out_bin_ff_reg[0]_0 ;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input [2:0]RD_PNTR_WR;
  input m_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[0] ;
  wire \dest_out_bin_ff_reg[0]_0 ;
  wire [1:0]\gic0.gc0.count_d2_reg[1]_0 ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire m_aclk;
  wire [4:2]p_14_out;
  wire [4:0]plusOp;
  wire ram_full_i_i_2_n_0;
  wire ram_full_i_i_5_n_0;
  wire ram_full_i_reg;
  wire [4:0]\src_gray_ff_reg[4] ;
  wire [4:2]wr_pntr_plus2;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(wr_pntr_plus2[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wr_pntr_plus2[2]),
        .I3(wr_pntr_plus2[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[4]_i_1 
       (.I0(wr_pntr_plus2[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(wr_pntr_plus2[3]),
        .I4(wr_pntr_plus2[4]),
        .O(plusOp[4]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(Q[0]),
        .PRE(AR),
        .Q(\gic0.gc0.count_d2_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(\gic0.gc0.count_d2_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[2]),
        .Q(p_14_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[3]),
        .Q(p_14_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[4] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[4]),
        .Q(p_14_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d2_reg[1]_0 [0]),
        .Q(\src_gray_ff_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d2_reg[1]_0 [1]),
        .Q(\src_gray_ff_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_14_out[2]),
        .Q(\src_gray_ff_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_14_out[3]),
        .Q(\src_gray_ff_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_14_out[4]),
        .Q(\src_gray_ff_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .D(plusOp[1]),
        .PRE(AR),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(wr_pntr_plus2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[3]),
        .Q(wr_pntr_plus2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[4] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[4]),
        .Q(wr_pntr_plus2[4]));
  LUT6 #(
    .INIT(64'h00000000FF808080)) 
    ram_full_i_i_1
       (.I0(ram_full_i_i_2_n_0),
        .I1(\dest_out_bin_ff_reg[0] ),
        .I2(E),
        .I3(\dest_out_bin_ff_reg[0]_0 ),
        .I4(ram_full_i_i_5_n_0),
        .I5(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .O(ram_full_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_2
       (.I0(wr_pntr_plus2[3]),
        .I1(RD_PNTR_WR[1]),
        .I2(wr_pntr_plus2[2]),
        .I3(RD_PNTR_WR[0]),
        .I4(RD_PNTR_WR[2]),
        .I5(wr_pntr_plus2[4]),
        .O(ram_full_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_5
       (.I0(p_14_out[3]),
        .I1(RD_PNTR_WR[1]),
        .I2(p_14_out[2]),
        .I3(RD_PNTR_WR[0]),
        .I4(RD_PNTR_WR[2]),
        .I5(p_14_out[4]),
        .O(ram_full_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_auto_us_cc_df_1_wr_logic
   (Q,
    \gic0.gc0.count_d2_reg[1] ,
    \src_gray_ff_reg[4] ,
    wr_clk,
    AR,
    \dest_out_bin_ff_reg[0] ,
    wr_en,
    \dest_out_bin_ff_reg[0]_0 ,
    RD_PNTR_WR);
  output [1:0]Q;
  output [1:0]\gic0.gc0.count_d2_reg[1] ;
  output [4:0]\src_gray_ff_reg[4] ;
  input wr_clk;
  input [0:0]AR;
  input \dest_out_bin_ff_reg[0] ;
  input wr_en;
  input \dest_out_bin_ff_reg[0]_0 ;
  input [2:0]RD_PNTR_WR;

  wire [0:0]AR;
  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[0] ;
  wire \dest_out_bin_ff_reg[0]_0 ;
  wire [1:0]\gic0.gc0.count_d2_reg[1] ;
  wire \gwas.wsts_n_0 ;
  wire p_20_out;
  wire [4:0]\src_gray_ff_reg[4] ;
  wire wpntr_n_0;
  wire wr_clk;
  wire wr_en;

  design_1_auto_us_cc_df_1_wr_status_flags_as \gwas.wsts 
       (.AR(AR),
        .E(p_20_out),
        .out(\gwas.wsts_n_0 ),
        .ram_full_fb_i_reg_0(wpntr_n_0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  design_1_auto_us_cc_df_1_wr_bin_cntr_0 wpntr
       (.AR(AR),
        .E(p_20_out),
        .Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\dest_out_bin_ff_reg[0] (\dest_out_bin_ff_reg[0] ),
        .\dest_out_bin_ff_reg[0]_0 (\dest_out_bin_ff_reg[0]_0 ),
        .\gic0.gc0.count_d2_reg[1]_0 (\gic0.gc0.count_d2_reg[1] ),
        .out(\gwas.wsts_n_0 ),
        .ram_full_i_reg(wpntr_n_0),
        .\src_gray_ff_reg[4] (\src_gray_ff_reg[4] ),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_auto_us_cc_df_1_wr_logic__parameterized0
   (E,
    Q,
    \gic0.gc0.count_d2_reg[1] ,
    s_axi_awready,
    \src_gray_ff_reg[4] ,
    s_aclk,
    out,
    \dest_out_bin_ff_reg[0] ,
    \dest_out_bin_ff_reg[0]_0 ,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    s_axi_awvalid,
    RD_PNTR_WR,
    AR);
  output [0:0]E;
  output [1:0]Q;
  output [1:0]\gic0.gc0.count_d2_reg[1] ;
  output s_axi_awready;
  output [4:0]\src_gray_ff_reg[4] ;
  input s_aclk;
  input out;
  input \dest_out_bin_ff_reg[0] ;
  input \dest_out_bin_ff_reg[0]_0 ;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input s_axi_awvalid;
  input [2:0]RD_PNTR_WR;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[0] ;
  wire \dest_out_bin_ff_reg[0]_0 ;
  wire [1:0]\gic0.gc0.count_d2_reg[1] ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire out;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [4:0]\src_gray_ff_reg[4] ;
  wire wpntr_n_0;

  design_1_auto_us_cc_df_1_wr_status_flags_as__parameterized0 \gwas.wsts 
       (.E(E),
        .\grstd1.grst_full.grst_f.rst_d3_reg (wpntr_n_0),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  design_1_auto_us_cc_df_1_wr_bin_cntr wpntr
       (.AR(AR),
        .E(E),
        .Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\dest_out_bin_ff_reg[0] (\dest_out_bin_ff_reg[0] ),
        .\dest_out_bin_ff_reg[0]_0 (\dest_out_bin_ff_reg[0]_0 ),
        .\gic0.gc0.count_d2_reg[1]_0 (\gic0.gc0.count_d2_reg[1] ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .ram_full_i_reg(wpntr_n_0),
        .s_aclk(s_aclk),
        .\src_gray_ff_reg[4] (\src_gray_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_auto_us_cc_df_1_wr_logic__parameterized0_4
   (E,
    Q,
    \gic0.gc0.count_d2_reg[1] ,
    m_axi_bready,
    \src_gray_ff_reg[4] ,
    m_aclk,
    out,
    \dest_out_bin_ff_reg[0] ,
    \dest_out_bin_ff_reg[0]_0 ,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    m_axi_bvalid,
    RD_PNTR_WR,
    AR);
  output [0:0]E;
  output [1:0]Q;
  output [1:0]\gic0.gc0.count_d2_reg[1] ;
  output m_axi_bready;
  output [4:0]\src_gray_ff_reg[4] ;
  input m_aclk;
  input out;
  input \dest_out_bin_ff_reg[0] ;
  input \dest_out_bin_ff_reg[0]_0 ;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input m_axi_bvalid;
  input [2:0]RD_PNTR_WR;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[0] ;
  wire \dest_out_bin_ff_reg[0]_0 ;
  wire [1:0]\gic0.gc0.count_d2_reg[1] ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire m_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire out;
  wire [4:0]\src_gray_ff_reg[4] ;
  wire wpntr_n_0;

  design_1_auto_us_cc_df_1_wr_status_flags_as__parameterized0_5 \gwas.wsts 
       (.E(E),
        .\grstd1.grst_full.grst_f.rst_d3_reg (wpntr_n_0),
        .m_aclk(m_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .out(out));
  design_1_auto_us_cc_df_1_wr_bin_cntr_6 wpntr
       (.AR(AR),
        .E(E),
        .Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\dest_out_bin_ff_reg[0] (\dest_out_bin_ff_reg[0] ),
        .\dest_out_bin_ff_reg[0]_0 (\dest_out_bin_ff_reg[0]_0 ),
        .\gic0.gc0.count_d2_reg[1]_0 (\gic0.gc0.count_d2_reg[1] ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .m_aclk(m_aclk),
        .ram_full_i_reg(wpntr_n_0),
        .\src_gray_ff_reg[4] (\src_gray_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module design_1_auto_us_cc_df_1_wr_status_flags_as
   (out,
    E,
    ram_full_fb_i_reg_0,
    wr_clk,
    AR,
    wr_en);
  output out;
  output [0:0]E;
  input ram_full_fb_i_reg_0;
  input wr_clk;
  input [0:0]AR;
  input wr_en;

  wire [0:0]AR;
  wire [0:0]E;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_full_i;
  wire wr_clk;
  wire wr_en;

  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[4]_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(ram_full_fb_i_reg_0),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(ram_full_fb_i_reg_0),
        .Q(ram_full_i));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module design_1_auto_us_cc_df_1_wr_status_flags_as__parameterized0
   (E,
    s_axi_awready,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    s_aclk,
    out,
    s_axi_awvalid);
  output [0:0]E;
  output s_axi_awready;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input s_aclk;
  input out;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire out;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;

  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[4]_i_1 
       (.I0(s_axi_awvalid),
        .I1(ram_full_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .PRE(out),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .PRE(out),
        .Q(ram_full_i));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_INST_0
       (.I0(ram_full_i),
        .O(s_axi_awready));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module design_1_auto_us_cc_df_1_wr_status_flags_as__parameterized0_5
   (E,
    m_axi_bready,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    m_aclk,
    out,
    m_axi_bvalid);
  output [0:0]E;
  output m_axi_bready;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input m_aclk;
  input out;
  input m_axi_bvalid;

  wire [0:0]E;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire m_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire out;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;

  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[4]_i_1 
       (.I0(m_axi_bvalid),
        .I1(ram_full_fb_i),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_bready_INST_0
       (.I0(ram_full_i),
        .O(m_axi_bready));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .PRE(out),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .PRE(out),
        .Q(ram_full_i));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
