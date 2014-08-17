--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:14:23 08/14/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/Papilio_test/Test_blinky_tbench.vhd
-- Project Name:  Papilio_test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Test_blinky
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
 
ENTITY Test_blinky_tbench IS
END Test_blinky_tbench;
 
ARCHITECTURE behavior OF Test_blinky_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Test_blinky
    PORT(
         CK : IN  std_logic;
         LED1 : OUT  std_logic;
         LED2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CK : std_logic := '0';

 	--Outputs
   signal LED1 : std_logic;
   signal LED2 : std_logic;
   -- No clocks detected in port list. Replace CK below with 
   -- appropriate port name 
 
   constant CK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Test_blinky PORT MAP (
          CK => CK,
          LED1 => LED1,
          LED2 => LED2
        );

   -- Clock process definitions
   CK_process :process
   begin
		CK <= '0';
		wait for CK_period/2;
		CK <= '1';
		wait for CK_period/2;
   end process;
 

END;
