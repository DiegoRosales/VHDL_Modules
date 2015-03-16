library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

LIBRARY MC_25LC640A_Library;
USE MC_25LC640A_Library.ALL;
USE MC_25LC640A_Library.MC_25LC640A_TYPES.ALL;

LIBRARY UART_Library;
USE UART_Library.ALL;

entity MC_25LC640A_Test is
	PORT(
		CLK : STD_LOGIC;
		-- UART
		RX : IN STD_LOGIC;
		TX : OUT STD_LOGIC;
		-- SPI
		SCK : OUT STD_LOGIC;
		SI : OUT STD_LOGIC;
		SO : IN STD_LOGIC;
		CS : OUT STD_LOGIC;
		HOLD : OUT STD_LOGIC;
		WP : OUT STD_LOGIC;
		-- MISC
		LED : OUT STD_LOGIC
	);
	
	
end MC_25LC640A_Test;

architecture Behavioral of MC_25LC640A_Test is

	type STATE is (INSTRUCTION, DECODING, ADDRESS_HIGH, ADDRESS_LOW, DATA_RX, DATA_TX, WAITING_RX, WAITING_TX);

-----SIGNALS-----
	signal reset_signal : STD_LOGIC := '0';
	signal state_current, state_next : STATE;
	signal instruction_buffer_current, instruction_buffer_next : STD_LOGIC_VECTOR(7 downto 0);
	signal data_tx_buffer_curr, data_tx_buffer_next : STD_LOGIC_VECTOR(7 downto 0);
	--signal address_buffer_current, address_buffer_next : STD_LOGIC_VECTOR (15 downto 0);
-- UART
	signal uart_data_rx : STD_LOGIC_VECTOR(7 downto 0);
	signal uart_data_tx_curr, uart_data_tx_next : STD_LOGIC_VECTOR(7 downto 0);
	signal uart_tx_full_signal : STD_LOGIC;
	signal uart_rx_empty_signal : STD_LOGIC;
	signal uart_read_data_curr, uart_read_data_next : STD_LOGIC;
	signal uart_write_data_curr, uart_write_data_next : STD_LOGIC;
	signal uart_buffer_rx_current, uart_buffer_rx_next : STD_LOGIC_VECTOR(7 downto 0);
	signal rx_done, tx_done : STD_LOGIC;
	signal uart_rx_empty_edge, uart_rx_empty_prev,  uart_rx_empty_curr : STD_LOGIC;
-- EEPROM
	signal eeprom_data_tx : STD_LOGIC_VECTOR(7 downto 0);
	signal eeprom_data_rx : STD_LOGIC_VECTOR(7 downto 0);
	signal eeprom_addr_curr, eeprom_addr_next : STD_LOGIC_VECTOR(15 downto 0);
	signal eeprom_operation_current, eeprom_operation_next : OPERATION;
	signal eeprom_start_curr, eeprom_start_next : STD_LOGIC;
	signal eeprom_busy : STD_LOGIC;
	signal eeprom_done : STD_LOGIC;
	
-- CHIPSCOPE
	signal trigger : STD_LOGIC;
	attribute keep: boolean;
	attribute keep of trigger: signal is true;
begin

	uart_rx_empty_edge <= '1' when uart_rx_empty_curr = '0' 
							AND uart_rx_empty_curr /= uart_rx_empty_prev else '0';
	uart_rx_empty_curr <= uart_rx_empty_signal;

	UART_MODULE: entity UART_Library.UART_VER_2
	GENERIC MAP(
		-- Default settings:
		-- 19200 baud, 8 data bits, 1 stop bit, 2^2 FIFO
		--/////////////////////////////////////////
		--///////// TX and RX modules ////////////
		DBIT => 8, -- # Data bits
		SB_TICK => 16, -- # Ticks for stop bits
		
		--/////////////////////////////////////////
		--//// Baud rate generator module ////////
		DVSR => 17, -- 163 Baud rate divisor
							  -- DVSR = CLK/(16*baud rate)
		DVSR_BIT => 5, -- # of bits of DVSR
		
		--/////////////////////////////////////////
		--///////////// FIFO Module //////////////
		FIFO_RX => 2, -- # of address bits for FIFO RX
		FIFO_TX => 2 -- # of address bits for FIFO TX
	)
	PORT MAP(
		CLK => CLK,
		RESET => reset_signal,
		RD_UART => uart_read_data_curr,
		WR_UART => uart_write_data_curr,
		RX => RX,
		W_DATA => uart_data_tx_next ,
		TX_FULL => uart_tx_full_signal,
		RX_EMPTY => uart_rx_empty_signal,
		R_DATA => uart_data_rx,
		TX => TX,
		TX_DONE => tx_done,
		RX_DONE => rx_done
	);
	
	EEPROM_MODULE: entity MC_25LC640A_Library.MC_25LC640A_CONTROLLER
	PORT MAP(
		CLK => CLK,
		RESET => reset_signal,
		DATA_OUT => data_tx_buffer_curr,
		ADDR => eeprom_addr_curr,
		OPR => eeprom_operation_current,
		START => eeprom_start_curr,
		CONSEC_WR => "000000",
		SO => SO,
		DATA_IN => eeprom_data_rx,
		BUSY => eeprom_busy,
		CS => CS,
		SI => SI,
		SCK => SCK,
		WP => WP,
		HOLD => HOLD,
		DONE => eeprom_done
	);
	
	RESET_PROCESS : PROCESS(CLK)
		variable counter : INTEGER := 0;
	BEGIN
		if(rising_edge(CLK)) then
			if(counter >= 100)then
				reset_signal <= '0';
			else
				reset_signal <= '1';
				counter := counter + 1;
			end if;
		end if;
	END PROCESS;
	
	PROCESS(CLK, reset_signal)
	BEGIN
		if(reset_signal = '1') then
			eeprom_addr_curr <= (others => '0');
			state_current <= INSTRUCTION;
			uart_read_data_curr <= '0';
			instruction_buffer_current <= (others => '0');
