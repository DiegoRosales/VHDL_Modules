--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:13:01 09/13/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/UART/UART_test_tbench.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART_test
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
 
ENTITY UART_test_tbench IS
END UART_test_tbench;
 
ARCHITECTURE behavior OF UART_test_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_test
    PORT(
         TX : OUT  std_logic;
         CK32 : IN  std_logic;
         RESET : IN  std_logic;
         START : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CK32 : std_logic := '0';
   signal RESET : std_logic := '0';
   signal START : std_logic := '0';

 	--Outputs
   signal TX : std_logic;
   -- No clocks detected in port list. Replace CK32 below with 
   -- appropriate port name 
 
   constant CK32_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_test PORT MAP (
          TX => TX,
          CK32 => CK32,
          RESET => RESET,
          START => START
        );

   -- Clock process definitions
   CK32_process :process
   begin
		CK32 <= '0';
		wait for CK32_period/2;
		CK32 <= '1';
		wait for CK32_period/2;
   end process;
 

   START <= '0';
   RESET <= '1';

END;
