--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:50:00 10/04/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/CODEC Wing/DAC Test/DACTest/Sqare_wave_tbench.vhd
-- Project Name:  DACTest
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Square_wave
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Sqare_wave_tbench IS
END Sqare_wave_tbench;
 
ARCHITECTURE behavior OF Sqare_wave_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Square_wave
	PORT(
		-- PCM1754 Signals
		SDATA : OUT STD_LOGIC;
		SCLK : OUT STD_LOGIC;
		LRCLK : OUT STD_LOGIC;
		BCLK : OUT STD_LOGIC;
		CONTROL : OUT STD_LOGIC_VECTOR(2 downto 0);
		-- Internal signals
		CK32 : IN STD_LOGIC;
		ZEROA : IN STD_LOGIC;
		LED : OUT STD_LOGIC
	);		
    END COMPONENT;
    

   --Inputs
   signal CK32 : std_logic := '0';

 	--Outputs
   signal SDATA : std_logic;
   signal SCLK : std_logic;
   signal LRCLK : std_logic;
   signal BCLK : std_logic;
   signal CONTROL : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant CK32_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Square_wave PORT MAP (
          SDATA => SDATA,
          SCLK => SCLK,
          LRCLK => LRCLK,
          BCLK => BCLK,
          CONTROL => CONTROL,
          CK32 => CK32,
		  ZEROA => '0',
		  LED => open
        );

   -- Clock process definitions
   CK32_process :process
   begin
		CK32 <= '0';
		wait for CK32_period/2;
		CK32 <= '1';
		wait for CK32_period/2;
   end process;


END;
