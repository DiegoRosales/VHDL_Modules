library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Latch_based_Flip_Flop is
	port(
		D: IN STD_LOGIC;
		CK: IN STD_LOGIC;
		Q: OUT STD_LOGIC
		);
end Latch_based_Flip_Flop;

architecture Behavioral of Latch_based_Flip_Flop is

signal  q_temp : STD_LOGIC := '0';
signal q_temp2 : STD_LOGIC := '0';
signal ck_temp : STD_LOGIC := '0';
begin

	ck_temp <= not(CK);
	q_temp <= D when ck_temp = '1';
	q_temp2 <= q_temp when not(ck_temp) = '1';

	
	Q <= q_temp2;

end Behavioral;

