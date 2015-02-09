LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

LIBRARY SPI;
USE SPI.ALL;
 
ENTITY SCLK_CE_GEN_tbench IS
END SCLK_CE_GEN_tbench;
 
ARCHITECTURE behavior OF SCLK_CE_GEN_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SCLK_CE_GEN
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         S_TICK : IN  std_logic;
		 START : IN std_logic;
         SCLK : OUT  std_logic;
         CE : OUT  std_logic;
		 CONT : IN std_logic
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

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal S_TICK : std_logic := '0';
   signal START : std_logic := '0';
   signal CONT : std_logic := '0';
   
 	--Outputs
   signal SCLK : std_logic;
   signal CE : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
   constant SCLK_period : time := 10 ns;
 
--	signal s_tick : STD_LOGIC;
BEGIN

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
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SCLK_CE_GEN PORT MAP (
          CLK => CLK,
          RESET => RESET,
		  START => START,
          S_TICK => S_TICK,
          SCLK => SCLK,
          CE => CE,
		  CONT => CONT
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
			elsif(counter >= 10 AND counter < 50) then
				START <= '0';
				reset <= '0';
				counter := counter + 1;
			else
				--counter := 7;
			end if;
		end if;
	END PROCESS;
	
	CONT <= '0';
	--S_TICK <= '1';

END;
