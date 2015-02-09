LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

LIBRARY SPI;
USE SPI.ALL;
 
library STD;
        use STD.textio; 
ENTITY SPI_MASTER_MODULE_tbench IS
END SPI_MASTER_MODULE_tbench;
 
ARCHITECTURE behavior OF SPI_MASTER_MODULE_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPI_MASTER_MODULE
	GENERIC(
		POL : STD_LOGIC := '1';
		PHA : STD_LOGIC := '0';
		N : INTEGER := 8;
		SLAVES : INTEGER := 2;
		ADDRESS_WIDTH : INTEGER := 1;
		CLK_DIV_COUNT : INTEGER := 16;
		CLK_DIV_BITS : INTEGER := 4
	);
	PORT(
	-- To FPGA
		CLK, RESET : IN STD_LOGIC;
		START_TX, START_RX : IN STD_LOGIC;
		DATA_OUT : IN STD_LOGIC_VECTOR(N-1 downto 0);
		DATA_IN : OUT STD_LOGIC_VECTOR(N-1 downto 0);
		CONT : IN STD_LOGIC;
		READ_DATA : IN STD_LOGIC;
		INPUT_BUFFER_DATA : OUT STD_LOGIC; -- '1' when there is data not read in the input FIFO, else '0'
		INPUT_BUFFER_FULL : OUT STD_LOGIC; -- '1' when the input FIFO is full, else '0'
		OUTPUT_BUFFER_FULL : OUT STD_LOGIC; -- '1' when the output FIFO is full, else '0'
		OUTPUT_BUFFER_DATA : OUT STD_LOGIC; -- '1' when de output FIFO has unsent data, else '0'
		ADDRESS : IN STD_LOGIC_VECTOR(ADDRESS_WIDTH-1 downto 0);
		BUSY : OUT STD_LOGIC;
	-- To Real World
		MISO : IN STD_LOGIC; -- Master Input, Slave Output
		MOSI : OUT STD_LOGIC; -- Master Output, Slave Input
		SCLK : OUT STD_LOGIC; -- Serial Clock
		SS : OUT STD_LOGIC_VECTOR(SLAVES-1 downto 0) -- Slave Select (Chip Enable)
	);
    END COMPONENT;
    
	constant N : INTEGER := 8;
	constant SLAVES : INTEGER := 2;
	constant ADDRESS_WIDTH : INTEGER := 1;
   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal START_TX : std_logic := '0';
   signal START_RX : std_logic := '0';
   signal DATA_OUT : std_logic_vector(N-1 downto 0) := (others => '0');
   signal READ_DATA : std_logic := '0';
   signal ADDRESS : std_logic_vector(ADDRESS_WIDTH-1 downto 0) := (others => '0');
   signal MISO : std_logic := '0';
   signal CONT : std_logic := '0';

 	--Outputs
   signal DATA_IN : std_logic_vector(7 downto 0);
   signal INPUT_BUFFER_DATA : std_logic;
   signal INPUT_BUFFER_FULL : std_logic;
   signal OUTPUT_BUFFER_FULL : std_logic;
   signal OUTPUT_BUFFER_DATA : std_logic;
   signal MOSI : std_logic;
   signal SCLK : std_logic;
   signal SS : std_logic_vector(SLAVES-1 downto 0);
   signal BUSY : STD_LOGIC;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;

	signal start : STD_LOGIC := '0';
	signal data_rx : STD_LOGIC_VECTOR(7 downto 0);
	signal data_tx : STD_LOGIC_VECTOR( 7 downto 0);
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SPI_MASTER_MODULE PORT MAP (
          CLK => CLK,
          RESET => RESET,
          START_TX => START_TX,
          START_RX => START_RX,
		  CONT => CONT,
          DATA_OUT => DATA_OUT,
          DATA_IN => DATA_IN,
          READ_DATA => READ_DATA,
          INPUT_BUFFER_DATA => INPUT_BUFFER_DATA,
          INPUT_BUFFER_FULL => INPUT_BUFFER_FULL,
          OUTPUT_BUFFER_FULL => OUTPUT_BUFFER_FULL,
          OUTPUT_BUFFER_DATA => OUTPUT_BUFFER_DATA,
          ADDRESS => ADDRESS,
		  BUSY => BUSY,
          MISO => MISO,
          MOSI => MOSI,
          SCLK => SCLK,
          SS => SS
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
 RST_process: process(CLK, INPUT_BUFFER_DATA)
		variable counter, counter2 : integer := 0;
		variable state : STD_LOGIC := '0';
	BEGIN
		if rising_edge(CLK) then
			START_RX <= '0';
			if(state = '0') then
				if(counter < 3) then
					reset <= '0';
					start <= '0';
					counter := counter + 1;
				elsif(counter >= 3 AND counter < 7) then
					data_tx <= X"AA";
					reset <= '1';
					start <= '0';
					counter := counter + 1;
				elsif(counter >= 7 AND counter < 8) then
					reset <= '0';
					start <= '1';
					START_RX <= '1';
					counter := counter + 1;
				elsif(counter >= 8 AND counter < 9) then
					data_tx <= X"B5";
					start <= '0';
					START_RX <= '0';
					reset <= '0';
					counter := counter + 1;
				elsif(counter >= 9 AND counter < 10) then
					counter := counter + 1;
					start <= '1';
				elsif(counter >= 10 AND counter < 11) then
					start <= '0';
				end if;
			elsif (state = '1') then
				if(counter2 >= 1) then
					START_RX <= '1';
					READ_DATA <= '0';
					if(data_tx = data_rx) then
						report "Simulation succeeded!";
						state := '0';
						--counter := 0;
						--counter2 := 0;
					end if;
				else
					READ_DATA <= '1';
					counter2 := counter2 + 1;
				end if;
			end if;
		end if;
		if(rising_edge(INPUT_BUFFER_DATA)) then
			state := '1';
		end if;
	END PROCESS;
	
	--START_RX <= start;
	START_TX <= start;
	ADDRESS <= "1";

	DATA_OUT <= data_tx;
	CONT <= '0';
	MISO <= MOSI;

END;
