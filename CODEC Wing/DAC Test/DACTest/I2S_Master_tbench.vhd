--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:07:59 10/25/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/CODEC Wing/DAC Test/DACTest/I2S_Master_tbench.vhd
-- Project Name:  DACTest
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: I2S_Master
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
 
ENTITY I2S_Master_tbench IS
END I2S_Master_tbench;
 
ARCHITECTURE behavior OF I2S_Master_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT I2S_Master
    PORT(
         SCK : OUT  std_logic;
         WS : OUT  std_logic;
         SD : OUT  std_logic;
         MCK : IN  std_logic;
         LR : IN  std_logic;
         DATA : IN  std_logic_vector(47 downto 0);
		 CE : IN STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal MCK : std_logic := '0';
   signal LR : std_logic := '0';
   signal DATA : std_logic_vector(47 downto 0) := (others => '0');
   signal CE : std_logic := '1';

 	--Outputs
   signal SCK : std_logic;
   signal WS : std_logic;
   signal SD : std_logic;
   signal BUSY : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant MCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: I2S_Master PORT MAP (
          SCK => SCK,
          WS => WS,
          SD => SD,
          MCK => MCK,
          LR => LR,
          DATA => DATA,
		  CE => CE
        );

   -- Clock process definitions
   MCK_process :process
   begin
		MCK <= '0';
		wait for MCK_period/2;
		MCK <= '1';
		wait for MCK_period/2;
   end process;

   stim_proc: process(MCK)
		variable counter : integer := 0;
   begin
		if(rising_edge(MCK)) then
			if(counter >= 60) then
				counter := 0;
				LR <= not(LR);
			else
				counter := counter + 1;
			end if;
				
		end if;
   end process;

   DATA <= X"FAFAFA00ABCD";
 
END;
