library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library SPI;
use SPI.ALL;

library Work;
use Work.Nokia5110_types.ALL;

entity Nokia5110_display_controller is
	GENERIC(
		DISP_ADDR : INTEGER := 0
	);
	PORT(
		-- To/from FPGA
		CLK, RESET : IN STD_LOGIC;
		DATA_BYTE : IN STD_LOGIC_VECTOR(7 downto 0);
		X_ADDR : IN X_RANGE;
		Y_ADDR : IN Y_RANGE;
		WR_BUFFER : IN STD_LOGIC;
		TX_BUFFER : IN STD_LOGIC;
		TX_DONE : OUT STD_LOGIC;
		-- To Display
		RESET_DISP : OUT STD_LOGIC;
		CE_DISP : OUT STD_LOGIC;
		DC_DISP : OUT STD_LOGIC;
		MOSI_DISP : OUT STD_LOGIC;
		SCK_DISP : OUT STD_LOGIC
	);
end Nokia5110_display_controller;

architecture Behavioral of Nokia5110_display_controller is

	constant N : INTEGER := 8;
	constant SLAVES : INTEGER := 1;
	constant ADDRESS_WIDTH : INTEGER := 1;
	
   --Inputs
	signal start_tx_current, start_tx_next : std_logic := '0';
	signal ADDRESS : std_logic_vector(ADDRESS_WIDTH-1 downto 0) := (others => '0');
	
 	--Outputs
	signal OUTPUT_BUFFER_FULL : std_logic;
	signal OUTPUT_BUFFER_DATA : std_logic;
	signal SCLK : std_logic;
	signal SS : std_logic_vector(SLAVES-1 downto 0);
	signal BUSY : STD_LOGIC;

	TYPE NOKIA5110_BUFFER IS ARRAY (5 downto 0, 83 downto 0) OF STD_LOGIC_VECTOR(7 downto 0);
	TYPE NOKIA5110_STATE IS (IDLE, UPDATING_DISPLAY);
	TYPE NOKIA5110_CURR_TX IS (X_POS, Y_POS, DATA);
	
	signal display_buffer_current : NOKIA5110_BUFFER;
	signal nokia5110_state_current, nokia5110_state_next : NOKIA5110_STATE;
	signal nokia5110_curr_tx_current, nokia5110_curr_tx_next : NOKIA5110_CURR_TX;
	signal data_tx : STD_LOGIC_VECTOR(7 downto 0);
	signal counter_x_current, counter_x_next : X_RANGE;--: UNSIGNED(6 downto 0);
	signal counter_y_current, counter_y_next : Y_RANGE; --: UNSIGNED (2 downto 0);
	signal delay_tx_current, delay_tx_next : STD_LOGIC;
	signal tx_done_current, tx_done_next : STD_LOGIC;
