--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:41:24 11/25/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/Latch_based_Flip_Flop/Latch_based_flip_flop_tbench.vhd
-- Project Name:  Latch_based_Flip_Flop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Latch_based_Flip_Flop
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
 
ENTITY Latch_based_flip_flop_tbench IS
END Latch_based_flip_flop_tbench;
 
ARCHITECTURE behavior OF Latch_based_flip_flop_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Latch_based_Flip_Flop
    PORT(
         D : IN  std_logic;
         CK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal CK : std_logic := '0';

 	--Outputs
   signal Q : std_logic := '0';
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant CK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Latch_based_Flip_Flop PORT MAP (
          D => D,
          CK => CK,
          Q => Q
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
   stim_proc: process
   begin		
      wait for 33 ns;
	  D <= '0';
	  wait for 27 ns;
	  D <= '1';
   end process;

END;
