--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:27:01 09/13/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/Digital Snake Wing/ADC_Test/ADC_Control_tbench.vhd
-- Project Name:  ADC_Test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADC_Control
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
 
ENTITY ADC_Control_tbench IS
END ADC_Control_tbench;
 
ARCHITECTURE behavior OF ADC_Control_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADC_Control
    PORT(
         CK : IN  std_logic;
         RESET : IN  std_logic;
         CTRL_SEL : OUT  std_logic;
         CTRL_CK : OUT  std_logic;
         CTRL_DATA : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CK : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal CTRL_SEL : std_logic;
   signal CTRL_CK : std_logic;
   signal CTRL_DATA : std_logic;
   -- No clocks detected in port list. Replace CK below with 
   -- appropriate port name 
 
   constant CK_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADC_Control PORT MAP (
          CK => CK,
          RESET => RESET,
          CTRL_SEL => CTRL_SEL,
          CTRL_CK => CTRL_CK,
          CTRL_DATA => CTRL_DATA
        );

   -- Clock process definitions
   CK_process :process
   begin
		CK <= '0';
		wait for CK_period/2;
		CK <= '1';
		wait for CK_period/2;
   end process;
 

   -- Stimulus process

END;
