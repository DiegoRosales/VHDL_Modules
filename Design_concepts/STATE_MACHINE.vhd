library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity STATE_MACHINE is
	PORT(
		CLK : IN STD_LOGIC;
		OUTPUT : OUT STD_LOGIC_VECTOR(1 downto 0)
	);
end STATE_MACHINE;

architecture Behavioral of STATE_MACHINE is
	TYPE STATE IS (STATE1, STATE2, STATE3, STATE4);
	
	signal state_current, state_next : STATE;
begin
	
	OUTPUT <= "00" when state_current = STATE1 else
			"01" when state_current = STATE2 else
			"11" when state_current = STATE3 else
			"10" when state_current = STATE4;

	PROCESS(CLK)
	BEGIN
		if(rising_edge(CLK)) then
			state_current <= state_next;
		end if;
	END PROCESS;
	
	PROCESS(state_current)
	BEGIN
		state_next <= state_current;
		CASE state_current IS
		WHEN STATE1 =>
			state_next <= STATE2;
		WHEN STATE2 =>
			state_next <= STATE3;
		WHEN STATE3 =>
			state_next <= STATE4;
		WHEN STATE4 =>
			state_next <= STATE1;
		END CASE;
	END PROCESS;

end Behavioral;

