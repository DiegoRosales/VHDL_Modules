library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Wings_test is

	PORT(
		CLK : IN STD_LOGIC;
		DISP_B1, DISP_B2 : IN STD_LOGIC;
		RAM_B : IN STD_LOGIC;
		EEPROM_B1, EEPROM_B2 : IN STD_LOGIC;
		LED : OUT STD_LOGIC
	);
end Wings_test;

architecture Behavioral of Wings_test is

begin

	LED <= EEPROM_B1 OR EEPROM_B2;
	
end Behavioral;

