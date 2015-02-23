LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


ENTITY uart_rx_tbench IS
END uart_rx_tbench;
 
ARCHITECTURE behavior OF uart_rx_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_RX
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         RX : IN  std_logic;
         S_TICK : IN  std_logic;
         RX_DONE_TICK : OUT  std_logic;
         DOUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal RX : std_logic := '1';
   signal S_TICK : std_logic := '0';
   signal S_TICK_next : std_logic;
   signal data : std_logic_vector(8 downto 0) := "011010010";
   
 	--Outputs
   signal RX_DONE_TICK : std_logic;
   signal DOUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
	--RX <= '1';
	RESET <= '0';
	S_TICK_next <= not(S_TICK);
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_RX PORT MAP (
          CLK => CLK,
          RESET => RESET,
          RX => RX,
          S_TICK => '1',--S_TICK,
          RX_DONE_TICK => RX_DONE_TICK,
          DOUT => DOUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
	S_TICK_process : process(CLK)
		variable counter : integer := 0;
		variable counter2 : integer := 0;
	begin
		if(rising_edge(CLK)) then
			if(counter2 > 8) then
				if(counter > 7) then
					S_TICK <= S_TICK_next;
					counter := 0;
				end if;
				counter := counter + 1;
			else
				counter2 := counter2 + 1;
			end if;
		end if;
	end process;

	RX_test_process : process(S_TICK)
		variable counter : integer := 0;
	begin
		if(rising_edge(S_TICK)) then
			if(counter < 9) then
				RX <= data(counter);
			elsif (counter >= 9 AND counter < 12) then
				RX <= '1';
			else
				counter := 0;
			end if;
			counter := counter + 1;
		end if;
	end process;
	
   
END;
