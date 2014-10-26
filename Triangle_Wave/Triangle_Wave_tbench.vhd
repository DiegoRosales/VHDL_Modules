--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:12:47 08/18/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/Triangle_Wave/Triangle_Wave_tbench.vhd
-- Project Name:  Triangle_Wave
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Triangle_Wave
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
 
ENTITY Triangle_Wave_tbench IS
END Triangle_Wave_tbench;
 
ARCHITECTURE behavior OF Triangle_Wave_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Triangle_Wave
    PORT(
         CK : IN  std_logic;
         RESET : IN  std_logic;
         WAVE_OUT : OUT  std_logic_vector(15 downto 0);
         COUNT_PERIOD : IN INTEGER;
		 COUNT_STEPS : in INTEGER;
         COUNT_AMPLITUDE : IN  INTEGER
        );
    END COMPONENT;
    

   --Inputs
   signal CK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal COUNT_PERIOD : INTEGER := 0;
   signal COUNT_AMPLITUDE : INTEGER := 0;
   signal COUNT_STEPS : INTEGER := 1;

 	--Outputs
   signal WAVE_OUT : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace CK below with 
   -- appropriate port name 
 
   constant CK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Triangle_Wave PORT MAP (
          CK => CK,
          RESET => RESET,
          WAVE_OUT => WAVE_OUT,
          COUNT_PERIOD => COUNT_PERIOD,
		  COUNT_STEPS => COUNT_STEPS,
          COUNT_AMPLITUDE => COUNT_AMPLITUDE
        );

   -- Clock process definitions
   CK_process :process
   begin
		CK <= '0';
		wait for CK_period/2;
		CK <= '1';
		wait for CK_period/2;
   end process;
 

	COUNT_PERIOD <= 50;
	COUNT_AMPLITUDE <= 31;
	COUNT_STEPS <= 3;
	RESET <= '0';

END;
