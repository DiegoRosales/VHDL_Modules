LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY UART_tbench IS
END UART_tbench;
 
ARCHITECTURE behavior OF UART_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         RD_UART : IN  std_logic;
         WR_UART : IN  std_logic;
         RX : IN  std_logic;
         W_DATA : IN  std_logic_vector(7 downto 0);
         TX_FULL : OUT  std_logic;
         RX_EMPTY : OUT  std_logic;
         R_DATA : OUT  std_logic_vector(7 downto 0);
         TX : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal RD_UART : std_logic := '0';
   signal WR_UART : std_logic := '0';
   signal RX : std_logic := '0';
   signal W_DATA : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal TX_FULL : std_logic;
   signal RX_EMPTY : std_logic;
   signal R_DATA : std_logic_vector(7 downto 0);
   signal TX : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART PORT MAP (
          CLK => CLK,
          RESET => RESET,
          RD_UART => RD_UART,
          WR_UART => WR_UART,
          RX => RX,
          W_DATA => W_DATA,
          TX_FULL => TX_FULL,
          RX_EMPTY => RX_EMPTY,
          R_DATA => R_DATA,
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

   delay_process: process(CLK)
	variable counter: integer := 0;
   begin
   if(rising_edge(CLK)) then
		if(counter >= 100 AND counter <= 102) then
			RESET <= '0';
			WR_UART <= '1';
			counter := counter + 1;
		elsif(counter > 102) then
			WR_UART <= '0';
		else
			RESET <= '1';
			counter := counter + 1;
		end if;
	end if;
   end process;
	W_DATA <= "01011011";
END;