--			address_buffer_current <= (others => '0');
			eeprom_start_curr <= '0';
			uart_write_data_curr <= '0';
		elsif(rising_edge(CLK)) then
			eeprom_addr_curr <= eeprom_addr_next;
			state_current <= state_next;
			uart_read_data_curr <= uart_read_data_next;
			uart_buffer_rx_current <= uart_buffer_rx_next;
			instruction_buffer_current <= instruction_buffer_next;
--			address_buffer_current <= address_buffer_next;
			eeprom_operation_current <= eeprom_operation_next;
			eeprom_start_curr <= eeprom_start_next;
			uart_rx_empty_prev <= uart_rx_empty_curr;
			data_tx_buffer_curr <= data_tx_buffer_next;
			uart_write_data_curr <= uart_write_data_next;
			uart_data_tx_curr <= uart_data_tx_next;
		end if;
	END PROCESS;
	
	NEXT_STATE_LOGIC: PROCESS(eeprom_addr_curr, state_current, uart_read_data_curr,
								instruction_buffer_current, tx_done, rx_done, uart_data_tx_curr,
								eeprom_start_curr, instruction_buffer_current,
								uart_rx_empty_edge, data_tx_buffer_curr, uart_write_data_curr,
								eeprom_done, eeprom_operation_current, uart_data_rx, eeprom_data_rx)
	BEGIN
		eeprom_addr_next <= eeprom_addr_curr;
		state_next <= state_current;
		uart_read_data_next <= uart_read_data_curr;
		instruction_buffer_next <= instruction_buffer_current;
--		address_buffer_next <= address_buffer_current;
		eeprom_operation_next <= eeprom_operation_current;
		eeprom_start_next <= '0';
		data_tx_buffer_next <= data_tx_buffer_curr;
		uart_write_data_next <= '0';
		uart_data_tx_next <= uart_data_tx_curr;
		
		CASE state_current IS
		WHEN INSTRUCTION =>
			LED <= '1';
			if(uart_rx_empty_edge = '1') then
				uart_read_data_next <= '1';
				instruction_buffer_next <= uart_data_rx;
				state_next <= DECODING;
			end if;
		WHEN DECODING => 
			LED <= '1';
			uart_read_data_next <= '0';
			CASE instruction_buffer_current IS
				WHEN "00000000" => -- Read
					state_next <= ADDRESS_HIGH;
					eeprom_operation_next <= RD;
				WHEN "00000001" => -- Write
					state_next <= ADDRESS_HIGH;
					eeprom_operation_next <= WR;
				WHEN "00000010" => -- Write enable
					eeprom_operation_next <= WREN;
					eeprom_start_next <= '1';
					state_next <= INSTRUCTION;
				WHEN "00000011" => -- Write disable
					eeprom_operation_next <= WRDI;
					state_next <= INSTRUCTION;
					eeprom_start_next <= '1';				
				WHEN "00000100" => -- Read status register
					eeprom_operation_next <= RDSR;
					state_next <= DATA_RX;
				WHEN "00000101" => -- Write status register
					eeprom_operation_next <= WRSR;
					state_next <= DATA_TX;
				WHEN OTHERS =>
					state_next <= INSTRUCTION;
			END CASE;
		WHEN ADDRESS_HIGH =>
			LED <= '1';
			uart_read_data_next <= '0';
			if(uart_rx_empty_edge = '1') then
				uart_read_data_next <= '1';
				eeprom_addr_next(15 downto 8) <= uart_data_rx;
				state_next <= ADDRESS_LOW;
			end if;
		WHEN ADDRESS_LOW => 
			LED <= '1';
			uart_read_data_next <= '0';
			if(uart_rx_empty_edge = '1') then
				uart_read_data_next <= '1';
				eeprom_addr_next(7 downto 0) <= uart_data_rx;
				CASE eeprom_operation_current IS
				WHEN RD =>
					state_next <= DATA_RX;
				WHEN WR =>
					state_next <= DATA_TX;
				WHEN OTHERS =>
					state_next <= INSTRUCTION;
				END CASE;
			end if;
		WHEN DATA_RX =>
			LED <= '1';
			uart_read_data_next <= '0';
			eeprom_start_next <= '1';
			state_next <= WAITING_RX;
		WHEN WAITING_RX =>
			LED <= '1';
			uart_read_data_next <= '0';
			eeprom_start_next <= '0';
			if(eeprom_done = '1') then
				uart_data_tx_next <= eeprom_data_rx;
				uart_write_data_next <= '1';
				state_next <= INSTRUCTION;
			end if;
		WHEN DATA_TX =>
			LED <= '0';
			uart_read_data_next <= '0';
			if(uart_rx_empty_edge = '1') then
				data_tx_buffer_next <= uart_data_rx;
				state_next <= WAITING_TX;
				uart_read_data_next <= '1';
				eeprom_start_next <= '1';
			end if;
		WHEN WAITING_TX =>
			LED <= '1';
			eeprom_start_next <= '0';
			uart_read_data_next <= '0';
			state_next <= INSTRUCTION;
		END CASE;
	END PROCESS;
	
	CHIPSCOPE_TRIGGER: ENTITY UART_Library.mod_m_counter
	GENERIC MAP(
		M => 2,
		N => 2
	)
	PORT MAP(
		CLK => CLK,
		RESET => '0',
		MAX_TICK => trigger
	);

end Behavioral;

