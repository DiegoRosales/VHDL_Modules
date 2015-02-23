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
         WP : OUT  std_logic
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

   -- Clock period definitions
   constant CLK_period : time := 31.25 ns;
 
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
          WP => WP
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
	RX_PROCESS: process
	begin
		RX <= '1';
		wait for 4 us;
		RX <= '0';
		wait for 4 us;
		RX <= '0';
		wait for 12 us;
		RX <= '0';
		wait for 70 us;
		RX <= '1';
		wait for 20 us;
		RX <= '0';
		wait;
	end process;

   

END;
