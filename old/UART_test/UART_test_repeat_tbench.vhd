LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY UART_test_repeat_tbench IS
END UART_test_repeat_tbench;
 
ARCHITECTURE behavior OF UART_test_repeat_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_test_repeat
    PORT(
         CLK : IN  std_logic;
         TX : OUT  std_logic;
         RX : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RX : std_logic := '0';

 	--Outputs
   signal TX : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_test_repeat PORT MAP (
          CLK => CLK,
          TX => TX,
          RX => RX
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;

END;
