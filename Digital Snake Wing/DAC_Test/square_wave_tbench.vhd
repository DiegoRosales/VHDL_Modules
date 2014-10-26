--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:34:19 08/21/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/Digital Snake Wing/DAC_Test/square_wave_tbench.vhd
-- Project Name:  DAC_Test
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
 
ENTITY square_wave_tbench IS
END square_wave_tbench;
 
ARCHITECTURE behavior OF square_wave_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Square_wave
    PORT(
         SDATA : OUT  std_logic;
         SCLK : OUT  std_logic;
         LRCLK : OUT  std_logic;
         MCLK : OUT  std_logic;
         CK33 : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CK33 : std_logic := '0';

 	--Outputs
   signal SDATA : std_logic;
   signal SCLK : std_logic;
   signal LRCLK : std_logic;
   signal MCLK : std_logic;

   -- Clock period definitions
   constant CK33_period : time := 30 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Square_wave PORT MAP (
          SDATA => SDATA,
          SCLK => SCLK,
          LRCLK => LRCLK,
          MCLK => MCLK,
          CK33 => CK33
        );

   -- Clock process definitions
   CK33_process :process
   begin
		CK33 <= '0';
		wait for CK33_period/2;
		CK33 <= '1';
		wait for CK33_period/2;
   end process;
 

END;
