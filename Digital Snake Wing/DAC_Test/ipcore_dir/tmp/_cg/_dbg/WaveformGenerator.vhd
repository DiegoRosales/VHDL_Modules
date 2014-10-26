--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2014 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--    Generated from core with identifier: xilinx.com:ip:dds_compiler:4.0     --
--                                                                            --
--    The Xilinx DDS Compiler LogiCORE provides Direct Digital Synthesizers   --
--    (DDS) and optionally either Phase Generator or Sine/Cosine Lookup       --
--    Table constituent parts as independent cores. The core features sine,   --
--    cosine or quadrature outputs with 3 to 26-bit output sample             --
--    precision. The core supports up to 16 channels by time-sharing the      --
--    sine/cosine table which dramatically reduces the area requirement       --
--    when multiple channels are needed.  Phase Dithering and Taylor Series   --
--    Correction options provide high dynamic range signals using minimal     --
--    FPGA resources. In addition, the core has an optional phase offset      --
--    capability, providing support for multiple synthesizers with            --
--    precisely controlled phase differences.                                 --
--------------------------------------------------------------------------------
-- Source Code Wrapper
-- This file is provided to wrap around the source code (if appropriate)
-- and is designed for use with XST

-- Interfaces:
--   addr_intf
--   clk_intf
--   sclr_intf
--   ce_intf
--   reg_select_intf
--   we_intf
--   data_intf
--   pinc_in_intf
--   poff_in_intf
--   phase_in_intf
--   rdy_intf
--   rfd_intf
--   channel_intf
--   cosine_intf
--   sine_intf
--   phase_out_intf

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

LIBRARY dds_compiler_v4_0;
USE dds_compiler_v4_0.dds_compiler_v4_0;

ENTITY WaveformGenerator IS
  PORT (
    clk : IN STD_LOGIC;
    phase_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    sine : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END WaveformGenerator;

ARCHITECTURE spartan3e OF WaveformGenerator IS

  COMPONENT dds_compiler_v4_0 IS
    GENERIC (
      c_xdevicefamily : STRING;
      c_accumulator_width : INTEGER;
      c_channels : INTEGER;
      c_has_ce : INTEGER;
      c_has_channel_index : INTEGER;
      c_has_rdy : INTEGER;
      c_has_rfd : INTEGER;
      c_has_sclr : INTEGER;
      c_has_phase_out : INTEGER;
      c_has_phasegen : INTEGER;
      c_has_sincos : INTEGER;
      c_latency : INTEGER;
      c_mem_type : INTEGER;
      c_negative_cosine : INTEGER;
      c_negative_sine : INTEGER;
      c_noise_shaping : INTEGER;
      c_outputs_required : INTEGER;
      c_output_width : INTEGER;
      c_phase_angle_width : INTEGER;
      c_phase_increment : INTEGER;
      c_phase_increment_value : STRING;
      c_phase_offset : INTEGER;
      c_phase_offset_value : STRING;
      c_optimise_goal : INTEGER;
      c_use_dsp48 : INTEGER;
      c_por_mode : INTEGER;
      c_amplitude : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      phase_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      sine : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT dds_compiler_v4_0;

  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF spartan3e : ARCHITECTURE IS "dds_compiler_v4_0, Xilinx CORE Generator 14.2";

  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF spartan3e : ARCHITECTURE IS "WaveformGenerator,dds_compiler_v4_0,{}";

  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF spartan3e : ARCHITECTURE IS "WaveformGenerator,dds_compiler_v4_0,{c_accumulator_width=16,c_amplitude=1,c_channels=1,c_has_ce=0,c_has_channel_index=0,c_has_phase_out=0,c_has_phasegen=0,c_has_rdy=0,c_has_rfd=0,c_has_sclr=0,c_has_sincos=1,c_latency=-1,c_mem_type=1,c_negative_cosine=0,c_negative_sine=0,c_noise_shaping=0,c_optimise_goal=0,c_output_width=16,c_outputs_required=0,c_phase_angle_width=16,c_phase_increment=2,c_phase_increment_value=0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0,c_phase_offset=0,c_phase_offset_value=0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0,c_por_mode=0,c_use_dsp48=0,c_xdevicefamily=spartan3e}";

BEGIN

  U0 : dds_compiler_v4_0
    GENERIC MAP (
      c_accumulator_width => 16,
      c_amplitude => 1,
      c_channels => 1,
      c_has_ce => 0,
      c_has_channel_index => 0,
      c_has_phase_out => 0,
      c_has_phasegen => 0,
      c_has_rdy => 0,
      c_has_rfd => 0,
      c_has_sclr => 0,
      c_has_sincos => 1,
      c_latency => -1,
      c_mem_type => 1,
      c_negative_cosine => 0,
      c_negative_sine => 0,
      c_noise_shaping => 0,
      c_optimise_goal => 0,
      c_output_width => 16,
      c_outputs_required => 0,
      c_phase_angle_width => 16,
      c_phase_increment => 2,
      c_phase_increment_value => "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
      c_phase_offset => 0,
      c_phase_offset_value => "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0",
      c_por_mode => 0,
      c_use_dsp48 => 0,
      c_xdevicefamily => "spartan3e"
    )
    PORT MAP (
      clk => clk,
      phase_in => phase_in,
      sine => sine
    );

END spartan3e;
