library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UART is
	generic(
		-- Default settings:
		-- 19200 baud, 8 data bits, 1 stop bit, 2^2 FIFO
		--/////////////////////////////////////////
		--///////// TX and RX modules ////////////
		DBIT : INTEGER := 8; -- # Data bits
		SB_TICK : INTEGER := 16; -- # Ticks for stop bits
		
		--/////////////////////////////////////////
		--//// Baud rate generator module ////////
		DVSR : INTEGER := 208; -- 163 Baud rate divisor
							  -- DVSR = CLK/(16*baud rate)
		DVSR_BIT : INTEGER := 8; -- # of bits of DVSR
		
		--/////////////////////////////////////////
		--///////////// FIFO Module //////////////
		FIFO_W : INTEGER := 2 -- # of address bits for FIFO_W
	);
	
	port(
		-- To FPGA
		CLK, RESET : IN STD_LOGIC;
		RD_UART, WR_UART : IN STD_LOGIC; -- Toggle bits
		W_DATA : IN STD_LOGIC_VECTOR(7 downto 0); -- Write data
		R_DATA : OUT STD_LOGIC_VECTOR(7 downto 0); -- Read data
		TX_FULL, RX_EMPTY : OUT STD_LOGIC; -- Flags

		-- To real world (I/O pin)
		RX : IN STD_LOGIC;
		TX : OUT STD_LOGIC
	);
end UART;

architecture Behavioral of UART is

	signal tick : STD_LOGIC;
	signal rx_done_tick : STD_LOGIC;
	signal tx_fifo_out : STD_LOGIC_VECTOR(7 downto 0);
	signal rx_data_out : STD_LOGIC_VECTOR(7 downto 0);
	signal tx_empty, tx_fifo_not_empty : STD_LOGIC;
	signal tx_done_tick : STD_LOGIC;

begin

	baud_gen_unit : entity work.mod_m_counter
		generic map(M=>DVSR, N=>DVSR_BIT)
		port map(CLK => CLK, RESET => RESET, Q => OPEN, MAX_TICK => tick);
	
	uart_rx_unit : entity work.UART_RX
		generic map(DBIT => DBIT, SB_TICK => SB_TICK)
		port map(CLK => CLK, RESET => RESET, RX => RX,
		S_TICK => tick, RX_DONE_TICK => rx_done_tick, DOUT => rx_data_out);
	
	fifo_rx_unit : entity work.fifo
		generic map(B => DBIT, W => FIFO_W)
		port map(CLK => CLK, RESET => RESET, RD => RD_UART,
		WR => rx_done_tick, W_DATA => rx_data_out, 
		EMPTY => RX_EMPTY, FULL => open, R_DATA => R_DATA);
		
	fifo_tx_unit : entity work.fifo
		generic map(B => DBIT, W => FIFO_W)
		port map(CLK => CLK, RESET => RESET, RD => tx_done_tick,
		WR => WR_UART, W_DATA => W_DATA, 
		EMPTY => TX_EMPTY, FULL => TX_FULL, R_DATA => tx_fifo_out);
		
	uart_tx_unit : entity work.uart_tx
		generic map(DBIT => DBIT, SB_TICK => SB_TICK)
		port map(CLK => CLK, RESET => RESET, TX_START => tx_fifo_not_empty,
		S_TICK => tick, DIN => tx_fifo_out,
		TX_DONE_TICK => tx_done_tick, TX => TX);
	
	tx_fifo_not_empty <= NOT tx_empty;

end Behavioral;
