library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library SPI;
use SPI.ALL;

LIBRARY MC_25LC640A_Library;
USE MC_25LC640A_Library.MC_25LC640A_TYPES.ALL;

entity MC_25LC640A_CONTROLLER is

	PORT(
	-- TO FPGA
	CLK, RESET : IN STD_LOGIC;
	DATA_OUT : IN STD_LOGIC_VECTOR(7 downto 0);
	DATA_IN : OUT STD_LOGIC_VECTOR(7 downto 0);
	ADDR : IN STD_LOGIC_VECTOR(15 downto 0);
	OPR : IN OPERATION;
	START : IN STD_LOGIC;
	CONSEC_WR : IN UNSIGNED(5 downto 0); -- Max 32 byte page write
	BUSY : OUT STD_LOGIC;
	DONE : OUT STD_LOGIC;
	-- TO REAL WORLD
	CS : OUT STD_LOGIC;
	SO : IN STD_LOGIC;
	SI : OUT STD_LOGIC;
	SCK : OUT STD_LOGIC;
	WP : OUT STD_LOGIC;
	HOLD : OUT STD_LOGIC
	);
end MC_25LC640A_CONTROLLER;

architecture Behavioral of MC_25LC640A_CONTROLLER is
	
	TYPE STATE IS (IDLE, EXECUTING);
	TYPE EXECUTING_STATE IS (COMMAND, ADDRESS_HIGH, ADDRESS_LOW, DATA, WAITING);
	
	CONSTANT RD_COMMAND : STD_LOGIC_VECTOR(3 downto 0) := "0011";
	CONSTANT WR_COMMAND : STD_LOGIC_VECTOR(3 downto 0) := "0010";
	CONSTANT WRDI_COMMAND : STD_LOGIC_VECTOR(3 downto 0) := "0100";
	CONSTANT WREN_COMMAND : STD_LOGIC_VECTOR(3 downto 0) := "0110";
	CONSTANT RDSR_COMMAND : STD_LOGIC_VECTOR(3 downto 0) := "0101";
	CONSTANT WRSR_COMMAND : STD_LOGIC_VECTOR(3 downto 0) := "0001";
	
	signal opr_curr, opr_next : OPERATION;
	signal state_curr, state_next : STATE;
	signal exec_state_curr, exec_state_next : EXECUTING_STATE;
	signal busy_curr, busy_next : STD_LOGIC;
	signal addr_curr, addr_next : STD_LOGIC_VECTOR(15 downto 0);
	signal sclk_counter_current, sclk_counter_next : UNSIGNED(8 downto 0);
	signal hold_curr, hold_next : STD_LOGIC;
	signal done_current, done_next : STD_LOGIC;
	-- SPI
	signal start_tx_curr, start_tx_next : STD_LOGIC;
	signal start_rx_curr, start_rx_next : STD_LOGIC;
	signal cont_curr, cont_next : STD_LOGIC;
	signal read_data_curr, read_data_next : STD_LOGIC;
	signal spi_data_in : STD_LOGIC_VECTOR(7 downto 0);
	signal spi_data_in_reg, spi_data_in_next : STD_LOGIC_VECTOR(7 downto 0);
	signal spi_data_out : STD_LOGIC_VECTOR(7 downto 0);
	signal input_buffer_full, input_buffer_data : STD_LOGIC;
	signal output_buffer_full, output_buffer_data : STD_LOGIC;
	signal spi_busy : STD_LOGIC;
	signal spi_cs : STD_LOGIC_VECTOR(0 downto 0);
	signal spi_sclk : STD_LOGIC;
	signal spi_sclk_curr, spi_sclk_prev : STD_LOGIC;
	signal spi_sclk_edge : STD_LOGIC;
	
