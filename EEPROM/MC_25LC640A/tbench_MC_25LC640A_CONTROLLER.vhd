-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

LIBRARY MC_25LC640A_Library;
USE MC_25LC640A_Library.ALL;
USE MC_25LC640A_Library.MC_25LC640A_TYPES.ALL;
  
  -- library Work;
-- use Work.MC_25LC640A_TYPES.ALL;
  
  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 
       
	-- INPUTS
	SIGNAL CLK, RESET : STD_LOGIC := '0';
	SIGNAL DATA_OUT : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	SIGNAL ADDR : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	SIGNAL OPR : OPERATION;
	SIGNAL START : STD_LOGIC := '0';
	SIGNAL CONSEC_WR : UNSIGNED(5 downto 0) := (others => '0'); -- Max 32 byte page write
	SIGNAL SO : STD_LOGIC := '0';
	
	-- OUTPUTS
	SIGNAL DATA_IN : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL BUSY : STD_LOGIC;
	SIGNAL CS : STD_LOGIC;
	SIGNAL SI : STD_LOGIC;
	SIGNAL SCK : STD_LOGIC;
	SIGNAL WP : STD_LOGIC;
	SIGNAL HOLD : STD_LOGIC;
	
	constant CLK_period : time := 10 ns;
  BEGIN

  -- Component Instantiation
	uut: entity MC_25LC640A_Library.MC_25LC640A_CONTROLLER
	PORT MAP(
		CLK => CLK,
		RESET => RESET,
		DATA_OUT => DATA_OUT,
		ADDR => ADDR,
		OPR => OPR,
		START => START,
		CONSEC_WR => CONSEC_WR,
		SO => SO,
		DATA_IN => DATA_IN,
		BUSY => BUSY,
		CS => CS,
		SI => SI,
		SCK => SCK,
		WP => WP,
		HOLD => HOLD,
		DONE => open
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
	OPR <= RD;
	ADDR <= X"0F32";
	SO <= '1';
	DATA_OUT <= X"AB";
  END;
