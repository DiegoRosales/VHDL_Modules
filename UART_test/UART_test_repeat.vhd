library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_test_repeat is

	port(
		CLK : IN STD_LOGIC;
		TX : OUT STD_LOGIC;
		RX : IN STD_LOGIC
	);

end UART_test_repeat;

architecture Behavioral of UART_test_repeat is

	signal reset_signal : STD_LOGIC := '1';

begin


	UART_module : entity work.uart
		PORT MAP(
			CLK => CLK,
			RESET => reset_signal,
			RD_UART => '0',
			WR_UART => '1',
			RX => RX,
			W_DATA => "10101111",--read_data,
			TX_FULL => OPEN,
			RX_EMPTY => OPEN,
			R_DATA => OPEN,
			TX => TX
		);

	UART_reset: PROCESS(CLK)
	variable counter : INTEGER := 0;
	BEGIN
		if(counter >= 100)then
			reset_signal <= '0';
		else
			reset_signal <= '1';
			counter := counter + 1;
		end if;
	END PROCESS;
end Behavioral;

