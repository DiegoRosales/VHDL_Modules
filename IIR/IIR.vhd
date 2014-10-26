----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:49 08/17/2014 
-- Design Name: 
-- Module Name:    IIR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity IIR is
	GENERIC(
		Res : INTEGER := 16
	);
	PORT(
		CK : in STD_LOGIC;
		RESET : in STD_LOGIC;
		DATA_IN : in SIGNED(Res-1 downto 0);
		DATA_OUT : out SIGNED(Res-1 downto 0)
	);
end IIR;

architecture Behavioral of IIR is

	CONSTANT a1 : SIGNED(Res-1 downto 0) := (others => '0');
	CONSTANT a2 : SIGNED(Res-1 downto 0) := (others => '0');
	CONSTANT b0 : SIGNED(Res-1 downto 0) := (others => '0');
	CONSTANT b1 : SIGNED(Res-1 downto 0) := (others => '0');
	CONSTANT b2 : SIGNED(Res-1 downto 0) := (others => '0');

	signal reg1, reg2, reg3, reg4 : SIGNED(Res-1 downto 0) := (others => '0');
	signal data_out_signal : SIGNED(2*Res-1 downto 0) := (others => '0');
	signal adder1, adder2 : SIGNED(2*Res-1 downto 0) := (others => '0');
begin

	PROCESS(CK, RESET)
	BEGIN
		IF(rising_edge(CK)) THEN
			reg1 <= DATA_IN;
			reg2 <= reg1;
			reg3 <= reg4;
			reg4 <= data_out_signal;
		END IF;
	END PROCESS;

	adder1 <= (reg2 * b2) + (reg3 * (-a2));
	adder2 <= adder1 + (reg1 * b1) + (reg4 * (-a1));
	data_out_signal <= adder2 + (DATA_IN * b0);
	DATA_OUT <= data_out_signal(Res-1 downto 0);
	
end Behavioral;

