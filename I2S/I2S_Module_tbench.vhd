--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:04:52 07/30/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/I2S/I2S_Module_tbench.vhd
-- Project Name:  I2S
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: I2S_Module
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
 
ENTITY I2S_Module_tbench IS
END I2S_Module_tbench;
 
ARCHITECTURE behavior OF I2S_Module_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT I2S_Module
    PORT(
         SCK : OUT  std_logic;
         WS : OUT  std_logic;
         SD : OUT  std_logic;
         DATA : IN  std_logic_vector(47 downto 0);
         BUSY : OUT  std_logic;
         RESET : IN  std_logic;
         CK : IN  std_logic;
         SEND : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DATA : std_logic_vector(47 downto 0) := (others => '0');
   signal RESET : std_logic := '0';
   signal CK : std_logic := '0';
   signal SEND : std_logic := '0';

 	--Outputs
   signal SCK : std_logic;
   signal WS : std_logic;
   signal SD : std_logic;
   signal BUSY : std_logic;
   -- No clocks detected in port list. Replace CK below with 
   -- appropriate port name 
 
   constant CK_period : time :=  434.0278 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   I2S_Inst: I2S_Module PORT MAP (
          SCK => SCK,
          WS => WS,
          SD => SD,
          DATA => DATA,
          BUSY => BUSY,
          RESET => RESET,
          CK => CK,
          SEND => SEND
        );

   -- Clock process definitions
   CK_process :process
   begin
		CK <= '0';
		wait for CK_period/2;
		CK <= '1';
		wait for CK_period/2;
   end process;
 



   DATA <= x"FAFAFAFAFAFA";
   SEND <= '1';
END;
