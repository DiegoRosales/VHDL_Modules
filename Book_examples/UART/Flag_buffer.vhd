library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Flag_buffer is
	generic(W: INTEGER := 8);
	port(
		CLK, RESET : IN STD_LOGIC;
		CLR_FLAG, SET_FLAG : IN STD_LOGIC;
		DIN : IN STD_LOGIC_VECTOR(W-1 downto 0);
		DOUT : OUT STD_LOGIC_VECTOR(W-1 downto 0);
		FLAG : OUT STD_LOGIC
	);
	
end Flag_buffer;

architecture Behavioral of Flag_buffer is

	signal buf_reg, buf_next : STD_LOGIC_VECTOR(W-1 downto 0);
	signal flag_reg, flag_next : STD_LOGIC := '0';

begin
	-- FF & register
	PROCESS(CLK, RESET)
	BEGIN
		if (RESET = '1') then
			buf_reg <= (others => '0');
			flag_reg <= '0';
		elsif (clk'event AND clk = '1') then
			buf_reg <= buf_next;
			flag_reg <= flag_next;
		end if;
	END PROCESS;

	-- Next-state logic
	PROCESS(buf_reg, flag_reg, SET_FLAG, CLR_FLAG, DIN)
	BEGIN
		buf_next <= buf_reg;
		flag_next <= flag_reg;
		if (SET_FLAG = '1') then
			buf_next <= DIN;
			flag_next <= '1';
		elsif (CLR_FLAG = '1') then
			flag_next <= '0';
		end if;
	END PROCESS;
	
	DOUT <= buf_reg;
	FLAG <= flag_reg;
	
end Behavioral;