begin
	BUSY <= busy_curr;
	CS <= spi_cs(0);
	SCK <= spi_sclk;
	DATA_IN <= spi_data_in_reg;
	HOLD <= hold_curr;
	spi_sclk_curr <= spi_sclk;
	spi_sclk_edge <= '1' when spi_sclk_curr = '1' AND (spi_sclk_curr /= spi_sclk_prev) else '0';
	DONE <= done_current;
	
	RESET_PROCESS : PROCESS(CLK, RESET)
	BEGIN
		if(RESET = '1') then
			state_curr <= IDLE;
			busy_curr <= '0';
			start_rx_curr <= '0';
			start_tx_curr <= '0';
			cont_curr <= '0';
			sclk_counter_current <= (others => '0');
			spi_data_in_reg <= (others => '0');
			read_data_curr <= '0';
			hold_curr <= '1';
			done_current <= '0';
		elsif(rising_edge(CLK)) then
			state_curr <= state_next;
			busy_curr <= busy_next;
			addr_curr <= addr_next;
			opr_curr <= opr_next;
			exec_state_curr <= exec_state_next;
			start_rx_curr <= start_rx_next;
			start_tx_curr <= start_tx_next;
			cont_curr <= cont_next;
			sclk_counter_current <= sclk_counter_next;
			spi_data_in_reg <= spi_data_in_next;
			read_data_curr <= read_data_next;
			hold_curr <= hold_next;
			spi_sclk_prev <= spi_sclk_curr;
			done_current <= done_next;
		end if;
	END PROCESS;	
	
	NEXT_STATE_PROCESS : PROCESS(CLK, START, OPR, ADDR, DATA_OUT, opr_curr, state_curr, busy_curr, addr_curr, exec_state_curr,
								start_rx_curr, start_tx_curr, cont_curr, spi_data_in_reg, read_data_curr,
								hold_curr, spi_busy, sclk_counter_current, input_buffer_data, spi_data_in,
								done_current)
	BEGIN
		opr_next <= opr_curr;
		state_next <= state_curr;
		busy_next <= busy_curr;
		addr_next <= addr_curr;
		exec_state_next <= exec_state_curr;
		start_rx_next <= start_rx_curr;
		start_tx_next <= start_tx_curr;
		cont_next <= cont_curr;
		spi_data_in_next <= spi_data_in_reg;
		read_data_next <= read_data_curr;
		hold_next <= hold_curr;
		done_next <= done_current;
		
		CASE state_curr IS
		WHEN IDLE =>
			busy_next <= '0';
			cont_next <= '0';
			start_rx_next <= '0';
			start_tx_next <= '0';
			read_data_next <= '0';
			done_next <= '0';
			if(START = '1') then
				opr_next <= OPR;
				state_next <= EXECUTING;
				busy_next <= '1';
				addr_next <= ADDR;
				exec_state_next <= COMMAND;
				cont_next <= '1';
			end if;
		WHEN EXECUTING =>
			CASE opr_curr IS
			WHEN RD => -- Read
				CASE exec_state_curr IS
				WHEN COMMAND =>
					if(start_tx_curr = '1') then
						start_tx_next <= '0';
						exec_state_next <= ADDRESS_HIGH;
					else
						spi_data_out <= "0000" & RD_COMMAND;
						start_tx_next <= '1';
					end if;					
				WHEN ADDRESS_HIGH =>
					spi_data_out <= addr_curr(15 downto 8);
					if(start_tx_curr = '1') then
						start_tx_next <= '0';						
						exec_state_next <= ADDRESS_LOW;
					else
						start_tx_next <= '1';
					end if;		
				WHEN ADDRESS_LOW =>
					spi_data_out <= addr_curr(7 downto 0);
					if(start_tx_curr = '1') then
						start_tx_next <= '0';
						exec_state_next <= DATA;
					else
						start_tx_next <= '1';
					end if;					
				WHEN DATA =>	
					if(sclk_counter_current >= 24 AND sclk_counter_current < 28) then
						start_rx_next <= '1';
					elsif(sclk_counter_current >= 28) then
						start_rx_next <= '0';
						cont_next <= '0';
					end if;
					if(input_buffer_data = '1') then
						state_next <= IDLE;
						spi_data_in_next <= spi_data_in;
						read_data_next <= '1';
						done_next <= '1';
					end if;	
				WHEN OTHERS =>
					state_next <= IDLE;
				END CASE;			
			WHEN WR => -- Write (1 byte)
				CASE exec_state_curr IS
				WHEN COMMAND =>
					if(start_tx_curr = '1') then
						start_tx_next <= '0';
						exec_state_next <= ADDRESS_HIGH;
					else
						spi_data_out <= "0000" & WR_COMMAND;
						start_tx_next <= '1';
					end if;					
				WHEN ADDRESS_HIGH =>
					spi_data_out <= addr_curr(15 downto 8);
					if(start_tx_curr = '1') then
						start_tx_next <= '0';						
						exec_state_next <= ADDRESS_LOW;
					else
						start_tx_next <= '1';
					end if;		
				WHEN ADDRESS_LOW =>
					spi_data_out <= addr_curr(7 downto 0);
					if(start_tx_curr = '1') then
						start_tx_next <= '0';
						exec_state_next <= DATA;
					else
						start_tx_next <= '1';
					end if;					
				WHEN DATA =>	
					spi_data_out <= DATA_OUT;
					if(start_tx_curr = '1') then
						start_tx_next <= '0';
						exec_state_next <= WAITING;
					else
						start_tx_next <= '1';
					end if;	
				WHEN WAITING =>
					if(sclk_counter_current = 28) then
						cont_next <= '0';
					end if;
					if(spi_busy = '0') then
						state_next <= IDLE;
						done_next <= '1';
					end if;
				END CASE;
			WHEN PAGEWR => -- Write(up to 32 bytes)
			WHEN WRDI => -- Write disable command
				cont_next <= '0';
				CASE exec_state_curr IS
				WHEN COMMAND =>
					if(start_tx_curr = '1') then
						start_tx_next <= '0';
						exec_state_next <= WAITING;
					else
						spi_data_out <= "0000" & WRDI_COMMAND;
						start_tx_next <= '1';
					end if;		
				WHEN WAITING =>
					if(spi_busy = '0') then
						state_next <= IDLE;
						done_next <= '1';
					end if;
				WHEN OTHERS =>
					state_next <= IDLE;
				END CASE;		
			WHEN WREN => -- Write enable command
				cont_next <= '0';
				CASE exec_state_curr IS
				WHEN COMMAND =>
					if(start_tx_curr = '1') then
						start_tx_next <= '0';
						exec_state_next <= WAITING;
					else
						spi_data_out <= "0000" & WREN_COMMAND;
						start_tx_next <= '1';
					end if;		
				WHEN WAITING =>
					if(spi_busy = '0') then
						state_next <= IDLE;
						done_next <= '1';
					end if;
				WHEN OTHERS =>
					state_next <= IDLE;
				END CASE;				
			WHEN RDSR => -- Read status register
				CASE exec_state_curr IS
				WHEN COMMAND =>
					if(start_tx_curr = '1') then
						start_tx_next <= '0';
						exec_state_next <= DATA;
					else
						spi_data_out <= "0000" & RDSR_COMMAND;
						start_tx_next <= '1';
					end if;									
				WHEN DATA =>	
					if(sclk_counter_current >= 8 AND sclk_counter_current < 12) then
						start_rx_next <= '1';
					elsif(sclk_counter_current >= 12) then
						start_rx_next <= '0';
						cont_next <= '0';
					end if;
					if(input_buffer_data = '1') then
						state_next <= IDLE;
						spi_data_in_next <= spi_data_in;
						read_data_next <= '1';
						done_next <= '1';
					end if;	
				WHEN OTHERS =>
					state_next <= IDLE;
				END CASE;
			WHEN WRSR => -- Write status register
				CASE exec_state_curr IS
				WHEN COMMAND =>
					if(start_tx_curr = '1') then
						start_tx_next <= '0';
						exec_state_next <= DATA;
					else
						spi_data_out <= "0000" & WRSR_COMMAND;
						start_tx_next <= '1';
					end if;									
				WHEN DATA =>	
					spi_data_out <= DATA_OUT;
					if(start_tx_curr = '1') then
						start_tx_next <= '0';
						exec_state_next <= WAITING;
					else
						start_tx_next <= '1';
					end if;	
				WHEN WAITING =>
					if(sclk_counter_current = 12) then
						cont_next <= '0';
					end if;
					if(spi_busy = '0') then
						state_next <= IDLE;
						done_next <= '1';
					end if;
				WHEN OTHERS =>
					state_next <= IDLE;
				END CASE;
			WHEN HOLD_ON => -- Hold pin set to 0
				hold_next <= '0';
				state_next <= IDLE;
				done_next <= '1';
			WHEN HOLD_OFF => -- Hold pin set to 1
				hold_next <= '1';
				state_next <= IDLE;
				done_next <= '1';
			WHEN OTHERS =>
			END CASE;
		END CASE;
	END PROCESS;
	
	SCLK_COUNTER_PROCESS : PROCESS(spi_sclk_edge, sclk_counter_current, state_curr)
	BEGIN
		sclk_counter_next <= sclk_counter_current;
		if(state_curr = IDLE) then
			sclk_counter_next <= (others => '0');
		elsif(spi_sclk_edge = '1') then
			sclk_counter_next <= sclk_counter_current + 1;
		end if;
	END PROCESS;
	
	SPI_INST: entity SPI.SPI_MASTER_MODULE
	GENERIC MAP(
		POL => '0',
		PHA => '0',
		N => 8,
		SLAVES => 1,
		ADDRESS_WIDTH => 1,
		CLK_DIV_COUNT => 16,
		CLK_DIV_BITS => 4,
		FIFO_W => 2
	)
	PORT MAP(
	-- To FPGA
		CLK => CLK, 
		RESET => RESET,
		START_TX => start_tx_curr, 
		START_RX => start_rx_curr,
		CONT => cont_curr,
		DATA_OUT => spi_data_out,
		DATA_IN => spi_data_in,
		READ_DATA => read_data_curr,
		INPUT_BUFFER_DATA => input_buffer_data, -- '1' when there is data not read in the input FIFO, else '0'
		INPUT_BUFFER_FULL => input_buffer_full, -- '1' when the input FIFO is full, else '0'
		OUTPUT_BUFFER_FULL => output_buffer_full, -- '1' when the output FIFO is full, else '0'
		OUTPUT_BUFFER_DATA => output_buffer_data, -- '1' when de output FIFO has unsent data, else '0'
		ADDRESS => (others => '0'),
		BUSY => spi_busy,
	-- To Real World
		MISO => SO, -- Master Input, Slave Output
		MOSI => SI, -- Master Output, Slave Input
		SCLK => spi_sclk, -- Serial Clock
		SS => spi_cs -- Slave Select (Chip Enable)
	);
end Behavioral;



