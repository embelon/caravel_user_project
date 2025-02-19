module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire zero_;
 wire \openram_addr0[0] ;
 wire \openram_addr0[1] ;
 wire \openram_addr0[2] ;
 wire \openram_addr0[3] ;
 wire \openram_addr0[4] ;
 wire \openram_addr0[5] ;
 wire \openram_addr0[6] ;
 wire \openram_addr0[7] ;
 wire openram_clk0;
 wire openram_csb0;
 wire \openram_din0[0] ;
 wire \openram_din0[10] ;
 wire \openram_din0[11] ;
 wire \openram_din0[12] ;
 wire \openram_din0[13] ;
 wire \openram_din0[14] ;
 wire \openram_din0[15] ;
 wire \openram_din0[16] ;
 wire \openram_din0[17] ;
 wire \openram_din0[18] ;
 wire \openram_din0[19] ;
 wire \openram_din0[1] ;
 wire \openram_din0[20] ;
 wire \openram_din0[21] ;
 wire \openram_din0[22] ;
 wire \openram_din0[23] ;
 wire \openram_din0[24] ;
 wire \openram_din0[25] ;
 wire \openram_din0[26] ;
 wire \openram_din0[27] ;
 wire \openram_din0[28] ;
 wire \openram_din0[29] ;
 wire \openram_din0[2] ;
 wire \openram_din0[30] ;
 wire \openram_din0[31] ;
 wire \openram_din0[3] ;
 wire \openram_din0[4] ;
 wire \openram_din0[5] ;
 wire \openram_din0[6] ;
 wire \openram_din0[7] ;
 wire \openram_din0[8] ;
 wire \openram_din0[9] ;
 wire \openram_dout0[0] ;
 wire \openram_dout0[10] ;
 wire \openram_dout0[11] ;
 wire \openram_dout0[12] ;
 wire \openram_dout0[13] ;
 wire \openram_dout0[14] ;
 wire \openram_dout0[15] ;
 wire \openram_dout0[16] ;
 wire \openram_dout0[17] ;
 wire \openram_dout0[18] ;
 wire \openram_dout0[19] ;
 wire \openram_dout0[1] ;
 wire \openram_dout0[20] ;
 wire \openram_dout0[21] ;
 wire \openram_dout0[22] ;
 wire \openram_dout0[23] ;
 wire \openram_dout0[24] ;
 wire \openram_dout0[25] ;
 wire \openram_dout0[26] ;
 wire \openram_dout0[27] ;
 wire \openram_dout0[28] ;
 wire \openram_dout0[29] ;
 wire \openram_dout0[2] ;
 wire \openram_dout0[30] ;
 wire \openram_dout0[31] ;
 wire \openram_dout0[3] ;
 wire \openram_dout0[4] ;
 wire \openram_dout0[5] ;
 wire \openram_dout0[6] ;
 wire \openram_dout0[7] ;
 wire \openram_dout0[8] ;
 wire \openram_dout0[9] ;
 wire openram_web0;
 wire \openram_wmask0[0] ;
 wire \openram_wmask0[1] ;
 wire \openram_wmask0[2] ;
 wire \openram_wmask0[3] ;
 wire wbs_hr_ack;
 wire wbs_hr_cyc;
 wire \wbs_hr_dat_i[0] ;
 wire \wbs_hr_dat_i[10] ;
 wire \wbs_hr_dat_i[11] ;
 wire \wbs_hr_dat_i[12] ;
 wire \wbs_hr_dat_i[13] ;
 wire \wbs_hr_dat_i[14] ;
 wire \wbs_hr_dat_i[15] ;
 wire \wbs_hr_dat_i[16] ;
 wire \wbs_hr_dat_i[17] ;
 wire \wbs_hr_dat_i[18] ;
 wire \wbs_hr_dat_i[19] ;
 wire \wbs_hr_dat_i[1] ;
 wire \wbs_hr_dat_i[20] ;
 wire \wbs_hr_dat_i[21] ;
 wire \wbs_hr_dat_i[22] ;
 wire \wbs_hr_dat_i[23] ;
 wire \wbs_hr_dat_i[24] ;
 wire \wbs_hr_dat_i[25] ;
 wire \wbs_hr_dat_i[26] ;
 wire \wbs_hr_dat_i[27] ;
 wire \wbs_hr_dat_i[28] ;
 wire \wbs_hr_dat_i[29] ;
 wire \wbs_hr_dat_i[2] ;
 wire \wbs_hr_dat_i[30] ;
 wire \wbs_hr_dat_i[31] ;
 wire \wbs_hr_dat_i[3] ;
 wire \wbs_hr_dat_i[4] ;
 wire \wbs_hr_dat_i[5] ;
 wire \wbs_hr_dat_i[6] ;
 wire \wbs_hr_dat_i[7] ;
 wire \wbs_hr_dat_i[8] ;
 wire \wbs_hr_dat_i[9] ;
 wire \wbs_hr_dat_o[0] ;
 wire \wbs_hr_dat_o[10] ;
 wire \wbs_hr_dat_o[11] ;
 wire \wbs_hr_dat_o[12] ;
 wire \wbs_hr_dat_o[13] ;
 wire \wbs_hr_dat_o[14] ;
 wire \wbs_hr_dat_o[15] ;
 wire \wbs_hr_dat_o[16] ;
 wire \wbs_hr_dat_o[17] ;
 wire \wbs_hr_dat_o[18] ;
 wire \wbs_hr_dat_o[19] ;
 wire \wbs_hr_dat_o[1] ;
 wire \wbs_hr_dat_o[20] ;
 wire \wbs_hr_dat_o[21] ;
 wire \wbs_hr_dat_o[22] ;
 wire \wbs_hr_dat_o[23] ;
 wire \wbs_hr_dat_o[24] ;
 wire \wbs_hr_dat_o[25] ;
 wire \wbs_hr_dat_o[26] ;
 wire \wbs_hr_dat_o[27] ;
 wire \wbs_hr_dat_o[28] ;
 wire \wbs_hr_dat_o[29] ;
 wire \wbs_hr_dat_o[2] ;
 wire \wbs_hr_dat_o[30] ;
 wire \wbs_hr_dat_o[31] ;
 wire \wbs_hr_dat_o[3] ;
 wire \wbs_hr_dat_o[4] ;
 wire \wbs_hr_dat_o[5] ;
 wire \wbs_hr_dat_o[6] ;
 wire \wbs_hr_dat_o[7] ;
 wire \wbs_hr_dat_o[8] ;
 wire \wbs_hr_dat_o[9] ;
 wire \wbs_hr_sel[0] ;
 wire \wbs_hr_sel[1] ;
 wire \wbs_hr_sel[2] ;
 wire \wbs_hr_sel[3] ;
 wire wbs_hr_stb;
 wire wbs_hr_we;
 wire wbs_or_ack;
 wire wbs_or_cyc;
 wire \wbs_or_dat_i[0] ;
 wire \wbs_or_dat_i[10] ;
 wire \wbs_or_dat_i[11] ;
 wire \wbs_or_dat_i[12] ;
 wire \wbs_or_dat_i[13] ;
 wire \wbs_or_dat_i[14] ;
 wire \wbs_or_dat_i[15] ;
 wire \wbs_or_dat_i[16] ;
 wire \wbs_or_dat_i[17] ;
 wire \wbs_or_dat_i[18] ;
 wire \wbs_or_dat_i[19] ;
 wire \wbs_or_dat_i[1] ;
 wire \wbs_or_dat_i[20] ;
 wire \wbs_or_dat_i[21] ;
 wire \wbs_or_dat_i[22] ;
 wire \wbs_or_dat_i[23] ;
 wire \wbs_or_dat_i[24] ;
 wire \wbs_or_dat_i[25] ;
 wire \wbs_or_dat_i[26] ;
 wire \wbs_or_dat_i[27] ;
 wire \wbs_or_dat_i[28] ;
 wire \wbs_or_dat_i[29] ;
 wire \wbs_or_dat_i[2] ;
 wire \wbs_or_dat_i[30] ;
 wire \wbs_or_dat_i[31] ;
 wire \wbs_or_dat_i[3] ;
 wire \wbs_or_dat_i[4] ;
 wire \wbs_or_dat_i[5] ;
 wire \wbs_or_dat_i[6] ;
 wire \wbs_or_dat_i[7] ;
 wire \wbs_or_dat_i[8] ;
 wire \wbs_or_dat_i[9] ;
 wire \wbs_or_dat_o[0] ;
 wire \wbs_or_dat_o[10] ;
 wire \wbs_or_dat_o[11] ;
 wire \wbs_or_dat_o[12] ;
 wire \wbs_or_dat_o[13] ;
 wire \wbs_or_dat_o[14] ;
 wire \wbs_or_dat_o[15] ;
 wire \wbs_or_dat_o[16] ;
 wire \wbs_or_dat_o[17] ;
 wire \wbs_or_dat_o[18] ;
 wire \wbs_or_dat_o[19] ;
 wire \wbs_or_dat_o[1] ;
 wire \wbs_or_dat_o[20] ;
 wire \wbs_or_dat_o[21] ;
 wire \wbs_or_dat_o[22] ;
 wire \wbs_or_dat_o[23] ;
 wire \wbs_or_dat_o[24] ;
 wire \wbs_or_dat_o[25] ;
 wire \wbs_or_dat_o[26] ;
 wire \wbs_or_dat_o[27] ;
 wire \wbs_or_dat_o[28] ;
 wire \wbs_or_dat_o[29] ;
 wire \wbs_or_dat_o[2] ;
 wire \wbs_or_dat_o[30] ;
 wire \wbs_or_dat_o[31] ;
 wire \wbs_or_dat_o[3] ;
 wire \wbs_or_dat_o[4] ;
 wire \wbs_or_dat_o[5] ;
 wire \wbs_or_dat_o[6] ;
 wire \wbs_or_dat_o[7] ;
 wire \wbs_or_dat_o[8] ;
 wire \wbs_or_dat_o[9] ;
 wire \wbs_or_sel[0] ;
 wire \wbs_or_sel[1] ;
 wire \wbs_or_sel[2] ;
 wire \wbs_or_sel[3] ;
 wire wbs_or_stb;
 wire wbs_or_we;

 sky130_sram_1kbyte_1rw1r_32x256_8 openram_1kB (.csb0(openram_csb0),
    .web0(openram_web0),
    .clk0(openram_clk0),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\openram_addr0[7] ,
    \openram_addr0[6] ,
    \openram_addr0[5] ,
    \openram_addr0[4] ,
    \openram_addr0[3] ,
    \openram_addr0[2] ,
    \openram_addr0[1] ,
    \openram_addr0[0] }),
    .addr1({_NC1,
    _NC2,
    _NC3,
    _NC4,
    _NC5,
    _NC6,
    _NC7,
    _NC8}),
    .din0({\openram_din0[31] ,
    \openram_din0[30] ,
    \openram_din0[29] ,
    \openram_din0[28] ,
    \openram_din0[27] ,
    \openram_din0[26] ,
    \openram_din0[25] ,
    \openram_din0[24] ,
    \openram_din0[23] ,
    \openram_din0[22] ,
    \openram_din0[21] ,
    \openram_din0[20] ,
    \openram_din0[19] ,
    \openram_din0[18] ,
    \openram_din0[17] ,
    \openram_din0[16] ,
    \openram_din0[15] ,
    \openram_din0[14] ,
    \openram_din0[13] ,
    \openram_din0[12] ,
    \openram_din0[11] ,
    \openram_din0[10] ,
    \openram_din0[9] ,
    \openram_din0[8] ,
    \openram_din0[7] ,
    \openram_din0[6] ,
    \openram_din0[5] ,
    \openram_din0[4] ,
    \openram_din0[3] ,
    \openram_din0[2] ,
    \openram_din0[1] ,
    \openram_din0[0] }),
    .dout0({\openram_dout0[31] ,
    \openram_dout0[30] ,
    \openram_dout0[29] ,
    \openram_dout0[28] ,
    \openram_dout0[27] ,
    \openram_dout0[26] ,
    \openram_dout0[25] ,
    \openram_dout0[24] ,
    \openram_dout0[23] ,
    \openram_dout0[22] ,
    \openram_dout0[21] ,
    \openram_dout0[20] ,
    \openram_dout0[19] ,
    \openram_dout0[18] ,
    \openram_dout0[17] ,
    \openram_dout0[16] ,
    \openram_dout0[15] ,
    \openram_dout0[14] ,
    \openram_dout0[13] ,
    \openram_dout0[12] ,
    \openram_dout0[11] ,
    \openram_dout0[10] ,
    \openram_dout0[9] ,
    \openram_dout0[8] ,
    \openram_dout0[7] ,
    \openram_dout0[6] ,
    \openram_dout0[5] ,
    \openram_dout0[4] ,
    \openram_dout0[3] ,
    \openram_dout0[2] ,
    \openram_dout0[1] ,
    \openram_dout0[0] }),
    .dout1({_NC9,
    _NC10,
    _NC11,
    _NC12,
    _NC13,
    _NC14,
    _NC15,
    _NC16,
    _NC17,
    _NC18,
    _NC19,
    _NC20,
    _NC21,
    _NC22,
    _NC23,
    _NC24,
    _NC25,
    _NC26,
    _NC27,
    _NC28,
    _NC29,
    _NC30,
    _NC31,
    _NC32,
    _NC33,
    _NC34,
    _NC35,
    _NC36,
    _NC37,
    _NC38,
    _NC39,
    _NC40}),
    .wmask0({\openram_wmask0[3] ,
    \openram_wmask0[2] ,
    \openram_wmask0[1] ,
    \openram_wmask0[0] }));
 wb_ram_bus_mux wb_bus_mux (.vccd1(vccd1),
    .vssd1(vssd1),
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .wbs_hr_ack_i(wbs_hr_ack),
    .wbs_hr_cyc_o(wbs_hr_cyc),
    .wbs_hr_stb_o(wbs_hr_stb),
    .wbs_hr_we_o(wbs_hr_we),
    .wbs_or_ack_i(wbs_or_ack),
    .wbs_or_cyc_o(wbs_or_cyc),
    .wbs_or_stb_o(wbs_or_stb),
    .wbs_or_we_o(wbs_or_we),
    .wbs_ufp_ack_o(wbs_ack_o),
    .wbs_ufp_cyc_i(wbs_cyc_i),
    .wbs_ufp_stb_i(wbs_stb_i),
    .wbs_ufp_we_i(wbs_we_i),
    .wbs_hr_dat_i({\wbs_hr_dat_i[31] ,
    \wbs_hr_dat_i[30] ,
    \wbs_hr_dat_i[29] ,
    \wbs_hr_dat_i[28] ,
    \wbs_hr_dat_i[27] ,
    \wbs_hr_dat_i[26] ,
    \wbs_hr_dat_i[25] ,
    \wbs_hr_dat_i[24] ,
    \wbs_hr_dat_i[23] ,
    \wbs_hr_dat_i[22] ,
    \wbs_hr_dat_i[21] ,
    \wbs_hr_dat_i[20] ,
    \wbs_hr_dat_i[19] ,
    \wbs_hr_dat_i[18] ,
    \wbs_hr_dat_i[17] ,
    \wbs_hr_dat_i[16] ,
    \wbs_hr_dat_i[15] ,
    \wbs_hr_dat_i[14] ,
    \wbs_hr_dat_i[13] ,
    \wbs_hr_dat_i[12] ,
    \wbs_hr_dat_i[11] ,
    \wbs_hr_dat_i[10] ,
    \wbs_hr_dat_i[9] ,
    \wbs_hr_dat_i[8] ,
    \wbs_hr_dat_i[7] ,
    \wbs_hr_dat_i[6] ,
    \wbs_hr_dat_i[5] ,
    \wbs_hr_dat_i[4] ,
    \wbs_hr_dat_i[3] ,
    \wbs_hr_dat_i[2] ,
    \wbs_hr_dat_i[1] ,
    \wbs_hr_dat_i[0] }),
    .wbs_hr_dat_o({\wbs_hr_dat_o[31] ,
    \wbs_hr_dat_o[30] ,
    \wbs_hr_dat_o[29] ,
    \wbs_hr_dat_o[28] ,
    \wbs_hr_dat_o[27] ,
    \wbs_hr_dat_o[26] ,
    \wbs_hr_dat_o[25] ,
    \wbs_hr_dat_o[24] ,
    \wbs_hr_dat_o[23] ,
    \wbs_hr_dat_o[22] ,
    \wbs_hr_dat_o[21] ,
    \wbs_hr_dat_o[20] ,
    \wbs_hr_dat_o[19] ,
    \wbs_hr_dat_o[18] ,
    \wbs_hr_dat_o[17] ,
    \wbs_hr_dat_o[16] ,
    \wbs_hr_dat_o[15] ,
    \wbs_hr_dat_o[14] ,
    \wbs_hr_dat_o[13] ,
    \wbs_hr_dat_o[12] ,
    \wbs_hr_dat_o[11] ,
    \wbs_hr_dat_o[10] ,
    \wbs_hr_dat_o[9] ,
    \wbs_hr_dat_o[8] ,
    \wbs_hr_dat_o[7] ,
    \wbs_hr_dat_o[6] ,
    \wbs_hr_dat_o[5] ,
    \wbs_hr_dat_o[4] ,
    \wbs_hr_dat_o[3] ,
    \wbs_hr_dat_o[2] ,
    \wbs_hr_dat_o[1] ,
    \wbs_hr_dat_o[0] }),
    .wbs_hr_sel_o({\wbs_hr_sel[3] ,
    \wbs_hr_sel[2] ,
    \wbs_hr_sel[1] ,
    \wbs_hr_sel[0] }),
    .wbs_or_dat_i({\wbs_or_dat_i[31] ,
    \wbs_or_dat_i[30] ,
    \wbs_or_dat_i[29] ,
    \wbs_or_dat_i[28] ,
    \wbs_or_dat_i[27] ,
    \wbs_or_dat_i[26] ,
    \wbs_or_dat_i[25] ,
    \wbs_or_dat_i[24] ,
    \wbs_or_dat_i[23] ,
    \wbs_or_dat_i[22] ,
    \wbs_or_dat_i[21] ,
    \wbs_or_dat_i[20] ,
    \wbs_or_dat_i[19] ,
    \wbs_or_dat_i[18] ,
    \wbs_or_dat_i[17] ,
    \wbs_or_dat_i[16] ,
    \wbs_or_dat_i[15] ,
    \wbs_or_dat_i[14] ,
    \wbs_or_dat_i[13] ,
    \wbs_or_dat_i[12] ,
    \wbs_or_dat_i[11] ,
    \wbs_or_dat_i[10] ,
    \wbs_or_dat_i[9] ,
    \wbs_or_dat_i[8] ,
    \wbs_or_dat_i[7] ,
    \wbs_or_dat_i[6] ,
    \wbs_or_dat_i[5] ,
    \wbs_or_dat_i[4] ,
    \wbs_or_dat_i[3] ,
    \wbs_or_dat_i[2] ,
    \wbs_or_dat_i[1] ,
    \wbs_or_dat_i[0] }),
    .wbs_or_dat_o({\wbs_or_dat_o[31] ,
    \wbs_or_dat_o[30] ,
    \wbs_or_dat_o[29] ,
    \wbs_or_dat_o[28] ,
    \wbs_or_dat_o[27] ,
    \wbs_or_dat_o[26] ,
    \wbs_or_dat_o[25] ,
    \wbs_or_dat_o[24] ,
    \wbs_or_dat_o[23] ,
    \wbs_or_dat_o[22] ,
    \wbs_or_dat_o[21] ,
    \wbs_or_dat_o[20] ,
    \wbs_or_dat_o[19] ,
    \wbs_or_dat_o[18] ,
    \wbs_or_dat_o[17] ,
    \wbs_or_dat_o[16] ,
    \wbs_or_dat_o[15] ,
    \wbs_or_dat_o[14] ,
    \wbs_or_dat_o[13] ,
    \wbs_or_dat_o[12] ,
    \wbs_or_dat_o[11] ,
    \wbs_or_dat_o[10] ,
    \wbs_or_dat_o[9] ,
    \wbs_or_dat_o[8] ,
    \wbs_or_dat_o[7] ,
    \wbs_or_dat_o[6] ,
    \wbs_or_dat_o[5] ,
    \wbs_or_dat_o[4] ,
    \wbs_or_dat_o[3] ,
    \wbs_or_dat_o[2] ,
    \wbs_or_dat_o[1] ,
    \wbs_or_dat_o[0] }),
    .wbs_or_sel_o({\wbs_or_sel[3] ,
    \wbs_or_sel[2] ,
    \wbs_or_sel[1] ,
    \wbs_or_sel[0] }),
    .wbs_ufp_adr_i({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .wbs_ufp_dat_i({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .wbs_ufp_dat_o({wbs_dat_o[31],
    wbs_dat_o[30],
    wbs_dat_o[29],
    wbs_dat_o[28],
    wbs_dat_o[27],
    wbs_dat_o[26],
    wbs_dat_o[25],
    wbs_dat_o[24],
    wbs_dat_o[23],
    wbs_dat_o[22],
    wbs_dat_o[21],
    wbs_dat_o[20],
    wbs_dat_o[19],
    wbs_dat_o[18],
    wbs_dat_o[17],
    wbs_dat_o[16],
    wbs_dat_o[15],
    wbs_dat_o[14],
    wbs_dat_o[13],
    wbs_dat_o[12],
    wbs_dat_o[11],
    wbs_dat_o[10],
    wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}),
    .wbs_ufp_sel_i({wbs_sel_i[3],
    wbs_sel_i[2],
    wbs_sel_i[1],
    wbs_sel_i[0]}));
 wb_hyperram wb_hyperram (.hb_clk_o(io_out[10]),
    .hb_clkn_o(io_out[11]),
    .hb_csn_o(io_out[9]),
    .hb_rstn_o(io_out[8]),
    .hb_rwds_i(io_in[12]),
    .hb_rwds_o(io_out[12]),
    .hb_rwds_oen(io_oeb[12]),
    .rst_i(la_data_in[0]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .wbs_ack_o(wbs_hr_ack),
    .wbs_cyc_i(wbs_hr_cyc),
    .wbs_stb_i(wbs_hr_stb),
    .wbs_we_i(wbs_hr_we),
    .hb_dq_i({io_in[20],
    io_in[19],
    io_in[18],
    io_in[17],
    io_in[16],
    io_in[15],
    io_in[14],
    io_in[13]}),
    .hb_dq_o({io_out[20],
    io_out[19],
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13]}),
    .hb_dq_oen({io_oeb[20],
    io_oeb[19],
    io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13]}),
    .wbs_adr_i({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .wbs_dat_i({\wbs_hr_dat_o[31] ,
    \wbs_hr_dat_o[30] ,
    \wbs_hr_dat_o[29] ,
    \wbs_hr_dat_o[28] ,
    \wbs_hr_dat_o[27] ,
    \wbs_hr_dat_o[26] ,
    \wbs_hr_dat_o[25] ,
    \wbs_hr_dat_o[24] ,
    \wbs_hr_dat_o[23] ,
    \wbs_hr_dat_o[22] ,
    \wbs_hr_dat_o[21] ,
    \wbs_hr_dat_o[20] ,
    \wbs_hr_dat_o[19] ,
    \wbs_hr_dat_o[18] ,
    \wbs_hr_dat_o[17] ,
    \wbs_hr_dat_o[16] ,
    \wbs_hr_dat_o[15] ,
    \wbs_hr_dat_o[14] ,
    \wbs_hr_dat_o[13] ,
    \wbs_hr_dat_o[12] ,
    \wbs_hr_dat_o[11] ,
    \wbs_hr_dat_o[10] ,
    \wbs_hr_dat_o[9] ,
    \wbs_hr_dat_o[8] ,
    \wbs_hr_dat_o[7] ,
    \wbs_hr_dat_o[6] ,
    \wbs_hr_dat_o[5] ,
    \wbs_hr_dat_o[4] ,
    \wbs_hr_dat_o[3] ,
    \wbs_hr_dat_o[2] ,
    \wbs_hr_dat_o[1] ,
    \wbs_hr_dat_o[0] }),
    .wbs_dat_o({\wbs_hr_dat_i[31] ,
    \wbs_hr_dat_i[30] ,
    \wbs_hr_dat_i[29] ,
    \wbs_hr_dat_i[28] ,
    \wbs_hr_dat_i[27] ,
    \wbs_hr_dat_i[26] ,
    \wbs_hr_dat_i[25] ,
    \wbs_hr_dat_i[24] ,
    \wbs_hr_dat_i[23] ,
    \wbs_hr_dat_i[22] ,
    \wbs_hr_dat_i[21] ,
    \wbs_hr_dat_i[20] ,
    \wbs_hr_dat_i[19] ,
    \wbs_hr_dat_i[18] ,
    \wbs_hr_dat_i[17] ,
    \wbs_hr_dat_i[16] ,
    \wbs_hr_dat_i[15] ,
    \wbs_hr_dat_i[14] ,
    \wbs_hr_dat_i[13] ,
    \wbs_hr_dat_i[12] ,
    \wbs_hr_dat_i[11] ,
    \wbs_hr_dat_i[10] ,
    \wbs_hr_dat_i[9] ,
    \wbs_hr_dat_i[8] ,
    \wbs_hr_dat_i[7] ,
    \wbs_hr_dat_i[6] ,
    \wbs_hr_dat_i[5] ,
    \wbs_hr_dat_i[4] ,
    \wbs_hr_dat_i[3] ,
    \wbs_hr_dat_i[2] ,
    \wbs_hr_dat_i[1] ,
    \wbs_hr_dat_i[0] }),
    .wbs_sel_i({\wbs_hr_sel[3] ,
    \wbs_hr_sel[2] ,
    \wbs_hr_sel[1] ,
    \wbs_hr_sel[0] }));
 wb_openram_wrapper wb_openram_wrapper (.ram_clk0(openram_clk0),
    .ram_csb0(openram_csb0),
    .ram_web0(openram_web0),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .wbs_ack_o(wbs_or_ack),
    .wbs_cyc_i(wbs_or_cyc),
    .wbs_stb_i(wbs_or_stb),
    .wbs_we_i(wbs_or_we),
    .ram_addr0({\openram_addr0[7] ,
    \openram_addr0[6] ,
    \openram_addr0[5] ,
    \openram_addr0[4] ,
    \openram_addr0[3] ,
    \openram_addr0[2] ,
    \openram_addr0[1] ,
    \openram_addr0[0] }),
    .ram_din0({\openram_dout0[31] ,
    \openram_dout0[30] ,
    \openram_dout0[29] ,
    \openram_dout0[28] ,
    \openram_dout0[27] ,
    \openram_dout0[26] ,
    \openram_dout0[25] ,
    \openram_dout0[24] ,
    \openram_dout0[23] ,
    \openram_dout0[22] ,
    \openram_dout0[21] ,
    \openram_dout0[20] ,
    \openram_dout0[19] ,
    \openram_dout0[18] ,
    \openram_dout0[17] ,
    \openram_dout0[16] ,
    \openram_dout0[15] ,
    \openram_dout0[14] ,
    \openram_dout0[13] ,
    \openram_dout0[12] ,
    \openram_dout0[11] ,
    \openram_dout0[10] ,
    \openram_dout0[9] ,
    \openram_dout0[8] ,
    \openram_dout0[7] ,
    \openram_dout0[6] ,
    \openram_dout0[5] ,
    \openram_dout0[4] ,
    \openram_dout0[3] ,
    \openram_dout0[2] ,
    \openram_dout0[1] ,
    \openram_dout0[0] }),
    .ram_dout0({\openram_din0[31] ,
    \openram_din0[30] ,
    \openram_din0[29] ,
    \openram_din0[28] ,
    \openram_din0[27] ,
    \openram_din0[26] ,
    \openram_din0[25] ,
    \openram_din0[24] ,
    \openram_din0[23] ,
    \openram_din0[22] ,
    \openram_din0[21] ,
    \openram_din0[20] ,
    \openram_din0[19] ,
    \openram_din0[18] ,
    \openram_din0[17] ,
    \openram_din0[16] ,
    \openram_din0[15] ,
    \openram_din0[14] ,
    \openram_din0[13] ,
    \openram_din0[12] ,
    \openram_din0[11] ,
    \openram_din0[10] ,
    \openram_din0[9] ,
    \openram_din0[8] ,
    \openram_din0[7] ,
    \openram_din0[6] ,
    \openram_din0[5] ,
    \openram_din0[4] ,
    \openram_din0[3] ,
    \openram_din0[2] ,
    \openram_din0[1] ,
    \openram_din0[0] }),
    .ram_wmask0({\openram_wmask0[3] ,
    \openram_wmask0[2] ,
    \openram_wmask0[1] ,
    \openram_wmask0[0] }),
    .wbs_adr_i({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .wbs_dat_i({\wbs_or_dat_o[31] ,
    \wbs_or_dat_o[30] ,
    \wbs_or_dat_o[29] ,
    \wbs_or_dat_o[28] ,
    \wbs_or_dat_o[27] ,
    \wbs_or_dat_o[26] ,
    \wbs_or_dat_o[25] ,
    \wbs_or_dat_o[24] ,
    \wbs_or_dat_o[23] ,
    \wbs_or_dat_o[22] ,
    \wbs_or_dat_o[21] ,
    \wbs_or_dat_o[20] ,
    \wbs_or_dat_o[19] ,
    \wbs_or_dat_o[18] ,
    \wbs_or_dat_o[17] ,
    \wbs_or_dat_o[16] ,
    \wbs_or_dat_o[15] ,
    \wbs_or_dat_o[14] ,
    \wbs_or_dat_o[13] ,
    \wbs_or_dat_o[12] ,
    \wbs_or_dat_o[11] ,
    \wbs_or_dat_o[10] ,
    \wbs_or_dat_o[9] ,
    \wbs_or_dat_o[8] ,
    \wbs_or_dat_o[7] ,
    \wbs_or_dat_o[6] ,
    \wbs_or_dat_o[5] ,
    \wbs_or_dat_o[4] ,
    \wbs_or_dat_o[3] ,
    \wbs_or_dat_o[2] ,
    \wbs_or_dat_o[1] ,
    \wbs_or_dat_o[0] }),
    .wbs_dat_o({\wbs_or_dat_i[31] ,
    \wbs_or_dat_i[30] ,
    \wbs_or_dat_i[29] ,
    \wbs_or_dat_i[28] ,
    \wbs_or_dat_i[27] ,
    \wbs_or_dat_i[26] ,
    \wbs_or_dat_i[25] ,
    \wbs_or_dat_i[24] ,
    \wbs_or_dat_i[23] ,
    \wbs_or_dat_i[22] ,
    \wbs_or_dat_i[21] ,
    \wbs_or_dat_i[20] ,
    \wbs_or_dat_i[19] ,
    \wbs_or_dat_i[18] ,
    \wbs_or_dat_i[17] ,
    \wbs_or_dat_i[16] ,
    \wbs_or_dat_i[15] ,
    \wbs_or_dat_i[14] ,
    \wbs_or_dat_i[13] ,
    \wbs_or_dat_i[12] ,
    \wbs_or_dat_i[11] ,
    \wbs_or_dat_i[10] ,
    \wbs_or_dat_i[9] ,
    \wbs_or_dat_i[8] ,
    \wbs_or_dat_i[7] ,
    \wbs_or_dat_i[6] ,
    \wbs_or_dat_i[5] ,
    \wbs_or_dat_i[4] ,
    \wbs_or_dat_i[3] ,
    \wbs_or_dat_i[2] ,
    \wbs_or_dat_i[1] ,
    \wbs_or_dat_i[0] }),
    .wbs_sel_i({\wbs_or_sel[3] ,
    \wbs_or_sel[2] ,
    \wbs_or_sel[1] ,
    \wbs_or_sel[0] }));
endmodule
