library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UART_test_echo is

	port(
		CLK : IN STD_LOGIC;
		TX : OUT STD_LOGIC;
		RX : IN STD_LOGIC
	);	

end UART_test_echo;

architecture Behavioral of UART_test_echo is
	
	signal reset_signal : STD_LOGIC := '1';
	signal read_signal : STD_LOGIC := '0';
	signal start : STD_LOGIC := '1';
	signal read_data : STD_LOGIC_VECTOR(7 downto 0);
	signal tx_full_signal, rx_empty_signal : STD_LOGIC := '0';
	
	signal counter, counter_next : UNSIGNED(6 downto 0) := (others => '0');

begin

	counter_next <= counter + 1;

	UART_module : entity work.uart
	PORT MAP(
		CLK => CLK,
		RESET => reset_signal,
		RD_UART => read_signal,
		WR_UART => start,
		RX => RX,
		W_DATA => read_data,--X"AB",--read_data,
		TX_FULL => tx_full_signal,
		RX_EMPTY => rx_empty_signal,
		R_DATA => read_data,
		TX => TX
	);
	
	reset_process: PROCESS(CLK)
		--variable counter, counter_next : UNSIGNED(6 downto 0) := (others => '0');
	BEGIN
		if(rising_edge(CLK)) then
			if(counter >= "1100100")then
				reset_signal <= '0';
			else
				reset_signal <= '1';
				counter <= counter_next;
			end if;
		end if;
	END PROCESS;
	
	PROCESS(rx_empty_signal, CLK)
		--variable counter  : INTEGER := 0;
	BEGIN
		if(rx_empty_signal = '0') then
			read_signal <= '1';
			start <= '1';
		else
			read_signal <= '0';
			start <= '0';
		end if;
	END PROCESS;	
end Behavioral;

