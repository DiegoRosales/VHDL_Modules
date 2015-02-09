LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
LIBRARY SPI;
USE SPI.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SPI_MASTER_RX_tbench IS
END SPI_MASTER_RX_tbench;
 
ARCHITECTURE behavior OF SPI_MASTER_RX_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPI_MASTER_RX
		generic(
		N : INTEGER := 8;
		POL : STD_LOGIC := '0';
		PHA : STD_LOGIC := '0'
	);
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
--         S_TICK : IN  std_logic;
         SCLK : IN  std_logic;
         MISO : IN  std_logic;
         RX_START : IN  std_logic;
         DATA_RX : OUT  std_logic_vector(7 downto 0);
         RX_DONE : OUT  std_logic;
		 CE : IN STD_LOGIC;
		 CONT : IN STD_LOGIC
        );
    END COMPONENT;
    
	COMPONENT mod_m_counter
	GENERIC(
		N : INTEGER := 4; -- Number of bits
		M : INTEGER := 10 -- mod-M
	);
	PORT(
		CLK, RESET : IN STD_LOGIC;
		MAX_TICK : OUT STD_LOGIC
		--Q : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		);	
	END COMPONENT;

	CONSTANT PHA : STD_LOGIC := '0';
	CONSTANT POL : STD_LOGIC := '0';
	
   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal S_TICK : std_logic := '0';
   signal SCLK : std_logic := '0';
   signal MISO : std_logic := '0';
   signal RX_START : std_logic := '0';
   signal CONT : std_logic := '0';
   
 	--Outputs
   signal DATA_RX : std_logic_vector(7 downto 0);
   signal RX_DONE : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
   
	COMPONENT SCLK_CE_GEN
		GENERIC(
		POL : STD_LOGIC := '1';
		N : INTEGER := 8
		);
		PORT(
			CLK, RESET : IN STD_LOGIC;
			S_TICK : IN STD_LOGIC;
			START : IN STD_LOGIC;
			SCLK : OUT STD_LOGIC;
			CE : OUT STD_LOGIC;
			CONT : IN STD_LOGIC
		);
	END COMPONENT;
	
	signal START : STD_LOGIC := '0';
	signal CE : STD_LOGIC := '0';
	signal data_tx_mode : STD_LOGIC;
	signal DATA : STD_LOGIC_VECTOR(7 downto 0) := X"FA";
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
BEGIN
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 
	data_tx_mode <= not(POL) when PHA = '1' else POL;
	-- Instantiate the Unit Under Test (UUT)
   uut: SPI_MASTER_RX
   GENERIC MAP (PHA => PHA, POL => POL)
   PORT MAP (
          CLK => CLK,
          RESET => RESET,
--          S_TICK => S_TICK,
          SCLK => SCLK,
          MISO => MISO,
          RX_START => START,
          DATA_RX => DATA_RX,
          RX_DONE => RX_DONE,
		  CE => CE,
		  CONT => CONT
        );

	SCLK_CS_generator: SCLK_CE_GEN
	GENERIC MAP (POL => POL)
	PORT MAP(
		CLK => CLK,
		RESET => RESET,
		S_TICK => S_TICK,
		SCLK => SCLK,
		CE => CE,
		START => START,
		CONT => CONT
	);
	
	Inst_mod_m_counter: mod_m_counter
	GENERIC MAP(
		N => 4,
		M => 16
	)
	PORT MAP(
		CLK => CLK,
		RESET => RESET,
		MAX_TICK => s_tick
		--Q => open
	);
   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
   
	RST_process: process(CLK)
		variable counter : integer := 0;
	BEGIN
		if rising_edge(CLK) then
			if(counter < 3) then
				--CONT <= '1';
				reset <= '0';
				START <= '0';
				counter := counter + 1;
			elsif(counter >= 3 AND counter < 7) then
				reset <= '1';
				START <= '0';
				counter := counter + 1;
			elsif(counter >= 7 AND counter < 10) then
				reset <= '0';
				START <= '1';
				counter := counter + 1;
			elsif(counter >= 10 AND counter < 500) then
				START <= '0';
				reset <= '0';
				counter := counter + 1;
			else
				CONT <= '0';
			end if;
		end if;
	END PROCESS;
	
	MISO_PROCESS: process(SCLK)
		variable counter : integer := 0;
	BEGIN
		if(SCLK'event AND SCLK = data_tx_mode) then
			if(counter < 7) then
				counter := counter + 1;
				MISO <= DATA(7-counter);
			else
				counter := 0;
				MISO <= DATA(7-counter);
			end if;
		end if;
	END PROCESS;

	--MISO <= '1';
END;
