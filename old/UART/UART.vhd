library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity UART is
	GENERIC( 
		dsize : INTEGER := 8;
		stop_bits : INTEGER := 2
		);
	PORT(
	--UART
		RX : IN STD_LOGIC;
		TX : OUT STD_LOGIC;
	--Internal
		CK32 : IN STD_LOGIC;
		RESET : IN STD_LOGIC;
		DATA_TX : IN STD_LOGIC_VECTOR(dsize-1 downto 0);
		DATA_RX : OUT STD_LOGIC_VECTOR(dsize-1 downto 0);
		START : IN STD_LOGIC;
		STATE : OUT STD_LOGIC
		);
end UART;

architecture Behavioral of UART is
	TYPE machine IS(ready, executing);
	
	CONSTANT count : INTEGER := 556;
	
	signal state_signal : machine := ready;
	signal data_tx_signal : STD_LOGIC_VECTOR(dsize-1 downto 0);
	signal tx_signal, rx_signal : STD_LOGIC;
	signal serial_clock : STD_LOGIC := '0';
	signal count_test : INTEGER;
begin

	PROCESS(CK32, RESET)
		VARIABLE ck_divider : INTEGER := 0;
		VARIABLE bit_count : INTEGER := 0;
	BEGIN
		IF(RESET = '0') THEN
		ELSIF(rising_edge(CK32)) THEN
			CASE state_signal IS
				
				-- Idle --
				WHEN ready =>
					tx_signal <= '1';
					--serial_clock <= '0';
					IF(START = '0') THEN
						tx_signal <= '0';
						data_tx_signal <= DATA_TX;
						state_signal <= executing;
					END IF;
						
				-- Executing --
				WHEN executing =>
					IF(ck_divider >= count) THEN
						ck_divider := 0;
						serial_clock <= not(serial_clock);
						IF(bit_count < dsize) THEN
							tx_signal <= data_tx_signal(dsize - bit_count - 1);
							bit_count := bit_count + 1;
						ELSIF(bit_count >= dsize AND bit_count < dsize + stop_bits) THEN
							tx_signal <= '1';
							bit_count := bit_count + 1;
						ELSE
							bit_count := 0;
							state_signal <= ready;
						END IF;
					ELSE
						ck_divider := ck_divider + 1;
					END IF;
				
			END CASE;
		END IF;
		IF(bit_count = 0) THEN
			count_test <= bit_count;
		ELSE
			count_test <= bit_count - 1;
		END IF;
	END PROCESS;

	TX <= tx_signal;
	rx_signal <= RX;
	STATE <= '1' WHEN state_signal = executing ELSE '0';
	DATA_RX <= (others => '0');
end Behavioral;

