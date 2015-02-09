--=============SPI MASTER RX MODULE=====================
-- By Diego Rosales
-- Last edited 08/02/2015
---------------------- LINKS -------------------------------
-- Book from Amazon: http://www.amazon.com/FPGA-Prototyping-VHDL-Examples-Spartan-3/dp/0470185317/ref=sr_1_6?ie=UTF8&qid=1422761365&sr=8-6&keywords=vhdl
-- My Github: https://github.com/DiegoRosales
-- My Blog: https://produccionyelectronica.blogspot.com
------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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
		RX_DONE : OUT STD_LOGIC;
		CONT : IN STD_LOGIC
	);	
end SPI_MASTER_RX;

architecture Behavioral of SPI_MASTER_RX is
	type STATE_TYPE is (IDLE, DATA);
	signal state_current, state_next : STATE_TYPE;
	signal data_reg, data_next : STD_LOGIC_VECTOR(N-1 downto 0);
	signal data_latch_mode : STD_LOGIC;
	signal rx_done_current, rx_done_next : STD_LOGIC;
	signal sclk_current, sclk_prev : STD_LOGIC;
	signal sclk_edge : STD_LOGIC;
	signal counter_current, counter_next : UNSIGNED(3 downto 0);
	signal data_temp : STD_LOGIC_VECTOR(N-1 downto 0);
	signal rx_done_en : STD_LOGIC;
begin

	sclk_edge <= '1' when (sclk_current /= sclk_prev) AND sclk_current = data_latch_mode else '0';
	data_latch_mode <= not(POL) when PHA = '0' else POL;
	DATA_RX <= data_temp;
	RX_DONE <= rx_done_current;
	
	FSM_PROCESS: PROCESS(CLK, RESET)
	BEGIN
		if (RESET = '1') then
			rx_done_current <= '0';
			state_current <= IDLE;
			data_reg <= (others => '0');
			sclk_prev <= POL;
			counter_current <= (others => '0');
		elsif (rising_edge(CLK)) then
			rx_done_current <= rx_done_next;
			state_current <= state_next;
			data_reg <= data_next;
			sclk_prev <= sclk_current;
			counter_current <= counter_next;
		end if;
	END PROCESS;
	
	NEXT_STATE_PROCESS: PROCESS(RX_START, SCLK, CE, MISO, state_current, data_reg, 
								rx_done_current, sclk_prev, counter_current)
	BEGIN
		state_next <= state_current;
		data_next <= data_reg;
		rx_done_next <= rx_done_current;
		sclk_current <= SCLK;
		counter_next <= counter_current;
		
		CASE state_current IS
		WHEN IDLE =>
			rx_done_next <= '0';
			counter_next <= (others => '0');
			rx_done_en <= '0';
			if(RX_START = '1') then
				state_next <= DATA;
			end if;
		WHEN DATA =>
			rx_done_next <= '0';
			if(CE = '1') then
				rx_done_next <= '1';
				state_next <= IDLE;
				data_temp <= data_reg;
			elsif(sclk_edge = '1') then
				counter_next <= counter_current + 1;
				data_next <= data_reg(N-2 downto 0) & MISO;
				if(CONT = '1' AND counter_current = N-1) then
					counter_next <= (others => '0');
					rx_done_en <= '1';
				end if;				
			else
				if(rx_done_en = '1') then
					rx_done_en <= '0';
					rx_done_next <= '1';
					data_temp <= data_next;
				end if;			
			end if;
		END CASE;
	END PROCESS;
end Behavioral;

