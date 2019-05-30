// Verilog netlist created by TD v4.3.815
// Thu May 30 19:39:21 2019

`timescale 1ns / 1ps
module led  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(1)
  (
  CLK_IN,
  RST_N,
  keyB,
  RGB_LED
  );

  input CLK_IN;  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(3)
  input RST_N;  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(4)
  input keyB;  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(5)
  output [2:0] RGB_LED;  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(6)

  parameter time1 = 25'b1011011100011011000000000;
  wire [2:0] RGB_LED_pad;  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(6)
  wire [24:0] count;  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(20)
  wire [2:0] n1;
  wire [1:0] n2;
  wire [2:0] n6;
  wire [1:0] n7;
  wire [24:0] n8;
  wire [1:0] shift_cnt;  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(21)
  wire CLK_IN_pad;  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(3)
  wire RST_N_pad;  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(4)
  wire _al_u10_o;
  wire _al_u11_o;
  wire _al_u12_o;
  wire _al_u13_o;
  wire _al_u14_o;
  wire _al_u29_o;
  wire _al_u6_o;
  wire _al_u7_o;
  wire _al_u8_o;
  wire _al_u9_o;
  wire \add1/c11 ;
  wire \add1/c15 ;
  wire \add1/c19 ;
  wire \add1/c23 ;
  wire \add1/c3 ;
  wire \add1/c7 ;
  wire keyB_pad;  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(5)
  wire n3;

  EG_PHY_PAD #(
    //.LOCATION("P34"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u0 (
    .ipad(CLK_IN),
    .di(CLK_IN_pad));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(3)
  EG_PHY_PAD #(
    //.LOCATION("P17"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1 (
    .do({open_n18,open_n19,open_n20,RGB_LED_pad[2]}),
    .opad(RGB_LED[2]));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(6)
  EG_PHY_MSLICE #(
    //.LUT0("(A*C)"),
    //.LUT1("(~D*~A)"),
    .INIT_LUT0(16'b1010000010100000),
    .INIT_LUT1(16'b0000000001010101),
    .MODE("LOGIC"))
    \_al_u10|_al_u15  (
    .a({count[0],_al_u14_o}),
    .c({open_n36,_al_u9_o}),
    .d({count[1],open_n39}),
    .f({_al_u10_o,n3}));
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*~C*B*A)"),
    //.LUT1("(D*A*B*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \_al_u14|reg2_b18  (
    .a({_al_u12_o,count[18]}),
    .b({_al_u11_o,count[19]}),
    .c({_al_u10_o,count[2]}),
    .clk(CLK_IN_pad),
    .d({_al_u13_o,count[20]}),
    .mi({open_n69,n8[18]}),
    .sr(n3),
    .f({_al_u14_o,_al_u12_o}),
    .q({open_n73,count[18]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~(C)*~((B*A))+D*C*~((B*A))+~(D)*C*(B*A)+D*C*(B*A))"),
    //.LUT1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111011110000000),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u16|reg1_b1  (
    .a({open_n74,_al_u9_o}),
    .b({open_n75,_al_u14_o}),
    .c({shift_cnt[1],n7[1]}),
    .clk(CLK_IN_pad),
    .d({RST_N_pad,n2[1]}),
    .f({n2[1],open_n90}),
    .q({open_n94,shift_cnt[1]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    //.LUT0("(B*~A)"),
    //.LUT1("(~B*A)"),
    .INIT_LUT0(16'b0100010001000100),
    .INIT_LUT1(16'b0010001000100010),
    .MODE("LOGIC"))
    \_al_u17|_al_u23  (
    .a({shift_cnt[0],shift_cnt[0]}),
    .b({shift_cnt[1],shift_cnt[1]}),
    .f({n7[1],n6[0]}));
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~(C)*~((B*A))+D*C*~((B*A))+~(D)*C*(B*A)+D*C*(B*A))"),
    //.LUT1("(C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111011110000000),
    .INIT_LUT1(16'b1100000011000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u19|reg1_b0  (
    .a({open_n119,_al_u9_o}),
    .b({RST_N_pad,_al_u14_o}),
    .c({shift_cnt[0],n7[0]}),
    .clk(CLK_IN_pad),
    .d({open_n121,n2[0]}),
    .f({n2[0],open_n135}),
    .q({open_n139,shift_cnt[0]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_PAD #(
    //.LOCATION("P19"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u2 (
    .do({open_n141,open_n142,open_n143,RGB_LED_pad[1]}),
    .opad(RGB_LED[1]));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(6)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_LSLICE #(
    //.LUTF0("~A*~B*~C*D+A*~B*~C*D+~A*B*~C*D+A*B*~C*D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    //.LUTF1("0"),
    //.LUTG0("A*~B*C*~D+A*B*C*~D+~A*~B*~C*D+~A*B*~C*D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    //.LUTG1("~A*~B*~C*D+A*~B*~C*D+~A*B*~C*D+A*B*~C*D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111100000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b1111010110100000),
    .INIT_LUTG1(16'b1111111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u22|reg0_b2  (
    .a({open_n157,_al_u9_o}),
    .c({open_n160,n6[2]}),
    .clk(CLK_IN_pad),
    .d({RGB_LED_pad[2],n1[2]}),
    .e({RST_N_pad,_al_u14_o}),
    .f({n1[2],open_n177}),
    .q({open_n181,RGB_LED_pad[2]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*~D)"),
    //.LUTF1("(B*~D)"),
    //.LUTG0("(~C*~D)"),
    //.LUTG1("(B*~D)"),
    .INIT_LUTF0(16'b0000000000001111),
    .INIT_LUTF1(16'b0000000011001100),
    .INIT_LUTG0(16'b0000000000001111),
    .INIT_LUTG1(16'b0000000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u24|_al_u20  (
    .b({RGB_LED_pad[1],open_n184}),
    .c({open_n185,shift_cnt[1]}),
    .d({n6[0],shift_cnt[0]}),
    .f({n6[2],n7[0]}));
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_LSLICE #(
    //.LUTF0("~A*~B*~C*D+A*~B*~C*D+~A*B*~C*D+A*B*~C*D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    //.LUTF1("(D*B)"),
    //.LUTG0("A*~B*C*~D+A*B*C*~D+~A*~B*~C*D+~A*B*~C*D+~A*~B*C*D+A*~B*C*D+~A*B*C*D+A*B*C*D"),
    //.LUTG1("(D*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111100000000),
    .INIT_LUTF1(16'b1100110000000000),
    .INIT_LUTG0(16'b1111010110100000),
    .INIT_LUTG1(16'b1100110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u26|reg0_b1  (
    .a({open_n210,_al_u9_o}),
    .b({RST_N_pad,open_n211}),
    .c({open_n212,n6[1]}),
    .clk(CLK_IN_pad),
    .d({RGB_LED_pad[1],n1[1]}),
    .e({open_n214,_al_u14_o}),
    .f({n1[1],open_n230}),
    .q({open_n234,RGB_LED_pad[1]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~A)"),
    //.LUTG0("(C*~A)"),
    .INIT_LUTF0(16'b0101000001010000),
    .INIT_LUTG0(16'b0101000001010000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    _al_u27 (
    .a({open_n235,n6[0]}),
    .c({open_n238,RGB_LED_pad[0]}),
    .f({open_n260,n6[1]}));
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*~(C)*~((B*D))+~A*C*~((B*D))+~(~A)*C*(B*D)+~A*C*(B*D))"),
    //.LUTF1("(~D*C)"),
    //.LUTG0("(~A*~(C)*~((B*D))+~A*C*~((B*D))+~(~A)*C*(B*D)+~A*C*(B*D))"),
    //.LUTG1("(~D*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101000101010101),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1101000101010101),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u29|reg0_b0  (
    .a({open_n266,_al_u29_o}),
    .b({open_n267,_al_u14_o}),
    .c({RST_N_pad,n6[0]}),
    .clk(CLK_IN_pad),
    .d({RGB_LED_pad[0],_al_u9_o}),
    .f({_al_u29_o,open_n286}),
    .q({open_n290,RGB_LED_pad[0]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_PAD #(
    //.LOCATION("P23"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u3 (
    .do({open_n292,open_n293,open_n294,RGB_LED_pad[0]}),
    .opad(RGB_LED[0]));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(6)
  EG_PHY_PAD #(
    //.LOCATION("P16"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u4 (
    .ipad(RST_N),
    .di(RST_N_pad));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(4)
  EG_PHY_PAD #(
    //.LOCATION("P18"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u5 (
    .ipad(keyB),
    .di(keyB_pad));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(5)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*~C*~B*~A)"),
    //.LUT1("(B*A*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000000001),
    .INIT_LUT1(16'b1000100000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \_al_u9|reg2_b3  (
    .a({_al_u7_o,count[3]}),
    .b({_al_u8_o,count[4]}),
    .c({open_n342,count[5]}),
    .clk(CLK_IN_pad),
    .d({_al_u6_o,count[6]}),
    .mi({open_n354,n8[3]}),
    .sr(n3),
    .f({_al_u9_o,_al_u7_o}),
    .q({open_n358,count[3]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_LSLICE #(
    //.MACRO("add1/ucin_al_u31"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \add1/u11_al_u34  (
    .a({count[13],count[11]}),
    .b({count[14],count[12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\add1/c11 ),
    .f({n8[13],n8[11]}),
    .fco(\add1/c15 ),
    .fx({n8[14],n8[12]}));
  EG_PHY_LSLICE #(
    //.MACRO("add1/ucin_al_u31"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \add1/u15_al_u35  (
    .a({count[17],count[15]}),
    .b({count[18],count[16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\add1/c15 ),
    .f({n8[17],n8[15]}),
    .fco(\add1/c19 ),
    .fx({n8[18],n8[16]}));
  EG_PHY_LSLICE #(
    //.MACRO("add1/ucin_al_u31"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \add1/u19_al_u36  (
    .a({count[21],count[19]}),
    .b({count[22],count[20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\add1/c19 ),
    .f({n8[21],n8[19]}),
    .fco(\add1/c23 ),
    .fx({n8[22],n8[20]}));
  EG_PHY_LSLICE #(
    //.MACRO("add1/ucin_al_u31"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \add1/u23_al_u37  (
    .a({open_n413,count[23]}),
    .b({open_n414,count[24]}),
    .c(2'b00),
    .d({open_n417,1'b0}),
    .e({open_n418,1'b0}),
    .fci(\add1/c23 ),
    .f({open_n433,n8[23]}),
    .fx({open_n435,n8[24]}));
  EG_PHY_LSLICE #(
    //.MACRO("add1/ucin_al_u31"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \add1/u3_al_u32  (
    .a({count[5],count[3]}),
    .b({count[6],count[4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\add1/c3 ),
    .f({n8[5],n8[3]}),
    .fco(\add1/c7 ),
    .fx({n8[6],n8[4]}));
  EG_PHY_LSLICE #(
    //.MACRO("add1/ucin_al_u31"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \add1/u7_al_u33  (
    .a({count[9],count[7]}),
    .b({count[10],count[8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\add1/c7 ),
    .f({n8[9],n8[7]}),
    .fco(\add1/c11 ),
    .fx({n8[10],n8[8]}));
  EG_PHY_LSLICE #(
    //.MACRO("add1/ucin_al_u31"),
    //.R_POSITION("X0Y0Z0"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \add1/ucin_al_u31  (
    .a({count[1],1'b0}),
    .b({count[2],count[0]}),
    .c(2'b00),
    .clk(CLK_IN_pad),
    .d(2'b01),
    .e(2'b01),
    .mi(n8[1:0]),
    .sr(n3),
    .f({n8[1],open_n487}),
    .fco(\add1/c3 ),
    .fx({n8[2],n8[0]}),
    .q(count[1:0]));
  EG_PHY_CONFIG #(
    .ADDR_SOURCE_SEL("DYNAMIC"),
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .MBOOT_AUTO_SEL("ENABLE"),
    .PROGRAMN_PERSISTN("DISABLE"),
    .STATIC_ADDR("8'b00000000"))
    config_inst (
    .mboot_dynamic_addr(8'b00001010),
    .mboot_rebootn(keyB_pad));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(12)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~C*B*A)"),
    //.LUT1("(D*C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000100000000000),
    .INIT_LUT1(16'b0010000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \reg2_b10|reg2_b21  (
    .a({count[10],count[21]}),
    .b({count[11],count[22]}),
    .c({count[12],count[23]}),
    .clk(CLK_IN_pad),
    .d({count[13],count[24]}),
    .mi({n8[10],n8[21]}),
    .sr(n3),
    .f({_al_u11_o,_al_u8_o}),
    .q({count[10],count[21]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \reg2_b11|reg2_b9  (
    .clk(CLK_IN_pad),
    .mi({n8[11],n8[9]}),
    .sr(n3),
    .q({count[11],count[9]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \reg2_b12|reg2_b8  (
    .clk(CLK_IN_pad),
    .mi({n8[12],n8[8]}),
    .sr(n3),
    .q({count[12],count[8]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \reg2_b13|reg2_b6  (
    .clk(CLK_IN_pad),
    .mi({n8[13],n8[6]}),
    .sr(n3),
    .q({count[13],count[6]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \reg2_b15|reg2_b5  (
    .clk(CLK_IN_pad),
    .mi({n8[15],n8[5]}),
    .sr(n3),
    .q({count[15],count[5]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \reg2_b16|reg2_b4  (
    .clk(CLK_IN_pad),
    .mi({n8[16],n8[4]}),
    .sr(n3),
    .q({count[16],count[4]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \reg2_b17|reg2_b24  (
    .clk(CLK_IN_pad),
    .mi({n8[17],n8[24]}),
    .sr(n3),
    .q({count[17],count[24]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \reg2_b19|reg2_b23  (
    .clk(CLK_IN_pad),
    .mi({n8[19],n8[23]}),
    .sr(n3),
    .q({count[19],count[23]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    reg2_b2 (
    .clk(CLK_IN_pad),
    .mi({open_n728,n8[2]}),
    .sr(n3),
    .q({open_n745,count[2]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \reg2_b20|reg2_b22  (
    .clk(CLK_IN_pad),
    .mi({n8[20],n8[22]}),
    .sr(n3),
    .q({count[20],count[22]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~C*~B*~A)"),
    //.LUT1("(C*~D*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000100000000),
    .INIT_LUT1(16'b0000000001010000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \reg2_b7|reg2_b14  (
    .a({count[7],count[14]}),
    .b({open_n770,count[15]}),
    .c({count[9],count[16]}),
    .clk(CLK_IN_pad),
    .d({count[8],count[17]}),
    .mi({n8[7],n8[14]}),
    .sr(n3),
    .f({_al_u6_o,_al_u13_o}),
    .q({count[7],count[14]}));  // C:/Users/SalieriNUC/Desktop/Github-salieri/SparkRoad-bootloader/multiboot/src/led.v(52)

endmodule 

