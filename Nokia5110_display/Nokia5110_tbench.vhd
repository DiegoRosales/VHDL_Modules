LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;

library Work;
use Work.Nokia5110_types.ALL;

ENTITY Nokia5110_tbench IS
END Nokia5110_tbench;
 
ARCHITECTURE behavior OF Nokia5110_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Nokia5110_display_controller
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         DATA_BYTE : IN  std_logic_vector(7 downto 0);
         X_ADDR : IN  X_RANGE;
         Y_ADDR : IN  Y_RANGE;
         WR_BUFFER : IN  std_logic;
         TX_BUFFER : IN  std_logic;
         TX_DONE : OUT  std_logic;
         RESET_DISP : OUT  std_logic;
         CE_DISP : OUT  std_logic;
         DC_DISP : OUT  std_logic;
         MOSI_DISP : OUT  std_logic;
         SCK_DISP : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal DATA_BYTE : std_logic_vector(7 downto 0) := (others => '0');
   signal X_ADDR : X_RANGE := 0;
   signal Y_ADDR : Y_RANGE := 0;
   signal WR_BUFFER : std_logic := '0';
   signal TX_BUFFER : std_logic := '0';

 	--Outputs
   signal TX_DONE : std_logic;
   signal RESET_DISP : std_logic;
   signal CE_DISP : std_logic;
   signal DC_DISP : std_logic;
   signal MOSI_DISP : std_logic;
   signal SCK_DISP : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
	signal counter_current, counter_next : UNSIGNED (3 downto 0) := (others => '0');
 
BEGIN
 
	counter_next <= counter_current + 1;
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Nokia5110_display_controller PORT MAP (
          CLK => CLK,
          RESET => RESET,
          DATA_BYTE => DATA_BYTE,
          X_ADDR => X_ADDR,
          Y_ADDR => Y_ADDR,
          WR_BUFFER => WR_BUFFER,
          TX_BUFFER => TX_BUFFER,
          TX_DONE => TX_DONE,
          RESET_DISP => RESET_DISP,
          CE_DISP => CE_DISP,
          DC_DISP => DC_DISP,
          MOSI_DISP => MOSI_DISP,
          SCK_DISP => SCK_DISP
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

	-- Reset process
 RST_process: process(CLK)
		variable counter, counter2 : integer := 0;
		variable state : STD_LOGIC := '0';
	BEGIN
		if rising_edge(CLK) then
			if(counter < 3) then
				reset <= '0';
				TX_BUFFER <= '0';
				counter := counter + 1;		
			elsif(counter >= 3 AND counter < 7) then
				reset <= '1';
				TX_BUFFER <= '0';
				counter := counter + 1;				
			elsif(counter >= 7 AND counter < 8) then
				reset <= '0';
				TX_BUFFER <= '1';
				counter := counter + 1;
			elsif(counter >= 8) then
				TX_BUFFER <= '0';
				reset <= '0';
				--counter := counter + 1;
			end if;
		end if;
	END PROCESS;
	
	
	-- data_test_process: process
	-- begin
		-- X_ADDR <= "0000001";
		-- Y_ADDR <= "000";
		-- DATA_BYTE <= X"FF";
		-- wait for 130 ns;
		-- WR_BUFFER <= '1';
		-- wait for 30 ns;
		-- WR_BUFFER <= '0';
		-- wait;
	-- end process;
	
END;
