--=============SPI MASTER TX MODULE=====================
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
		TX_DONE : OUT STD_LOGIC;
		CONT : IN STD_LOGIC
	);	
		

end SPI_MASTER_TX;

architecture Behavioral of SPI_MASTER_TX is

	type STATE_TYPE is (IDLE, DATA);
	signal state_current, state_next : STATE_TYPE;
	signal data_reg, data_next : STD_LOGIC_VECTOR(N-1 downto 0);
	signal data_tx_mode : STD_LOGIC;
	signal counter_current, counter_next : UNSIGNED (3 downto 0);
	signal sclk_current, sclk_prev : STD_LOGIC;
	signal tx_done_current, tx_done_next : STD_LOGIC;
	signal delay_current, delay_next : STD_LOGIC;
	signal sclk_edge : STD_LOGIC;
	--signal data_temp : STD_LOGIC_VECTOR(N-1 downto 0);
begin
	sclk_edge <= '1' when (sclk_current /= sclk_prev) AND sclk_current = data_tx_mode else '0';
	data_tx_mode <= POL when PHA = '0' else not(POL);
	
	MOSI <= data_reg(N-1);
	TX_DONE <= tx_done_current;
	
	FSM_PROCESS: PROCESS(CLK, RESET)
	BEGIN
		if (RESET = '1') then
			state_current <= IDLE;
			data_reg <= (others => '0');
			sclk_prev <= POL;
			tx_done_current <= '0';
			delay_current <= '0';
			counter_current <= (others => '0');
		elsif (rising_edge(CLK)) then
			state_current <= state_next;
			data_reg <= data_next;
			sclk_prev <= sclk_current;
			tx_done_current <= tx_done_next;
			delay_current <= delay_next;
			counter_current <= counter_next;
		end if;
	END PROCESS;

	TX_PROCESS: PROCESS(DATA_TX, TX_START, CE, SCLK, state_current, data_reg, sclk_prev, 
						tx_done_current, delay_current, counter_current,
						sclk_edge, CONT)
		--variable delay : STD_LOGIC := '0';
	BEGIN	
		state_next <= state_current;
		data_next <= data_reg;
		sclk_current <= SCLK;
		tx_done_next <= tx_done_current;
		delay_next <= delay_current;
		counter_next <= counter_current;
		
		case state_current is
		when IDLE =>
			delay_next <= '0';
			counter_next <= (others => '0');
			tx_done_next <= '0';
			if(TX_START = '1') then
				data_next <= DATA_TX;
				state_next <= DATA;
			end if;
		when DATA =>
			tx_done_next <= '0';
			if(CE = '1') then
				state_next <= IDLE;
				tx_done_next <= '1';
			end if;
			if(PHA = '0') then
				if(sclk_edge = '1') then
					data_next <= data_reg(6 downto 0) & data_reg(7);
					counter_next <= counter_current + 1;
					if(counter_current = N-1 AND CONT = '1') then
						data_next <= DATA_TX;
						counter_next <= (others => '0');
					end if;
					if(CONT = '1' AND counter_current = N-2) then
						tx_done_next <= '1';
					end if;
				end if;
			else
				if(sclk_edge = '1') then
					if(delay_current = '1') then
						data_next <= data_reg(N-2 downto 0) & data_reg(N-1);
						counter_next <= counter_current + 1;
					else
						delay_next <= '1';
					end if;			
					if(counter_current = N-1 AND CONT = '1') then
						data_next <= DATA_TX;
						counter_next <= (others => '0');
					end if;
					if(CONT = '1' AND counter_current = N-2) then
						tx_done_next <= '1';
					end if;
				end if;			
			end if;
		end case;
	END PROCESS;
	
end Behavioral;

