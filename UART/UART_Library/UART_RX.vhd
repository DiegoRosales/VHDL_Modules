library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UART_RX is
	generic(
		DBIT : INTEGER := 8;
		SB_TICK : INTEGER := 16
	);
	port(
		CLK, RESET : IN STD_LOGIC;
		RX : IN STD_LOGIC;
		S_TICK : IN STD_LOGIC;
		RX_DONE_TICK : OUT STD_LOGIC;
		DOUT : OUT STD_LOGIC_VECTOR(7 downto 0)
	);
end UART_RX;

architecture Behavioral of UART_RX is

	type STATE_TYPE is (IDLE, START, DATA, STOP);
	signal state_reg, state_next : STATE_TYPE;
	signal s_reg, s_next : UNSIGNED(3 downto 0);
	signal n_reg, n_next : UNSIGNED(2 downto 0);
	signal b_reg, b_next : STD_LOGIC_VECTOR(7 downto 0);

begin
	-- FSMD state & data registers
	PROCESS(CLK, RESET)
	BEGIN
		if (reset = '1') then
			state_reg <= IDLE;
			s_reg <= (others => '0');
			n_reg <= (others => '0');
			b_reg <= (others => '0');
		elsif (clk'event AND clk = '1') then
			state_reg <= state_next;
			s_reg <= s_next;
			n_reg <= n_next;
			b_reg <= b_next;
		end if;
	END PROCESS;

	-- Next-state logic & data path functional units/routing
	PROCESS(state_reg, s_reg, n_reg, b_reg, S_TICK, RX)
	BEGIN
		state_next <= state_reg;
		s_next <= s_reg;
		n_next <= n_reg;
		b_next <= b_reg;
		RX_DONE_TICK <= '0';
		case state_reg is
			when IDLE =>
				if (RX = '0') then
					state_next <= START;
					s_next <= (others => '0');
				end if;
			when START =>
				if (S_TICK = '1') then
					if (s_reg = 7) then
						state_next <= data;
						s_next <= (others => '0');
						n_next <= (others => '0');
					else
						s_next <= s_reg + 1;
					end if;
				end if;
			when DATA =>
				if (S_TICK = '1') then
					if (s_reg = 15) then
						s_next <= (others => '0'); -- Reset s_next counter
						b_next <= RX & b_reg(7 downto 1); -- Retreives bit value and shifts it 
						if (n_reg = (DBIT-1)) then
							state_next <= STOP;
						else
							n_next <= n_reg + 1;
						end if;
					else
						s_next <= s_reg + 1;
					end if;
				end if;
			when STOP =>
				if (S_TICK = '1') then
					if (s_reg = (SB_TICK-1)) then
						state_next <= IDLE;
						RX_DONE_TICK <= '1';
					else
						s_next <= s_reg + 1;
					end if;
				end if;
			end case;
	END PROCESS;
	DOUT <= b_reg;
end Behavioral;

