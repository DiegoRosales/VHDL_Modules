--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:02:00 01/06/2015
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/Book_examples/Binary_Counter/binary_counter_tbench.vhd
-- Project Name:  Binary_Counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: binary_counter
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
 
ENTITY binary_counter_tbench IS
END binary_counter_tbench;
 
ARCHITECTURE behavior OF binary_counter_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT binary_counter
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         MAX_TICK : OUT  std_logic;
         Q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal MAX_TICK : std_logic;
   signal Q : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 4.5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: binary_counter PORT MAP (
          CLK => CLK,
          RESET => RESET,
          MAX_TICK => MAX_TICK,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;

END;