begin

	CE_DISP <= SS(DISP_ADDR);
	TX_DONE <= tx_done_current;

	PROCESS(CLK, RESET)
	BEGIN
		if (RESET = '1') then
			nokia5110_state_current <= IDLE;
			start_tx_current <= '0';
			counter_x_current <= 0;--<= (others => '0');
			counter_y_current <= 0;--<= (others => '0');
			delay_tx_current <= '0';
			nokia5110_curr_tx_current <= X_POS;
			tx_done_current <= '0';
		elsif (rising_edge(CLK)) then
			nokia5110_state_current <= nokia5110_state_next;
			start_tx_current <= start_tx_next;
			counter_x_current <= counter_x_next;
			counter_y_current <= counter_y_next;
			delay_tx_current <= delay_tx_next;
			nokia5110_curr_tx_current <= nokia5110_curr_tx_next;
			tx_done_current <= tx_done_next;
		end if;
	END PROCESS;

	buffer_write: PROCESS(WR_BUFFER)
	BEGIN
		-- if(RESET = '1') then
			-- display_buffer_current <= (others => (0 => X"FF", 1 => X"AA", 2 => X"BB", 3 => X"CC", 4 => X"DD", 5 => X"EE",
										-- others => (others => '0')));		
		if (rising_edge(WR_BUFFER)) then
			display_buffer_current(Y_ADDR, X_ADDR) <= DATA_BYTE;
		end if;
	END PROCESS;
	
	next_state_process: PROCESS(TX_BUFFER, nokia5110_state_current, nokia5110_curr_tx_current, counter_x_current, 
								counter_y_current, start_tx_current, OUTPUT_BUFFER_FULL, 
								delay_tx_current, tx_done_current)
	BEGIN
		-- if start_tx_current'event then
			-- report "start_tx_current triggered the event";
		-- end if;
		-- if OUTPUT_BUFFER_FULL'event then
			-- report "OUTPUT_BUFFER_FULL triggered the event";
		-- end if;				
		nokia5110_state_next <= nokia5110_state_current;
		nokia5110_curr_tx_next <= nokia5110_curr_tx_current;
		counter_x_next <= counter_x_current;
		counter_y_next <= counter_y_current;
		delay_tx_next <= delay_tx_current;
		tx_done_next <= tx_done_current;
		
		CASE nokia5110_state_current IS
		WHEN IDLE =>
			start_tx_next <= '0';
			tx_done_next <= '0';
			if(TX_BUFFER = '1') then
				nokia5110_state_next <= UPDATING_DISPLAY;
				delay_tx_next <= '1';
			end if;
		WHEN UPDATING_DISPLAY =>
			if(OUTPUT_BUFFER_FULL = '0' AND start_tx_current = '0' AND delay_tx_current = '1') then	
				if(counter_x_current <= 83) then
					if(nokia5110_curr_tx_current = X_POS) then
						data_tx <= '0' & STD_LOGIC_VECTOR(TO_UNSIGNED(counter_x_current, 7));
					elsif(nokia5110_curr_tx_current = Y_POS) then
						data_tx <= "00000" & STD_LOGIC_VECTOR(TO_UNSIGNED(counter_y_current, 3));						
					else
						data_tx <= display_buffer_current(counter_y_current, counter_x_current);
					end if;
					
					start_tx_next <= '1';
					delay_tx_next <= '0';
				else

				end if;
			elsif(start_tx_current = '1') then
				start_tx_next <= '0';
				if(nokia5110_curr_tx_current = X_POS) then
					nokia5110_curr_tx_next <= Y_POS;
				elsif(nokia5110_curr_tx_current = Y_POS) then
					nokia5110_curr_tx_next <= DATA;
				else
					nokia5110_curr_tx_next <= X_POS;
					if(counter_x_current >= 83) then
						if(counter_y_current < 5) then
							counter_x_next <= 0;--<= (others => '0');
							counter_y_next <= counter_y_current + 1;
						else
							counter_x_next <= 0;--<= (others => '0');
							counter_y_next <= 0;--<= (others => '0');
							tx_done_next <= '1';
							nokia5110_state_next <= IDLE;
						end if;
					else
						counter_x_next <= counter_x_current + 1;
					end if;
				end if;
			elsif(delay_tx_current = '0') then
				delay_tx_next <= '1';
			end if;
		END CASE;
	END PROCESS;
	
	-- data_tx <= display_buffer_current(TO_INTEGER(counter_y_current), TO_INTEGER(counter_x_current)) when nokia5110_curr_tx_current = DATA else
					-- "00000" & STD_LOGIC_VECTOR(counter_y_current) when nokia5110_curr_tx_current = Y_POS else
					-- '0' & STD_LOGIC_VECTOR(counter_x_current) when nokia5110_curr_tx_current = X_POS;
	
	SPI_MODULE: entity SPI.SPI_MASTER_MODULE_TX
	GENERIC MAP(
		POL => '0',
		PHA => '0',
		N => 8,
		SLAVES => SLAVES,
		ADDRESS_WIDTH => 1,
		CLK_DIV_COUNT => 16,
		CLK_DIV_BITS => 4,
		FIFO_W => 2
	)
	PORT MAP(
		CLK => CLK,
        RESET => RESET,
        START_TX => start_tx_current,
        DATA_OUT => data_tx,
        OUTPUT_BUFFER_FULL => OUTPUT_BUFFER_FULL,
        OUTPUT_BUFFER_DATA => OUTPUT_BUFFER_DATA,
        ADDRESS => ADDRESS,
		BUSY => BUSY,
        MOSI => MOSI_DISP,
        SCLK => SCK_DISP,
        SS => SS,
		CONT => '0'
		);
	
end Behavioral;

