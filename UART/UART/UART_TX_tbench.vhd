LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY UART_TX_tbench IS
END UART_TX_tbench;
 
ARCHITECTURE behavior OF UART_TX_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_TX
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         TX_START : IN  std_logic;
         S_TICK : IN  std_logic;
         DIN : IN  std_logic_vector(7 downto 0);
         TX_DONE_TICK : OUT  std_logic;
         TX : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal TX_START : std_logic := '0';
   signal S_TICK : std_logic := '0';
   signal DIN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal TX_DONE_TICK : std_logic;
   signal TX : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_TX PORT MAP (
          CLK => CLK,
          RESET => RESET,
          TX_START => TX_START,
          S_TICK => S_TICK,
          DIN => DIN,
          TX_DONE_TICK => TX_DONE_TICK,
          TX => TX
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
	DIN <= "10010110";
	TX_START <= '1';
	S_TICK <= '1';

END;
