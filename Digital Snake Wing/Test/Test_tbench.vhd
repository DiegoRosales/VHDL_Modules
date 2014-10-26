--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:09:04 08/27/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/Digital Snake Wing/Test/Test_tbench.vhd
-- Project Name:  Test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Test
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
 
ENTITY Test_tbench IS
END Test_tbench;
 
ARCHITECTURE behavior OF Test_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Test
    PORT(
         SDATA : OUT  std_logic;
         SCLK : IN  std_logic;
         LRCLK : OUT  std_logic;
         MCLK : OUT  std_logic;
         CK32 : IN  std_logic;
--         CK27 : OUT  std_logic;
         CKPLL : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SCLK : std_logic := '0';
   signal CK32 : std_logic := '0';
   signal CKPLL : std_logic := '0';

 	--Outputs
   signal SDATA : std_logic;
   signal LRCLK : std_logic;
   signal MCLK : std_logic;
   signal CK27 : std_logic;

   -- Clock period definitions
   constant CK32_period : time := 31.25 ns;
   constant LRCLK_period : time := 10 ns;
   constant MCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Test PORT MAP (
          SDATA => SDATA,
          SCLK => SCLK,
          LRCLK => LRCLK,
          MCLK => MCLK,
          CK32 => CK32,
--          CK27 => CK27,
          CKPLL => CKPLL
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
