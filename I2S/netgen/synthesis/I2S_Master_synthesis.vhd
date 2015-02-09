--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: I2S_Master_synthesis.vhd
-- /___/   /\     Timestamp: Tue Nov 25 07:40:04 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm I2S_Master -w -dir netgen/synthesis -ofmt vhdl -sim I2S_Master.ngc I2S_Master_synthesis.vhd 
-- Device	: xc3s250e-5-vq100
-- Input file	: I2S_Master.ngc
-- Output file	: D:\GitHub\VHDL_Modules\I2S\netgen\synthesis\I2S_Master_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: I2S_Master
-- Xilinx	: C:\Xilinx\14.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity I2S_Master is
  port (
    CE : in STD_LOGIC := 'X'; 
    MCK : in STD_LOGIC := 'X'; 
    LR : in STD_LOGIC := 'X'; 
    SD : out STD_LOGIC; 
    WS : out STD_LOGIC; 
    SCK : out STD_LOGIC; 
    DATA : in STD_LOGIC_VECTOR ( 47 downto 0 ) 
  );
end I2S_Master;

architecture Structure of I2S_Master is
  signal CE_IBUF_1 : STD_LOGIC; 
  signal DATA_0_IBUF_50 : STD_LOGIC; 
  signal DATA_10_IBUF_51 : STD_LOGIC; 
  signal DATA_11_IBUF_52 : STD_LOGIC; 
  signal DATA_12_IBUF_53 : STD_LOGIC; 
  signal DATA_13_IBUF_54 : STD_LOGIC; 
  signal DATA_14_IBUF_55 : STD_LOGIC; 
  signal DATA_15_IBUF_56 : STD_LOGIC; 
  signal DATA_16_IBUF_57 : STD_LOGIC; 
  signal DATA_17_IBUF_58 : STD_LOGIC; 
  signal DATA_18_IBUF_59 : STD_LOGIC; 
  signal DATA_19_IBUF_60 : STD_LOGIC; 
  signal DATA_1_IBUF_61 : STD_LOGIC; 
  signal DATA_20_IBUF_62 : STD_LOGIC; 
  signal DATA_21_IBUF_63 : STD_LOGIC; 
  signal DATA_22_IBUF_64 : STD_LOGIC; 
  signal DATA_23_IBUF_65 : STD_LOGIC; 
  signal DATA_24_IBUF_66 : STD_LOGIC; 
  signal DATA_25_IBUF_67 : STD_LOGIC; 
  signal DATA_26_IBUF_68 : STD_LOGIC; 
  signal DATA_27_IBUF_69 : STD_LOGIC; 
  signal DATA_28_IBUF_70 : STD_LOGIC; 
  signal DATA_29_IBUF_71 : STD_LOGIC; 
  signal DATA_2_IBUF_72 : STD_LOGIC; 
  signal DATA_30_IBUF_73 : STD_LOGIC; 
  signal DATA_31_IBUF_74 : STD_LOGIC; 
  signal DATA_32_IBUF_75 : STD_LOGIC; 
  signal DATA_33_IBUF_76 : STD_LOGIC; 
  signal DATA_34_IBUF_77 : STD_LOGIC; 
  signal DATA_35_IBUF_78 : STD_LOGIC; 
  signal DATA_36_IBUF_79 : STD_LOGIC; 
  signal DATA_37_IBUF_80 : STD_LOGIC; 
  signal DATA_38_IBUF_81 : STD_LOGIC; 
  signal DATA_39_IBUF_82 : STD_LOGIC; 
  signal DATA_3_IBUF_83 : STD_LOGIC; 
  signal DATA_40_IBUF_84 : STD_LOGIC; 
  signal DATA_41_IBUF_85 : STD_LOGIC; 
  signal DATA_42_IBUF_86 : STD_LOGIC; 
  signal DATA_43_IBUF_87 : STD_LOGIC; 
  signal DATA_44_IBUF_88 : STD_LOGIC; 
  signal DATA_45_IBUF_89 : STD_LOGIC; 
  signal DATA_46_IBUF_90 : STD_LOGIC; 
  signal DATA_47_IBUF_91 : STD_LOGIC; 
  signal DATA_4_IBUF_92 : STD_LOGIC; 
  signal DATA_5_IBUF_93 : STD_LOGIC; 
  signal DATA_6_IBUF_94 : STD_LOGIC; 
  signal DATA_7_IBUF_95 : STD_LOGIC; 
  signal DATA_8_IBUF_96 : STD_LOGIC; 
  signal DATA_9_IBUF_97 : STD_LOGIC; 
  signal MCK_IBUF_100 : STD_LOGIC; 
  signal MCK_IBUF1 : STD_LOGIC; 
  signal MCK_IBUF_LUT1 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal SCK_OBUF_151 : STD_LOGIC; 
  signal WS_OBUF_154 : STD_LOGIC; 
  signal fd1_output : STD_LOGIC; 
  signal fd2_output : STD_LOGIC; 
  signal shift_reg_buffer : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal shift_reg_buffer_mux0001 : STD_LOGIC_VECTOR ( 23 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  shift_reg_buffer_0 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(0),
      Q => shift_reg_buffer(0)
    );
  shift_reg_buffer_1 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(1),
      Q => shift_reg_buffer(1)
    );
  shift_reg_buffer_2 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(2),
      Q => shift_reg_buffer(2)
    );
  shift_reg_buffer_3 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(3),
      Q => shift_reg_buffer(3)
    );
  shift_reg_buffer_4 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(4),
      Q => shift_reg_buffer(4)
    );
  shift_reg_buffer_5 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(5),
      Q => shift_reg_buffer(5)
    );
  shift_reg_buffer_6 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(6),
      Q => shift_reg_buffer(6)
    );
  shift_reg_buffer_7 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(7),
      Q => shift_reg_buffer(7)
    );
  shift_reg_buffer_8 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(8),
      Q => shift_reg_buffer(8)
    );
  shift_reg_buffer_9 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(9),
      Q => shift_reg_buffer(9)
    );
  shift_reg_buffer_10 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(10),
      Q => shift_reg_buffer(10)
    );
  shift_reg_buffer_11 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(11),
      Q => shift_reg_buffer(11)
    );
  shift_reg_buffer_12 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(12),
      Q => shift_reg_buffer(12)
    );
  shift_reg_buffer_13 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(13),
      Q => shift_reg_buffer(13)
    );
  shift_reg_buffer_14 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(14),
      Q => shift_reg_buffer(14)
    );
  shift_reg_buffer_15 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(15),
      Q => shift_reg_buffer(15)
    );
  shift_reg_buffer_16 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(16),
      Q => shift_reg_buffer(16)
    );
  shift_reg_buffer_17 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(17),
      Q => shift_reg_buffer(17)
    );
  shift_reg_buffer_18 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(18),
      Q => shift_reg_buffer(18)
    );
  shift_reg_buffer_19 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(19),
      Q => shift_reg_buffer(19)
    );
  shift_reg_buffer_20 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(20),
      Q => shift_reg_buffer(20)
    );
  shift_reg_buffer_21 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(21),
      Q => shift_reg_buffer(21)
    );
  shift_reg_buffer_22 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(22),
      Q => shift_reg_buffer(22)
    );
  shift_reg_buffer_23 : FD
    port map (
      C => SCK_OBUF_151,
      D => shift_reg_buffer_mux0001(23),
      Q => shift_reg_buffer(23)
    );
  FD1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCK_IBUF_100,
      CE => CE_IBUF_1,
      CLR => N0,
      D => WS_OBUF_154,
      Q => fd1_output
    );
  FD2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCK_IBUF_100,
      CE => CE_IBUF_1,
      CLR => N0,
      D => fd1_output,
      Q => fd2_output
    );
  shift_reg_buffer_mux0001_0_1 : LUT4
    generic map(
      INIT => X"0AC0"
    )
    port map (
      I0 => DATA_24_IBUF_66,
      I1 => DATA_0_IBUF_50,
      I2 => fd2_output,
      I3 => fd1_output,
      O => shift_reg_buffer_mux0001(0)
    );
  MCK_IBUF : IBUF
    port map (
      I => MCK,
      O => MCK_IBUF1
    );
  CE_IBUF : IBUF
    port map (
      I => CE,
      O => CE_IBUF_1
    );
  LR_IBUF : IBUF
    port map (
      I => LR,
      O => WS_OBUF_154
    );
  DATA_47_IBUF : IBUF
    port map (
      I => DATA(47),
      O => DATA_47_IBUF_91
    );
  DATA_46_IBUF : IBUF
    port map (
      I => DATA(46),
      O => DATA_46_IBUF_90
    );
  DATA_45_IBUF : IBUF
    port map (
      I => DATA(45),
      O => DATA_45_IBUF_89
    );
  DATA_44_IBUF : IBUF
    port map (
      I => DATA(44),
      O => DATA_44_IBUF_88
    );
  DATA_43_IBUF : IBUF
    port map (
      I => DATA(43),
      O => DATA_43_IBUF_87
    );
  DATA_42_IBUF : IBUF
    port map (
      I => DATA(42),
      O => DATA_42_IBUF_86
    );
  DATA_41_IBUF : IBUF
    port map (
      I => DATA(41),
      O => DATA_41_IBUF_85
    );
  DATA_40_IBUF : IBUF
    port map (
      I => DATA(40),
      O => DATA_40_IBUF_84
    );
  DATA_39_IBUF : IBUF
    port map (
      I => DATA(39),
      O => DATA_39_IBUF_82
    );
  DATA_38_IBUF : IBUF
    port map (
      I => DATA(38),
      O => DATA_38_IBUF_81
    );
  DATA_37_IBUF : IBUF
    port map (
      I => DATA(37),
      O => DATA_37_IBUF_80
    );
  DATA_36_IBUF : IBUF
    port map (
      I => DATA(36),
      O => DATA_36_IBUF_79
    );
  DATA_35_IBUF : IBUF
    port map (
      I => DATA(35),
      O => DATA_35_IBUF_78
    );
  DATA_34_IBUF : IBUF
    port map (
      I => DATA(34),
      O => DATA_34_IBUF_77
    );
  DATA_33_IBUF : IBUF
    port map (
      I => DATA(33),
      O => DATA_33_IBUF_76
    );
  DATA_32_IBUF : IBUF
    port map (
      I => DATA(32),
      O => DATA_32_IBUF_75
    );
  DATA_31_IBUF : IBUF
    port map (
      I => DATA(31),
      O => DATA_31_IBUF_74
    );
  DATA_30_IBUF : IBUF
    port map (
      I => DATA(30),
      O => DATA_30_IBUF_73
    );
  DATA_29_IBUF : IBUF
    port map (
      I => DATA(29),
      O => DATA_29_IBUF_71
    );
  DATA_28_IBUF : IBUF
    port map (
      I => DATA(28),
      O => DATA_28_IBUF_70
    );
  DATA_27_IBUF : IBUF
    port map (
      I => DATA(27),
      O => DATA_27_IBUF_69
    );
  DATA_26_IBUF : IBUF
    port map (
      I => DATA(26),
      O => DATA_26_IBUF_68
    );
  DATA_25_IBUF : IBUF
    port map (
      I => DATA(25),
      O => DATA_25_IBUF_67
    );
  DATA_24_IBUF : IBUF
    port map (
      I => DATA(24),
      O => DATA_24_IBUF_66
    );
  DATA_23_IBUF : IBUF
    port map (
      I => DATA(23),
      O => DATA_23_IBUF_65
    );
  DATA_22_IBUF : IBUF
    port map (
      I => DATA(22),
      O => DATA_22_IBUF_64
    );
  DATA_21_IBUF : IBUF
    port map (
      I => DATA(21),
      O => DATA_21_IBUF_63
    );
  DATA_20_IBUF : IBUF
    port map (
      I => DATA(20),
      O => DATA_20_IBUF_62
    );
  DATA_19_IBUF : IBUF
    port map (
      I => DATA(19),
      O => DATA_19_IBUF_60
    );
  DATA_18_IBUF : IBUF
    port map (
      I => DATA(18),
      O => DATA_18_IBUF_59
    );
  DATA_17_IBUF : IBUF
    port map (
      I => DATA(17),
      O => DATA_17_IBUF_58
    );
  DATA_16_IBUF : IBUF
    port map (
      I => DATA(16),
      O => DATA_16_IBUF_57
    );
  DATA_15_IBUF : IBUF
    port map (
      I => DATA(15),
      O => DATA_15_IBUF_56
    );
  DATA_14_IBUF : IBUF
    port map (
      I => DATA(14),
      O => DATA_14_IBUF_55
    );
  DATA_13_IBUF : IBUF
    port map (
      I => DATA(13),
      O => DATA_13_IBUF_54
    );
  DATA_12_IBUF : IBUF
    port map (
      I => DATA(12),
      O => DATA_12_IBUF_53
    );
  DATA_11_IBUF : IBUF
    port map (
      I => DATA(11),
      O => DATA_11_IBUF_52
    );
  DATA_10_IBUF : IBUF
    port map (
      I => DATA(10),
      O => DATA_10_IBUF_51
    );
  DATA_9_IBUF : IBUF
    port map (
      I => DATA(9),
      O => DATA_9_IBUF_97
    );
  DATA_8_IBUF : IBUF
    port map (
      I => DATA(8),
      O => DATA_8_IBUF_96
    );
  DATA_7_IBUF : IBUF
    port map (
      I => DATA(7),
      O => DATA_7_IBUF_95
    );
  DATA_6_IBUF : IBUF
    port map (
      I => DATA(6),
      O => DATA_6_IBUF_94
    );
  DATA_5_IBUF : IBUF
    port map (
      I => DATA(5),
      O => DATA_5_IBUF_93
    );
  DATA_4_IBUF : IBUF
    port map (
      I => DATA(4),
      O => DATA_4_IBUF_92
    );
  DATA_3_IBUF : IBUF
    port map (
      I => DATA(3),
      O => DATA_3_IBUF_83
    );
  DATA_2_IBUF : IBUF
    port map (
      I => DATA(2),
      O => DATA_2_IBUF_72
    );
  DATA_1_IBUF : IBUF
    port map (
      I => DATA(1),
      O => DATA_1_IBUF_61
    );
  DATA_0_IBUF : IBUF
    port map (
      I => DATA(0),
      O => DATA_0_IBUF_50
    );
  SD_OBUF : OBUF
    port map (
      I => shift_reg_buffer(23),
      O => SD
    );
  WS_OBUF : OBUF
    port map (
      I => WS_OBUF_154,
      O => WS
    );
  SCK_OBUF : OBUF
    port map (
      I => MCK_IBUF_LUT1,
      O => SCK
    );
  shift_reg_buffer_mux0001_9_Q : MUXF5
    port map (
      I0 => N72,
      I1 => N73,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(9)
    );
  shift_reg_buffer_mux0001_9_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(8),
      I2 => DATA_33_IBUF_76,
      O => N72
    );
  shift_reg_buffer_mux0001_9_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_9_IBUF_97,
      I2 => shift_reg_buffer(8),
      O => N73
    );
  shift_reg_buffer_mux0001_8_Q : MUXF5
    port map (
      I0 => N74,
      I1 => N75,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(8)
    );
  shift_reg_buffer_mux0001_8_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(7),
      I2 => DATA_32_IBUF_75,
      O => N74
    );
  shift_reg_buffer_mux0001_8_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_8_IBUF_96,
      I2 => shift_reg_buffer(7),
      O => N75
    );
  shift_reg_buffer_mux0001_7_Q : MUXF5
    port map (
      I0 => N76,
      I1 => N77,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(7)
    );
  shift_reg_buffer_mux0001_7_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(6),
      I2 => DATA_31_IBUF_74,
      O => N76
    );
  shift_reg_buffer_mux0001_7_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_7_IBUF_95,
      I2 => shift_reg_buffer(6),
      O => N77
    );
  shift_reg_buffer_mux0001_6_Q : MUXF5
    port map (
      I0 => N78,
      I1 => N79,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(6)
    );
  shift_reg_buffer_mux0001_6_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(5),
      I2 => DATA_30_IBUF_73,
      O => N78
    );
  shift_reg_buffer_mux0001_6_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_6_IBUF_94,
      I2 => shift_reg_buffer(5),
      O => N79
    );
  shift_reg_buffer_mux0001_5_Q : MUXF5
    port map (
      I0 => N80,
      I1 => N81,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(5)
    );
  shift_reg_buffer_mux0001_5_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(4),
      I2 => DATA_29_IBUF_71,
      O => N80
    );
  shift_reg_buffer_mux0001_5_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_5_IBUF_93,
      I2 => shift_reg_buffer(4),
      O => N81
    );
  shift_reg_buffer_mux0001_4_Q : MUXF5
    port map (
      I0 => N82,
      I1 => N83,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(4)
    );
  shift_reg_buffer_mux0001_4_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(3),
      I2 => DATA_28_IBUF_70,
      O => N82
    );
  shift_reg_buffer_mux0001_4_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_4_IBUF_92,
      I2 => shift_reg_buffer(3),
      O => N83
    );
  shift_reg_buffer_mux0001_3_Q : MUXF5
    port map (
      I0 => N84,
      I1 => N85,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(3)
    );
  shift_reg_buffer_mux0001_3_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(2),
      I2 => DATA_27_IBUF_69,
      O => N84
    );
  shift_reg_buffer_mux0001_3_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_3_IBUF_83,
      I2 => shift_reg_buffer(2),
      O => N85
    );
  shift_reg_buffer_mux0001_2_Q : MUXF5
    port map (
      I0 => N86,
      I1 => N87,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(2)
    );
  shift_reg_buffer_mux0001_2_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(1),
      I2 => DATA_26_IBUF_68,
      O => N86
    );
  shift_reg_buffer_mux0001_2_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_2_IBUF_72,
      I2 => shift_reg_buffer(1),
      O => N87
    );
  shift_reg_buffer_mux0001_23_Q : MUXF5
    port map (
      I0 => N88,
      I1 => N89,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(23)
    );
  shift_reg_buffer_mux0001_23_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(22),
      I2 => DATA_47_IBUF_91,
      O => N88
    );
  shift_reg_buffer_mux0001_23_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_23_IBUF_65,
      I2 => shift_reg_buffer(22),
      O => N89
    );
  shift_reg_buffer_mux0001_22_Q : MUXF5
    port map (
      I0 => N90,
      I1 => N91,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(22)
    );
  shift_reg_buffer_mux0001_22_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(21),
      I2 => DATA_46_IBUF_90,
      O => N90
    );
  shift_reg_buffer_mux0001_22_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_22_IBUF_64,
      I2 => shift_reg_buffer(21),
      O => N91
    );
  shift_reg_buffer_mux0001_21_Q : MUXF5
    port map (
      I0 => N92,
      I1 => N93,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(21)
    );
  shift_reg_buffer_mux0001_21_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(20),
      I2 => DATA_45_IBUF_89,
      O => N92
    );
  shift_reg_buffer_mux0001_21_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_21_IBUF_63,
      I2 => shift_reg_buffer(20),
      O => N93
    );
  shift_reg_buffer_mux0001_20_Q : MUXF5
    port map (
      I0 => N94,
      I1 => N95,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(20)
    );
  shift_reg_buffer_mux0001_20_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(19),
      I2 => DATA_44_IBUF_88,
      O => N94
    );
  shift_reg_buffer_mux0001_20_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_20_IBUF_62,
      I2 => shift_reg_buffer(19),
      O => N95
    );
  shift_reg_buffer_mux0001_1_Q : MUXF5
    port map (
      I0 => N96,
      I1 => N97,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(1)
    );
  shift_reg_buffer_mux0001_1_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(0),
      I2 => DATA_25_IBUF_67,
      O => N96
    );
  shift_reg_buffer_mux0001_1_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_1_IBUF_61,
      I2 => shift_reg_buffer(0),
      O => N97
    );
  shift_reg_buffer_mux0001_19_Q : MUXF5
    port map (
      I0 => N98,
      I1 => N99,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(19)
    );
  shift_reg_buffer_mux0001_19_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(18),
      I2 => DATA_43_IBUF_87,
      O => N98
    );
  shift_reg_buffer_mux0001_19_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_19_IBUF_60,
      I2 => shift_reg_buffer(18),
      O => N99
    );
  shift_reg_buffer_mux0001_18_Q : MUXF5
    port map (
      I0 => N100,
      I1 => N101,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(18)
    );
  shift_reg_buffer_mux0001_18_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(17),
      I2 => DATA_42_IBUF_86,
      O => N100
    );
  shift_reg_buffer_mux0001_18_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_18_IBUF_59,
      I2 => shift_reg_buffer(17),
      O => N101
    );
  shift_reg_buffer_mux0001_17_Q : MUXF5
    port map (
      I0 => N102,
      I1 => N103,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(17)
    );
  shift_reg_buffer_mux0001_17_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(16),
      I2 => DATA_41_IBUF_85,
      O => N102
    );
  shift_reg_buffer_mux0001_17_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_17_IBUF_58,
      I2 => shift_reg_buffer(16),
      O => N103
    );
  shift_reg_buffer_mux0001_16_Q : MUXF5
    port map (
      I0 => N104,
      I1 => N105,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(16)
    );
  shift_reg_buffer_mux0001_16_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(15),
      I2 => DATA_40_IBUF_84,
      O => N104
    );
  shift_reg_buffer_mux0001_16_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_16_IBUF_57,
      I2 => shift_reg_buffer(15),
      O => N105
    );
  shift_reg_buffer_mux0001_15_Q : MUXF5
    port map (
      I0 => N106,
      I1 => N107,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(15)
    );
  shift_reg_buffer_mux0001_15_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(14),
      I2 => DATA_39_IBUF_82,
      O => N106
    );
  shift_reg_buffer_mux0001_15_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_15_IBUF_56,
      I2 => shift_reg_buffer(14),
      O => N107
    );
  shift_reg_buffer_mux0001_14_Q : MUXF5
    port map (
      I0 => N108,
      I1 => N109,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(14)
    );
  shift_reg_buffer_mux0001_14_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(13),
      I2 => DATA_38_IBUF_81,
      O => N108
    );
  shift_reg_buffer_mux0001_14_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_14_IBUF_55,
      I2 => shift_reg_buffer(13),
      O => N109
    );
  shift_reg_buffer_mux0001_13_Q : MUXF5
    port map (
      I0 => N110,
      I1 => N111,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(13)
    );
  shift_reg_buffer_mux0001_13_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(12),
      I2 => DATA_37_IBUF_80,
      O => N110
    );
  shift_reg_buffer_mux0001_13_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_13_IBUF_54,
      I2 => shift_reg_buffer(12),
      O => N111
    );
  shift_reg_buffer_mux0001_12_Q : MUXF5
    port map (
      I0 => N112,
      I1 => N113,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(12)
    );
  shift_reg_buffer_mux0001_12_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(11),
      I2 => DATA_36_IBUF_79,
      O => N112
    );
  shift_reg_buffer_mux0001_12_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_12_IBUF_53,
      I2 => shift_reg_buffer(11),
      O => N113
    );
  shift_reg_buffer_mux0001_11_Q : MUXF5
    port map (
      I0 => N114,
      I1 => N115,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(11)
    );
  shift_reg_buffer_mux0001_11_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(10),
      I2 => DATA_35_IBUF_78,
      O => N114
    );
  shift_reg_buffer_mux0001_11_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_11_IBUF_52,
      I2 => shift_reg_buffer(10),
      O => N115
    );
  shift_reg_buffer_mux0001_10_Q : MUXF5
    port map (
      I0 => N116,
      I1 => N117,
      S => fd2_output,
      O => shift_reg_buffer_mux0001(10)
    );
  shift_reg_buffer_mux0001_10_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => shift_reg_buffer(9),
      I2 => DATA_34_IBUF_77,
      O => N116
    );
  shift_reg_buffer_mux0001_10_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => fd1_output,
      I1 => DATA_10_IBUF_51,
      I2 => shift_reg_buffer(9),
      O => N117
    );
  MCK_IBUF_BUFG : BUFG
    port map (
      I => MCK_IBUF1,
      O => MCK_IBUF_100
    );
  mck_signal1_INV_0 : INV
    port map (
      I => MCK_IBUF_100,
      O => SCK_OBUF_151
    );
  MCK_IBUF_LUT1_INV_0 : INV
    port map (
      I => MCK_IBUF1,
      O => MCK_IBUF_LUT1
    );

end Structure;

