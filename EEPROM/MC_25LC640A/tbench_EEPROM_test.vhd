LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tbench_EEPROM_test IS
END tbench_EEPROM_test;
 
ARCHITECTURE behavior OF tbench_EEPROM_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MC_25LC640A_Test
    PORT(
         CLK : IN  std_logic;
         RX : IN  std_logic;
         TX : OUT  std_logic;
         SCK : OUT  std_logic;
         SI : OUT  std_logic;
         SO : IN  std_logic;
         CS : OUT  std_logic;
         HOLD : OUT  std_logic;
         WP : OUT  std_logic;
		 LED : OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RX : std_logic := '1';
   signal SO : std_logic := '0';

 	--Outputs
   signal TX : std_logic;
   signal SCK : std_logic;
   signal SI : std_logic;
   signal CS : std_logic;
   signal HOLD : std_logic;
   signal WP : std_logic;
   signal LED : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 31.25 ns;
   constant SERIAL_PERIOD : time := 8.5 us;
  
	signal data_rx : STD_LOGIC_VECTOR(7 downto 0);
	signal addr_low : STD_LOGIC_VECTOR(7 downto 0);
	signal addr_high : STD_LOGIC_VECTOR(7 downto 0);
	signal instr : STD_LOGIC_VECTOR(7 downto 0);
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MC_25LC640A_Test PORT MAP (
          CLK => CLK,
          RX => RX,
          TX => TX,
          SCK => SCK,
          SI => SI,
          SO => SO,
          CS => CS,
          HOLD => HOLD,
          WP => WP,
		  LED => LED
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
-- X"00" = READ
-- X"01" = WRITE

    instr <= X"02";
	addr_high <= X"00";
	addr_low <= X"01";
	data_rx <= X"AB";
	
	RX_PROCESS: process
		variable i, j : integer := 0;
		variable instr2 : STD_LOGIC_VECTOR(7 downto 0) := X"01";
	begin
		RX <= '1';
		wait for 4 us;
		-- INSTRUCTION 1
		RX <= '0';
		wait for SERIAL_PERIOD;
		RX <= instr(0);
		wait for SERIAL_PERIOD;
		RX <= instr(1);
		wait for SERIAL_PERIOD;
		RX <= instr(2);
		wait for SERIAL_PERIOD;
		RX <= instr(3);
		wait for SERIAL_PERIOD;
		RX <= instr(4);
		wait for SERIAL_PERIOD;
		RX <= instr(5);
		wait for SERIAL_PERIOD;
		RX <= instr(6);
		wait for SERIAL_PERIOD;
		RX <= instr(7);
		wait for SERIAL_PERIOD;
		RX <= '1';
		
		-- INSTRUCTION 2
		wait for 16 us;
		RX <= '0';
		wait for SERIAL_PERIOD;
		RX <= instr2(0);
		wait for SERIAL_PERIOD;
		RX <= instr2(1);
		wait for SERIAL_PERIOD;
		RX <= instr2(2);
		wait for SERIAL_PERIOD;
		RX <= instr2(3);
		wait for SERIAL_PERIOD;
		RX <= instr2(4);
		wait for SERIAL_PERIOD;
		RX <= instr2(5);
		wait for SERIAL_PERIOD;
		RX <= instr2(6);
		wait for SERIAL_PERIOD;
		RX <= instr2(7);
		wait for SERIAL_PERIOD;
		RX <= '1';
		--wait;
		-- ADDR_HIGH
		wait for 16 us;
		RX <= '0';
		wait for SERIAL_PERIOD;
		RX <= addr_high(0);
		wait for SERIAL_PERIOD;
		RX <= addr_high(1);
		wait for SERIAL_PERIOD;
		RX <= addr_high(2);
		wait for SERIAL_PERIOD;
		RX <= addr_high(3);
		wait for SERIAL_PERIOD;
		RX <= addr_high(4);
		wait for SERIAL_PERIOD;
		RX <= addr_high(5);
		wait for SERIAL_PERIOD;
		RX <= addr_high(6);
		wait for SERIAL_PERIOD;
		RX <= addr_high(7);
		wait for SERIAL_PERIOD;
		RX <= '1';
		-- ADDR_LOW
		wait for 16 us;
		RX <= '0';
		wait for SERIAL_PERIOD;
		RX <= addr_low(0);
		wait for SERIAL_PERIOD;
		RX <= addr_low(1);
		wait for SERIAL_PERIOD;
		RX <= addr_low(2);
		wait for SERIAL_PERIOD;
		RX <= addr_low(3);
		wait for SERIAL_PERIOD;
		RX <= addr_low(4);
		wait for SERIAL_PERIOD;
		RX <= addr_low(5);
		wait for SERIAL_PERIOD;
		RX <= addr_low(6);
		wait for SERIAL_PERIOD;
		RX <= addr_low(7);
		wait for SERIAL_PERIOD;
		RX <= '1';
		-- DATA
		--wait;
		wait for 16 us;
		RX <= '0';
		wait for SERIAL_PERIOD;
		RX <= data_rx(0);
		wait for SERIAL_PERIOD;
		RX <= data_rx(1);
		wait for SERIAL_PERIOD;
		RX <= data_rx(2);
		wait for SERIAL_PERIOD;
		RX <= data_rx(3);
		wait for SERIAL_PERIOD;
		RX <= data_rx(4);
		wait for SERIAL_PERIOD;
		RX <= data_rx(5);
		wait for SERIAL_PERIOD;
		RX <= data_rx(6);
		wait for SERIAL_PERIOD;
		RX <= data_rx(7);
		wait for SERIAL_PERIOD;
		RX <= '1';
		--wait;
	end process;
	
	SO <= '1';

   

END;
