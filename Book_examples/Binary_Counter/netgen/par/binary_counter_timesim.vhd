--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: binary_counter_timesim.vhd
-- /___/   /\     Timestamp: Wed Jan 07 18:22:37 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf binary_counter.pcf -rpw 100 -tpw 0 -ar Structure -tm binary_counter -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim binary_counter.ncd binary_counter_timesim.vhd 
-- Device	: 3s250evq100-5 (PRODUCTION 1.27 2012-07-09)
-- Input file	: binary_counter.ncd
-- Output file	: D:\GitHub\VHDL_Modules\Book_examples\Binary_Counter\netgen\par\binary_counter_timesim.vhd
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
  signal RESET_IBUF_110 : STD_LOGIC; 
  signal Mcount_r_reg_cy_1_Q : STD_LOGIC; 
  signal Mcount_r_reg_cy_3_Q : STD_LOGIC; 
  signal MAX_TICK_cmp_eq00004_0 : STD_LOGIC; 
  signal MAX_TICK_cmp_eq00009_126 : STD_LOGIC; 
  signal r_reg_0_DXMUX_174 : STD_LOGIC; 
  signal r_reg_0_XORF_172 : STD_LOGIC; 
  signal r_reg_0_LOGIC_ONE_171 : STD_LOGIC; 
  signal r_reg_0_CYINIT_170 : STD_LOGIC; 
  signal r_reg_0_CYSELF_161 : STD_LOGIC; 
  signal r_reg_0_BXINV_159 : STD_LOGIC; 
  signal r_reg_0_DYMUX_152 : STD_LOGIC; 
  signal r_reg_0_XORG_150 : STD_LOGIC; 
  signal r_reg_0_CYMUXG_149 : STD_LOGIC; 
  signal Mcount_r_reg_cy_0_Q : STD_LOGIC; 
  signal r_reg_0_LOGIC_ZERO_147 : STD_LOGIC; 
  signal r_reg_0_CYSELG_138 : STD_LOGIC; 
  signal r_reg_0_G : STD_LOGIC; 
  signal r_reg_0_SRINV_136 : STD_LOGIC; 
  signal r_reg_0_CLKINV_135 : STD_LOGIC; 
  signal r_reg_2_DXMUX_230 : STD_LOGIC; 
  signal r_reg_2_XORF_228 : STD_LOGIC; 
  signal r_reg_2_CYINIT_227 : STD_LOGIC; 
  signal r_reg_2_F : STD_LOGIC; 
  signal r_reg_2_DYMUX_211 : STD_LOGIC; 
  signal r_reg_2_XORG_209 : STD_LOGIC; 
  signal Mcount_r_reg_cy_2_Q : STD_LOGIC; 
  signal r_reg_2_CYSELF_207 : STD_LOGIC; 
  signal r_reg_2_CYMUXFAST_206 : STD_LOGIC; 
  signal r_reg_2_CYAND_205 : STD_LOGIC; 
  signal r_reg_2_FASTCARRY_204 : STD_LOGIC; 
  signal r_reg_2_CYMUXG2_203 : STD_LOGIC; 
  signal r_reg_2_CYMUXF2_202 : STD_LOGIC; 
  signal r_reg_2_LOGIC_ZERO_201 : STD_LOGIC; 
  signal r_reg_2_CYSELG_192 : STD_LOGIC; 
  signal r_reg_2_G : STD_LOGIC; 
  signal r_reg_2_SRINV_190 : STD_LOGIC; 
  signal r_reg_2_CLKINV_189 : STD_LOGIC; 
  signal r_reg_4_DXMUX_286 : STD_LOGIC; 
  signal r_reg_4_XORF_284 : STD_LOGIC; 
  signal r_reg_4_CYINIT_283 : STD_LOGIC; 
  signal r_reg_4_F : STD_LOGIC; 
  signal r_reg_4_DYMUX_267 : STD_LOGIC; 
  signal r_reg_4_XORG_265 : STD_LOGIC; 
  signal Mcount_r_reg_cy_4_Q : STD_LOGIC; 
  signal r_reg_4_CYSELF_263 : STD_LOGIC; 
  signal r_reg_4_CYMUXFAST_262 : STD_LOGIC; 
  signal r_reg_4_CYAND_261 : STD_LOGIC; 
  signal r_reg_4_FASTCARRY_260 : STD_LOGIC; 
  signal r_reg_4_CYMUXG2_259 : STD_LOGIC; 
  signal r_reg_4_CYMUXF2_258 : STD_LOGIC; 
  signal r_reg_4_LOGIC_ZERO_257 : STD_LOGIC; 
  signal r_reg_4_CYSELG_248 : STD_LOGIC; 
  signal r_reg_4_G : STD_LOGIC; 
  signal r_reg_4_SRINV_246 : STD_LOGIC; 
  signal r_reg_4_CLKINV_245 : STD_LOGIC; 
  signal r_reg_6_DXMUX_335 : STD_LOGIC; 
  signal r_reg_6_XORF_333 : STD_LOGIC; 
  signal r_reg_6_LOGIC_ZERO_332 : STD_LOGIC; 
  signal r_reg_6_CYINIT_331 : STD_LOGIC; 
  signal r_reg_6_CYSELF_322 : STD_LOGIC; 
  signal r_reg_6_F : STD_LOGIC; 
  signal r_reg_6_DYMUX_314 : STD_LOGIC; 
  signal r_reg_6_XORG_312 : STD_LOGIC; 
  signal Mcount_r_reg_cy_6_Q : STD_LOGIC; 
  signal r_reg_7_rt_309 : STD_LOGIC; 
  signal r_reg_6_SRINV_301 : STD_LOGIC; 
  signal r_reg_6_CLKINV_300 : STD_LOGIC; 
  signal MAX_TICK_O : STD_LOGIC; 
  signal Q_0_O : STD_LOGIC; 
  signal Q_1_O : STD_LOGIC; 
  signal Q_2_O : STD_LOGIC; 
  signal Q_3_O : STD_LOGIC; 
  signal Q_4_O : STD_LOGIC; 
  signal Q_5_O : STD_LOGIC; 
  signal Q_6_O : STD_LOGIC; 
  signal Q_7_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal MAX_TICK_cmp_eq00004_440 : STD_LOGIC; 
  signal MAX_TICK_OBUF_464 : STD_LOGIC; 
  signal MAX_TICK_cmp_eq00009_pack_1 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal r_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_r_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  r_reg_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X39Y31"
    )
    port map (
      O => r_reg_0_LOGIC_ZERO_147
    );
  r_reg_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X39Y31"
    )
    port map (
      O => r_reg_0_LOGIC_ONE_171
    );
  r_reg_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_0_XORF_172,
      O => r_reg_0_DXMUX_174
    );
  r_reg_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y31"
    )
    port map (
      I0 => r_reg_0_CYINIT_170,
      I1 => Mcount_r_reg_lut(0),
      O => r_reg_0_XORF_172
    );
  r_reg_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y31"
    )
    port map (
      IA => r_reg_0_LOGIC_ONE_171,
      IB => r_reg_0_CYINIT_170,
      SEL => r_reg_0_CYSELF_161,
      O => Mcount_r_reg_cy_0_Q
    );
  r_reg_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_0_BXINV_159,
      O => r_reg_0_CYINIT_170
    );
  r_reg_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_r_reg_lut(0),
      O => r_reg_0_CYSELF_161
    );
  r_reg_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => r_reg_0_BXINV_159
    );
  r_reg_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_0_XORG_150,
      O => r_reg_0_DYMUX_152
    );
  r_reg_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y31"
    )
    port map (
      I0 => Mcount_r_reg_cy_0_Q,
      I1 => r_reg_0_G,
      O => r_reg_0_XORG_150
    );
  r_reg_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_0_CYMUXG_149,
      O => Mcount_r_reg_cy_1_Q
    );
  r_reg_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X39Y31"
    )
    port map (
      IA => r_reg_0_LOGIC_ZERO_147,
      IB => Mcount_r_reg_cy_0_Q,
      SEL => r_reg_0_CYSELG_138,
      O => r_reg_0_CYMUXG_149
    );
  r_reg_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_0_G,
      O => r_reg_0_CYSELG_138
    );
  r_reg_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => RESET_IBUF_110,
      O => r_reg_0_SRINV_136
    );
  r_reg_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => r_reg_0_CLKINV_135
    );
  r_reg_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X39Y32"
    )
    port map (
      O => r_reg_2_LOGIC_ZERO_201
    );
  r_reg_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_2_XORF_228,
      O => r_reg_2_DXMUX_230
    );
  r_reg_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y32"
    )
    port map (
      I0 => r_reg_2_CYINIT_227,
      I1 => r_reg_2_F,
      O => r_reg_2_XORF_228
    );
  r_reg_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y32"
    )
    port map (
      IA => r_reg_2_LOGIC_ZERO_201,
      IB => r_reg_2_CYINIT_227,
      SEL => r_reg_2_CYSELF_207,
      O => Mcount_r_reg_cy_2_Q
    );
  r_reg_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y32"
    )
    port map (
      IA => r_reg_2_LOGIC_ZERO_201,
      IB => r_reg_2_LOGIC_ZERO_201,
      SEL => r_reg_2_CYSELF_207,
      O => r_reg_2_CYMUXF2_202
    );
  r_reg_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_r_reg_cy_1_Q,
      O => r_reg_2_CYINIT_227
    );
  r_reg_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_2_F,
      O => r_reg_2_CYSELF_207
    );
  r_reg_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_2_XORG_209,
      O => r_reg_2_DYMUX_211
    );
  r_reg_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y32"
    )
    port map (
      I0 => Mcount_r_reg_cy_2_Q,
      I1 => r_reg_2_G,
      O => r_reg_2_XORG_209
    );
  r_reg_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_2_CYMUXFAST_206,
      O => Mcount_r_reg_cy_3_Q
    );
  r_reg_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X39Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_r_reg_cy_1_Q,
      O => r_reg_2_FASTCARRY_204
    );
  r_reg_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X39Y32"
    )
    port map (
      I0 => r_reg_2_CYSELG_192,
      I1 => r_reg_2_CYSELF_207,
      O => r_reg_2_CYAND_205
    );
  r_reg_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X39Y32"
    )
    port map (
      IA => r_reg_2_CYMUXG2_203,
      IB => r_reg_2_FASTCARRY_204,
      SEL => r_reg_2_CYAND_205,
      O => r_reg_2_CYMUXFAST_206
    );
  r_reg_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y32"
    )
    port map (
      IA => r_reg_2_LOGIC_ZERO_201,
      IB => r_reg_2_CYMUXF2_202,
      SEL => r_reg_2_CYSELG_192,
      O => r_reg_2_CYMUXG2_203
    );
  r_reg_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_2_G,
      O => r_reg_2_CYSELG_192
    );
  r_reg_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => RESET_IBUF_110,
      O => r_reg_2_SRINV_190
    );
  r_reg_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => r_reg_2_CLKINV_189
    );
  r_reg_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X39Y33"
    )
    port map (
      O => r_reg_4_LOGIC_ZERO_257
    );
  r_reg_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_4_XORF_284,
      O => r_reg_4_DXMUX_286
    );
  r_reg_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y33"
    )
    port map (
      I0 => r_reg_4_CYINIT_283,
      I1 => r_reg_4_F,
      O => r_reg_4_XORF_284
    );
  r_reg_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y33"
    )
    port map (
      IA => r_reg_4_LOGIC_ZERO_257,
      IB => r_reg_4_CYINIT_283,
      SEL => r_reg_4_CYSELF_263,
      O => Mcount_r_reg_cy_4_Q
    );
  r_reg_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y33"
    )
    port map (
      IA => r_reg_4_LOGIC_ZERO_257,
      IB => r_reg_4_LOGIC_ZERO_257,
      SEL => r_reg_4_CYSELF_263,
      O => r_reg_4_CYMUXF2_258
    );
  r_reg_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_r_reg_cy_3_Q,
      O => r_reg_4_CYINIT_283
    );
  r_reg_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_4_F,
      O => r_reg_4_CYSELF_263
    );
  r_reg_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_4_XORG_265,
      O => r_reg_4_DYMUX_267
    );
  r_reg_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y33"
    )
    port map (
      I0 => Mcount_r_reg_cy_4_Q,
      I1 => r_reg_4_G,
      O => r_reg_4_XORG_265
    );
  r_reg_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X39Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_r_reg_cy_3_Q,
      O => r_reg_4_FASTCARRY_260
    );
  r_reg_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X39Y33"
    )
    port map (
      I0 => r_reg_4_CYSELG_248,
      I1 => r_reg_4_CYSELF_263,
      O => r_reg_4_CYAND_261
    );
  r_reg_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X39Y33"
    )
    port map (
      IA => r_reg_4_CYMUXG2_259,
      IB => r_reg_4_FASTCARRY_260,
      SEL => r_reg_4_CYAND_261,
      O => r_reg_4_CYMUXFAST_262
    );
  r_reg_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y33"
    )
    port map (
      IA => r_reg_4_LOGIC_ZERO_257,
      IB => r_reg_4_CYMUXF2_258,
      SEL => r_reg_4_CYSELG_248,
      O => r_reg_4_CYMUXG2_259
    );
  r_reg_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X39Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_4_G,
      O => r_reg_4_CYSELG_248
    );
  r_reg_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => RESET_IBUF_110,
      O => r_reg_4_SRINV_246
    );
  r_reg_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => r_reg_4_CLKINV_245
    );
  r_reg_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X39Y34"
    )
    port map (
      O => r_reg_6_LOGIC_ZERO_332
    );
  r_reg_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_6_XORF_333,
      O => r_reg_6_DXMUX_335
    );
  r_reg_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X39Y34"
    )
    port map (
      I0 => r_reg_6_CYINIT_331,
      I1 => r_reg_6_F,
      O => r_reg_6_XORF_333
    );
  r_reg_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X39Y34"
    )
    port map (
      IA => r_reg_6_LOGIC_ZERO_332,
      IB => r_reg_6_CYINIT_331,
      SEL => r_reg_6_CYSELF_322,
      O => Mcount_r_reg_cy_6_Q
    );
  r_reg_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_4_CYMUXFAST_262,
      O => r_reg_6_CYINIT_331
    );
  r_reg_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_6_F,
      O => r_reg_6_CYSELF_322
    );
  r_reg_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg_6_XORG_312,
      O => r_reg_6_DYMUX_314
    );
  r_reg_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X39Y34"
    )
    port map (
      I0 => Mcount_r_reg_cy_6_Q,
      I1 => r_reg_7_rt_309,
      O => r_reg_6_XORG_312
    );
  r_reg_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => RESET_IBUF_110,
      O => r_reg_6_SRINV_301
    );
  r_reg_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => r_reg_6_CLKINV_300
    );
  MAX_TICK_OBUF : X_OBUF
    generic map(
      LOC => "PAD64"
    )
    port map (
      I => MAX_TICK_O,
      O => MAX_TICK
    );
  Q_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD86"
    )
    port map (
      I => Q_0_O,
      O => Q(0)
    );
  Q_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => Q_1_O,
      O => Q(1)
    );
  Q_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD63"
    )
    port map (
      I => Q_2_O,
      O => Q(2)
    );
  Q_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => Q_3_O,
      O => Q(3)
    );
  Q_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => Q_4_O,
      O => Q(4)
    );
  Q_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => Q_5_O,
      O => Q(5)
    );
  Q_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD68"
    )
    port map (
      I => Q_6_O,
      O => Q(6)
    );
  Q_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD67"
    )
    port map (
      I => Q_7_O,
      O => Q(7)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD21",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 555 ps
    )
    port map (
      I => RESET,
      O => RESET_INBUF
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 555 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_IBUF_110
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_BUFG_I0_INV
    );
  MAX_TICK_cmp_eq00004_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => MAX_TICK_cmp_eq00004_440,
      O => MAX_TICK_cmp_eq00004_0
    );
  MAX_TICK_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X48Y33"
    )
    port map (
      ADR0 => MAX_TICK_cmp_eq00004_0,
      ADR1 => VCC,
      ADR2 => MAX_TICK_cmp_eq00009_126,
      ADR3 => VCC,
      O => MAX_TICK_OBUF_464
    );
  MAX_TICK_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => MAX_TICK_cmp_eq00009_pack_1,
      O => MAX_TICK_cmp_eq00009_126
    );
  MAX_TICK_cmp_eq00009 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X48Y33"
    )
    port map (
      ADR0 => r_reg(4),
      ADR1 => r_reg(7),
      ADR2 => r_reg(5),
      ADR3 => r_reg(6),
      O => MAX_TICK_cmp_eq00009_pack_1
    );
  MAX_TICK_cmp_eq00004 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X48Y32"
    )
    port map (
      ADR0 => r_reg(1),
      ADR1 => r_reg(0),
      ADR2 => r_reg(2),
      ADR3 => r_reg(3),
      O => MAX_TICK_cmp_eq00004_440
    );
  r_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X39Y31",
      INIT => '0'
    )
    port map (
      I => r_reg_0_DYMUX_152,
      CE => VCC,
      CLK => r_reg_0_CLKINV_135,
      SET => GND,
      RST => r_reg_0_SRINV_136,
      O => r_reg(1)
    );
  Mcount_r_reg_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X39Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => r_reg(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Mcount_r_reg_lut(0)
    );
  r_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X39Y31",
      INIT => '0'
    )
    port map (
      I => r_reg_0_DXMUX_174,
      CE => VCC,
      CLK => r_reg_0_CLKINV_135,
      SET => GND,
      RST => r_reg_0_SRINV_136,
      O => r_reg(0)
    );
  r_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X39Y32",
      INIT => '0'
    )
    port map (
      I => r_reg_2_DYMUX_211,
      CE => VCC,
      CLK => r_reg_2_CLKINV_189,
      SET => GND,
      RST => r_reg_2_SRINV_190,
      O => r_reg(3)
    );
  r_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X39Y32",
      INIT => '0'
    )
    port map (
      I => r_reg_2_DXMUX_230,
      CE => VCC,
      CLK => r_reg_2_CLKINV_189,
      SET => GND,
      RST => r_reg_2_SRINV_190,
      O => r_reg(2)
    );
  r_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X39Y33",
      INIT => '0'
    )
    port map (
      I => r_reg_4_DYMUX_267,
      CE => VCC,
      CLK => r_reg_4_CLKINV_245,
      SET => GND,
      RST => r_reg_4_SRINV_246,
      O => r_reg(5)
    );
  r_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X39Y33",
      INIT => '0'
    )
    port map (
      I => r_reg_4_DXMUX_286,
      CE => VCC,
      CLK => r_reg_4_CLKINV_245,
      SET => GND,
      RST => r_reg_4_SRINV_246,
      O => r_reg(4)
    );
  r_reg_7_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X39Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => r_reg(7),
      O => r_reg_7_rt_309
    );
  r_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X39Y34",
      INIT => '0'
    )
    port map (
      I => r_reg_6_DYMUX_314,
      CE => VCC,
      CLK => r_reg_6_CLKINV_300,
      SET => GND,
      RST => r_reg_6_SRINV_301,
      O => r_reg(7)
    );
  r_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X39Y34",
      INIT => '0'
    )
    port map (
      I => r_reg_6_DXMUX_335,
      CE => VCC,
      CLK => r_reg_6_CLKINV_300,
      SET => GND,
      RST => r_reg_6_SRINV_301,
      O => r_reg(6)
    );
  r_reg_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X39Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => r_reg(1),
      O => r_reg_0_G
    );
  r_reg_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X39Y32"
    )
    port map (
      ADR0 => r_reg(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => r_reg_2_F
    );
  r_reg_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X39Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => r_reg(3),
      O => r_reg_2_G
    );
  r_reg_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X39Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => r_reg(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => r_reg_4_F
    );
  r_reg_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X39Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => r_reg(5),
      ADR3 => VCC,
      O => r_reg_4_G
    );
  r_reg_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X39Y34"
    )
    port map (
      ADR0 => r_reg(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => r_reg_6_F
    );
  MAX_TICK_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 555 ps
    )
    port map (
      I => MAX_TICK_OBUF_464,
      O => MAX_TICK_O
    );
  Q_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg(0),
      O => Q_0_O
    );
  Q_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg(1),
      O => Q_1_O
    );
  Q_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg(2),
      O => Q_2_O
    );
  Q_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg(3),
      O => Q_3_O
    );
  Q_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg(4),
      O => Q_4_O
    );
  Q_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg(5),
      O => Q_5_O
    );
  Q_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg(6),
      O => Q_6_O
    );
  Q_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_reg(7),
      O => Q_7_O
    );
  NlwBlock_binary_counter_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_binary_counter_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

