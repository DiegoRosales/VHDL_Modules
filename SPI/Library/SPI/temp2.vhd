--=============SPI MASTER RX MODULE=====================
-- By Diego Rosales
-- Last edited 31/01/2015
---------------------- LINKS -------------------------------
-- Book from Amazon: http://www.amazon.com/FPGA-Prototyping-VHDL-Examples-Spartan-3/dp/0470185317/ref=sr_1_6?ie=UTF8&qid=1422761365&sr=8-6&keywords=vhdl
-- My Github: https://github.com/DiegoRosales
-- My Blog: https://produccionyelectronica.blogspot.com
------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SPI_MASTER_RX is
	generic(
		N : INTEGER := 8;
		POL : STD_LOGIC := '0';
		PHA : STD_LOGIC := '0'
	);
	port(
		CLK, RESET : IN STD_LOGIC;
		SCLK : IN STD_LOGIC;
		MISO : IN STD_LOGIC;
		CE : IN STD_LOGIC;
		RX_START : IN STD_LOGIC;
		DATA_RX : OUT STD_LOGIC_VECTOR(N-1 downto 0);
		RX_DONE : OUT STD_LOGIC
	);	
end SPI_MASTER_RX;

architecture Behavioral of SPI_MASTER_RX is
	type STATE_TYPE is (IDLE, DATA);
	signal state_current, state_next : STATE_TYPE;
	signal data_reg, data_next : STD_LOGIC_VECTOR(N-1 downto 0);
	signal data_latch_mode : STD_LOGIC;
	signal rx_done_current, rx_done_next : STD_LOGIC;
	signal sclk_current, sclk_prev : STD_LOGIC;
begin

	data_latch_mode <= not(POL) when PHA = '1' else POL;
	DATA_RX <= data_reg;
	RX_DONE <= rx_done_current;
	
	FSM_PROCESS: PROCESS(CLK, RESET)
	BEGIN
		if (RESET = '1') then
			rx_done_current <= '0';
			state_current <= IDLE;
			data_reg <= (others => '0');
			sclk_prev <= POL;
		elsif (rising_edge(CLK)) then
			rx_done_current <= rx_done_next;
			state_current <= state_next;
			data_reg <= data_next;
			sclk_prev <= sclk_current;
		end if;
	END PROCESS;
	
	NEXT_STATE_PROCESS: PROCESS(RX_START, SCLK, CE, MISO, state_current, data_reg, rx_done_current, sclk_prev)
	BEGIN
		state_next <= state_current;
		data_next <= data_reg;
		rx_done_next <= rx_done_current;
		sclk_current <= SCLK;
		
		CASE state_current IS
		WHEN IDLE =>
			rx_done_next <= '0';
			if(RX_START = '1') then
				state_next <= DATA;
			end if;
		WHEN DATA =>
			if(CE = '1') then
				rx_done_next <= '1';
				state_next <= IDLE;
			elsif(sclk_prev = data_latch_mode AND SCLK = not(data_latch_mode)) then
				--data_next <= MISO & data_reg(N-1 downto 1);
				data_next <= data_reg(N-2 downto 0) & MISO;
			end if;
		END CASE;
	END PROCESS;
end Behavioral;

