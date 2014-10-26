--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:13:21 10/03/2014
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/CODEC Wing/DAC Test/DACTest/PCM1754_tbench.vhd
-- Project Name:  DACTest
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PCM1754
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
 
ENTITY PCM1754_tbench IS
END PCM1754_tbench;
 
ARCHITECTURE behavior OF PCM1754_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PCM1754
    PORT(
	-- DAC Signals
	    SCLK : OUT std_logic; --  System clock
		SDATA : OUT std_logic; -- Audio data I2S
		LRCLK : OUT std_logic; -- Left/Right clock I2S
		BCLK : OUT std_logic; -- Audio data clock I2S
		CONTROL : OUT std_logic_vector(2 downto 0); -- (DEMP, MUTE, FORMAT)
	-- Internal signals
		DEMP : IN STD_LOGIC;
		MUTE : IN STD_LOGIC;
		FORMAT : IN STD_LOGIC;
		CKfs : IN std_logic;
		DATA : IN std_logic_vector(47 downto 0);
		START : IN std_logic;
		RESET : IN std_logic;          
		BUSY : OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DEMP : std_logic := '0';
   signal MUTE : std_logic := '0';
   signal FORMAT : std_logic := '0';
   signal CKfs : std_logic := '0';
   signal DATA : std_logic_vector(47 downto 0) := (others => '0');
   signal START : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal SCLK : std_logic;
   signal SDATA : std_logic;
   signal LRCLK : std_logic;
   signal BCLK : std_logic;
   signal CONTROL : std_logic_vector(2 downto 0);
   signal BUSY : std_logic;

   -- Clock period definitions
   constant CKfs_period : time := 10 ns;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PCM1754 PORT MAP (
          SCLK => SCLK,
          SDATA => SDATA,
          LRCLK => LRCLK,
          BCLK => BCLK,
          CONTROL => CONTROL,
          DEMP => DEMP,
          MUTE => MUTE,
          FORMAT => FORMAT,
          CKfs => CKfs,
          DATA => DATA,
          START => START,
          RESET => RESET,
          BUSY => BUSY
        );

 
   CKfs_process :process
   begin
		CKfs <= '0';
		wait for CKfs_period/2;
		CKfs <= '1';
		wait for CKfs_period/2;
   end process;
 
	START <= '1';
	--DATA <= X"123456789ABC";
	DATA <= (others => '1');

END;
