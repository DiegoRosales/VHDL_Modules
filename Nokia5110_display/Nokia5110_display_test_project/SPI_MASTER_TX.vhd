--=============SPI MASTER TX MODULE=====================
-- By Diego Rosales
-- Last edited 31/01/2015
---------------------- LINKS -------------------------------
-- Book from Amazon: http://www.amazon.com/FPGA-Prototyping-VHDL-Examples-Spartan-3/dp/0470185317/ref=sr_1_6?ie=UTF8&qid=1422761365&sr=8-6&keywords=vhdl
-- My Github: https://github.com/DiegoRosales
-- My Blog: https://produccionyelectronica.blogspot.com
------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_MASTER_TX is
	generic(
		N : INTEGER := 8;
		POL : STD_LOGIC := '0';
		PHA : STD_LOGIC := '0'
	);
	port(
		CLK, RESET : IN STD_LOGIC;
		SCLK : IN STD_LOGIC;
		MOSI : OUT STD_LOGIC;
		CE : IN STD_LOGIC;
		TX_START : IN STD_LOGIC;
		DATA_TX : IN STD_LOGIC_VECTOR(N-1 downto 0);
		TX_DONE : OUT STD_LOGIC
	);	
		

end SPI_MASTER_TX;

architecture Behavioral of SPI_MASTER_TX is

	type STATE_TYPE is (IDLE, DATA);
	signal state_current, state_next : STATE_TYPE;
	signal data_reg, data_next : STD_LOGIC_VECTOR(N-1 downto 0);
	signal data_tx_mode : STD_LOGIC;
	--signal data_shift : STD_LOGIC;
	signal sclk_current, sclk_prev : STD_LOGIC;
	signal tx_done_current, tx_done_next : STD_LOGIC;
	signal idle_delay_current, idle_delay_next : UNSIGNED(1 downto 0);
	signal delay_current, delay_next : STD_LOGIC;
begin
	data_tx_mode <= POL when PHA = '1' else not(POL);
	
	MOSI <= data_reg(N-1);
	TX_DONE <= tx_done_current;
	
	FSM_PROCESS: PROCESS(CLK, RESET)
	BEGIN
		
		if (RESET = '1') then
			state_current <= IDLE;
			data_reg <= (others => '0');
			sclk_prev <= POL;
			tx_done_current <= '0';
			idle_delay_current <= (others => '0');
			delay_current <= '0';
		elsif (rising_edge(CLK)) then
			state_current <= state_next;
			data_reg <= data_next;
			sclk_prev <= sclk_current;
			tx_done_current <= tx_done_next;
			idle_delay_current <= idle_delay_next;
			delay_current <= delay_next;
		end if;
	END PROCESS;

	TX_PROCESS: PROCESS(DATA_TX, TX_START, CE, SCLK, state_current, data_reg, sclk_prev, tx_done_current, idle_delay_current, delay_current)
		--variable delay : STD_LOGIC := '0';
	BEGIN	
		state_next <= state_current;
		data_next <= data_reg;
		sclk_current <= SCLK;
		tx_done_next <= tx_done_current;
		idle_delay_next <= idle_delay_current;
		delay_next <= delay_current;
		
		case state_current is
		when IDLE =>
			tx_done_next <= '0';
			delay_next <= '0';
			if (TX_START = '1' AND idle_delay_current >= "11") then
				idle_delay_next <= (others => '0');
				state_next <= DATA;
				data_next <= DATA_TX;
			end if;
			if (idle_delay_current < "11") then
				idle_delay_next <= idle_delay_current + 1;
			end if;
		when DATA =>
			if (CE = '1') then
				state_next <= IDLE;
				tx_done_next <= '1';
			elsif (sclk_prev = data_tx_mode AND SCLK = not(data_tx_mode)) then
				if(PHA = '1' AND delay_current = '1') then
					data_next <= data_reg(0) & data_reg(N-1 downto 1);
					delay_next <= '1';
				elsif(PHA = '1' AND delay_current = '0') then
					delay_next <= '1';
				elsif(PHA = '0') then
					delay_next <= '0';
				end if;
				if(PHA = '0') then
					data_next <= data_reg(0) & data_reg(N-1 downto 1);
				end if;
			end if;
		end case;
	END PROCESS;
	
end Behavioral;

