--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:30:39 09/13/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/UART/UART_tbench.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART
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
 
ENTITY UART_tbench IS
END UART_tbench;
 
ARCHITECTURE behavior OF UART_tbench IS 

	
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART
    PORT(
         RX : IN  std_logic;
         TX : OUT  std_logic;
         CK32 : IN  std_logic;
         RESET : IN  std_logic;
         DATA_TX : IN  std_logic_vector(7 downto 0);
         DATA_RX : OUT  std_logic_vector(7 downto 0);
         START : IN  std_logic;
         STATE : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RX : std_logic := '0';
   signal CK32 : std_logic := '0';
   signal RESET : std_logic := '0';
   signal DATA_TX : std_logic_vector(7 downto 0) := (others => '0');
   signal START : std_logic := '0';

 	--Outputs
   signal TX : std_logic;
   signal DATA_RX : std_logic_vector(7 downto 0);
   signal STATE : std_logic;
   -- No clocks detected in port list. Replace CK32 below with 
   -- appropriate port name 
 
   constant CK32_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART PORT MAP (
          RX => RX,
          TX => TX,
          CK32 => CK32,
          RESET => RESET,
          DATA_TX => DATA_TX,
          DATA_RX => DATA_RX,
          START => START,
          STATE => STATE
        );

   -- Clock process definitions
   CK32_process :process
   begin
		CK32 <= '0';
		wait for CK32_period/2;
		CK32 <= '1';
		wait for CK32_period/2;
   end process;
 

   -- Stimulus process
	START <= '1';
	DATA_TX <= "11011000";

END;
