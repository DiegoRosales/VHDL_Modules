--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: binary_counter_translate.vhd
-- /___/   /\     Timestamp: Wed Jan 07 18:24:40 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm binary_counter -w -dir netgen/translate -ofmt vhdl -sim binary_counter.ngd binary_counter_translate.vhd 
-- Device	: 3s250evq100-5
-- Input file	: binary_counter.ngd
-- Output file	: D:\GitHub\VHDL_Modules\Book_examples\Binary_Counter\netgen\translate\binary_counter_translate.vhd
-- # of Entities	: 1
-- Design Name	: binary_counter
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity binary_counter is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    MAX_TICK : out STD_LOGIC; 
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end binary_counter;

architecture Structure of binary_counter is
  signal CLK_BUFGP : STD_LOGIC; 
  signal MAX_TICK_OBUF_6 : STD_LOGIC; 
  signal MAX_TICK_cmp_eq00004_7 : STD_LOGIC; 
  signal MAX_TICK_cmp_eq00009_8 : STD_LOGIC; 
  signal Mcount_r_reg_cy_1_rt_11 : STD_LOGIC; 
  signal Mcount_r_reg_cy_2_rt_13 : STD_LOGIC; 
  signal Mcount_r_reg_cy_3_rt_15 : STD_LOGIC; 
  signal Mcount_r_reg_cy_4_rt_17 : STD_LOGIC; 
  signal Mcount_r_reg_cy_5_rt_19 : STD_LOGIC; 
  signal Mcount_r_reg_cy_6_rt_21 : STD_LOGIC; 
  signal Mcount_r_reg_xor_7_rt_23 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal RESET_IBUF_35 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal Mcount_r_reg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Mcount_r_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : X_ZERO
    port map (
      O => N0
    );
  XST_VCC : X_ONE
    port map (
      O => N1
    );
  r_reg_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => RESET_IBUF_35,
      I => Result(0),
      O => r_reg(0),
      CE => VCC,
      SET => GND
    );
  r_reg_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => RESET_IBUF_35,
      I => Result(1),
      O => r_reg(1),
      CE => VCC,
      SET => GND
    );
  r_reg_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => RESET_IBUF_35,
      I => Result(2),
      O => r_reg(2),
      CE => VCC,
      SET => GND
    );
  r_reg_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => RESET_IBUF_35,
      I => Result(3),
      O => r_reg(3),
      CE => VCC,
      SET => GND
    );
  r_reg_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => RESET_IBUF_35,
      I => Result(4),
      O => r_reg(4),
      CE => VCC,
      SET => GND
    );
  r_reg_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => RESET_IBUF_35,
      I => Result(5),
      O => r_reg(5),
      CE => VCC,
      SET => GND
    );
  r_reg_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => RESET_IBUF_35,
      I => Result(6),
      O => r_reg(6),
      CE => VCC,
      SET => GND
    );
  r_reg_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => RESET_IBUF_35,
      I => Result(7),
      O => r_reg(7),
      CE => VCC,
      SET => GND
    );
  Mcount_r_reg_cy_0_Q : X_MUX2
    port map (
      IB => N0,
      IA => N1,
      SEL => Mcount_r_reg_lut(0),
      O => Mcount_r_reg_cy(0)
    );
  Mcount_r_reg_xor_0_Q : X_XOR2
    port map (
      I0 => N0,
      I1 => Mcount_r_reg_lut(0),
      O => Result(0)
    );
  Mcount_r_reg_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_r_reg_cy(0),
      IA => N0,
      SEL => Mcount_r_reg_cy_1_rt_11,
      O => Mcount_r_reg_cy(1)
    );
  Mcount_r_reg_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_r_reg_cy(0),
      I1 => Mcount_r_reg_cy_1_rt_11,
      O => Result(1)
    );
  Mcount_r_reg_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_r_reg_cy(1),
      IA => N0,
      SEL => Mcount_r_reg_cy_2_rt_13,
      O => Mcount_r_reg_cy(2)
    );
  Mcount_r_reg_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_r_reg_cy(1),
      I1 => Mcount_r_reg_cy_2_rt_13,
      O => Result(2)
    );
  Mcount_r_reg_cy_3_Q : X_MUX2
    port map (
      IB => Mcount_r_reg_cy(2),
      IA => N0,
      SEL => Mcount_r_reg_cy_3_rt_15,
      O => Mcount_r_reg_cy(3)
    );
  Mcount_r_reg_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_r_reg_cy(2),
      I1 => Mcount_r_reg_cy_3_rt_15,
      O => Result(3)
    );
  Mcount_r_reg_cy_4_Q : X_MUX2
    port map (
      IB => Mcount_r_reg_cy(3),
      IA => N0,
      SEL => Mcount_r_reg_cy_4_rt_17,
      O => Mcount_r_reg_cy(4)
    );
  Mcount_r_reg_xor_4_Q : X_XOR2
    port map (
      I0 => Mcount_r_reg_cy(3),
      I1 => Mcount_r_reg_cy_4_rt_17,
      O => Result(4)
    );
  Mcount_r_reg_cy_5_Q : X_MUX2
    port map (
      IB => Mcount_r_reg_cy(4),
      IA => N0,
      SEL => Mcount_r_reg_cy_5_rt_19,
      O => Mcount_r_reg_cy(5)
    );
  Mcount_r_reg_xor_5_Q : X_XOR2
    port map (
      I0 => Mcount_r_reg_cy(4),
      I1 => Mcount_r_reg_cy_5_rt_19,
      O => Result(5)
    );
  Mcount_r_reg_cy_6_Q : X_MUX2
    port map (
      IB => Mcount_r_reg_cy(5),
      IA => N0,
      SEL => Mcount_r_reg_cy_6_rt_21,
      O => Mcount_r_reg_cy(6)
    );
  Mcount_r_reg_xor_6_Q : X_XOR2
    port map (
      I0 => Mcount_r_reg_cy(5),
      I1 => Mcount_r_reg_cy_6_rt_21,
      O => Result(6)
    );
  Mcount_r_reg_xor_7_Q : X_XOR2
    port map (
      I0 => Mcount_r_reg_cy(6),
      I1 => Mcount_r_reg_xor_7_rt_23,
      O => Result(7)
    );
  MAX_TICK_cmp_eq00004 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => r_reg(3),
      ADR1 => r_reg(2),
      ADR2 => r_reg(1),
      ADR3 => r_reg(0),
      O => MAX_TICK_cmp_eq00004_7
    );
  MAX_TICK_cmp_eq00009 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => r_reg(7),
      ADR1 => r_reg(6),
      ADR2 => r_reg(5),
      ADR3 => r_reg(4),
      O => MAX_TICK_cmp_eq00009_8
    );
  MAX_TICK_cmp_eq000010 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => MAX_TICK_cmp_eq00004_7,
      ADR1 => MAX_TICK_cmp_eq00009_8,
      O => MAX_TICK_OBUF_6
    );
  RESET_IBUF : X_BUF
    port map (
      I => RESET,
      O => RESET_IBUF_35
    );
  Mcount_r_reg_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => r_reg(1),
      O => Mcount_r_reg_cy_1_rt_11,
      ADR1 => GND
    );
  Mcount_r_reg_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => r_reg(2),
      O => Mcount_r_reg_cy_2_rt_13,
      ADR1 => GND
    );
  Mcount_r_reg_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => r_reg(3),
      O => Mcount_r_reg_cy_3_rt_15,
      ADR1 => GND
    );
  Mcount_r_reg_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => r_reg(4),
      O => Mcount_r_reg_cy_4_rt_17,
      ADR1 => GND
    );
  Mcount_r_reg_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => r_reg(5),
      O => Mcount_r_reg_cy_5_rt_19,
      ADR1 => GND
    );
  Mcount_r_reg_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => r_reg(6),
      O => Mcount_r_reg_cy_6_rt_21,
      ADR1 => GND
    );
  Mcount_r_reg_xor_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => r_reg(7),
      O => Mcount_r_reg_xor_7_rt_23,
      ADR1 => GND
    );
  Mcount_r_reg_lut_0_INV_0 : X_INV
    port map (
      I => r_reg(0),
      O => Mcount_r_reg_lut(0)
    );
  CLK_BUFGP_BUFG : X_CKBUF
    port map (
      I => CLK_BUFGP_IBUFG_2,
      O => CLK_BUFGP
    );
  CLK_BUFGP_IBUFG : X_CKBUF
    port map (
      I => CLK,
      O => CLK_BUFGP_IBUFG_2
    );
  MAX_TICK_OBUF : X_OBUF
    port map (
      I => MAX_TICK_OBUF_6,
      O => MAX_TICK
    );
  Q_0_OBUF : X_OBUF
    port map (
      I => r_reg(0),
      O => Q(0)
    );
  Q_1_OBUF : X_OBUF
    port map (
      I => r_reg(1),
      O => Q(1)
    );
  Q_2_OBUF : X_OBUF
    port map (
      I => r_reg(2),
      O => Q(2)
    );
  Q_3_OBUF : X_OBUF
    port map (
      I => r_reg(3),
      O => Q(3)
    );
  Q_4_OBUF : X_OBUF
    port map (
      I => r_reg(4),
      O => Q(4)
    );
  Q_5_OBUF : X_OBUF
    port map (
      I => r_reg(5),
      O => Q(5)
    );
  Q_6_OBUF : X_OBUF
    port map (
      I => r_reg(6),
      O => Q(6)
    );
  Q_7_OBUF : X_OBUF
    port map (
      I => r_reg(7),
      O => Q(7)
    );
  NlwBlock_binary_counter_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_binary_counter_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

