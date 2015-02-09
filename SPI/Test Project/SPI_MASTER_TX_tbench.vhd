--------------------------------------------------------------------------------
-- TEST BENCH
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

LIBRARY SPI;
USE SPI.ALL;
 
ENTITY SPI_MASTER_TX_tbench IS
END SPI_MASTER_TX_tbench;
 
ARCHITECTURE behavior OF SPI_MASTER_TX_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPI_MASTER_TX
	generic(
		N : INTEGER := 8;
		POL : STD_LOGIC := '0';
		PHA : STD_LOGIC := '0'
		);
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
		 CONT : IN std_logic;
         SCLK : IN  std_logic;
         MOSI : OUT  std_logic;
		 CE : IN std_logic;
         TX_START : IN  std_logic;
         DATA_TX : IN  std_logic_vector(7 downto 0);
         TX_DONE : OUT  std_logic
        );
    END COMPONENT;
    
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

	CONSTANT PHA : STD_LOGIC := '1';
	CONSTANT POL : STD_LOGIC := '0';
	
   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal S_TICK : std_logic := '0';
   signal TX_START : std_logic := '0';
   signal DATA_TX : std_logic_vector(7 downto 0) := X"A5";
   signal CONT : std_logic := '0';
   
 	--Outputs
   signal SCLK : std_logic;
   signal MOSI : std_logic;
   signal CE : std_logic;
   signal TX_DONE : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
   constant SCLK_period : time := 10 ns;
 
BEGIN

	SCLK_CS_generator: SCLK_CE_GEN
	GENERIC MAP (POL => POL)
	PORT MAP(
		CLK => CLK,
		RESET => RESET,
		S_TICK => S_TICK,
		SCLK => SCLK,
		CE => CE,
		START => TX_START,
		CONT => CONT
	);
 
	-- Instantiate the Unit Under Test (UUT)
	
   uut: SPI_MASTER_TX 
   GENERIC MAP (POL => POL, PHA => PHA)
   PORT MAP (
          CLK => CLK,
          RESET => RESET,
          CONT => CONT,
          SCLK => SCLK,
          MOSI => MOSI,
		  CE => CE,
          TX_START => TX_START,
          DATA_TX => DATA_TX,
          TX_DONE => TX_DONE
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
				reset <= '0';
				TX_START <= '0';
				counter := counter + 1;
			elsif(counter >= 3 AND counter < 7) then
				reset <= '1';
				TX_START <= '0';
				counter := counter + 1;
			elsif(counter >= 7 AND counter < 10) then
				CONT <= '1';
				reset <= '0';
				TX_START <= '1';
				counter := counter + 1;
			elsif(counter >= 10 AND counter < 500) then
				TX_START <= '0';
				reset <= '0';
				counter := counter + 1;
			else
				CONT <= '0';
				--counter := 7;
			end if;
		end if;
	END PROCESS;

END;
