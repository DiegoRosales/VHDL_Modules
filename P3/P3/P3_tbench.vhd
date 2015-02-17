LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY P3_tbench IS
END P3_tbench;
 
ARCHITECTURE behavior OF P3_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT P3
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         DATA_IN : IN  std_logic_vector(3 downto 0);
         DATA_OUT : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal DATA_IN : std_logic_vector(3 downto 0) := (others => '0');
   signal DATA_OUT : std_logic_vector(3 downto 0) := (others => '0');

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
   
   signal counter_signal : INTEGER;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: P3 PORT MAP (
          CLK => CLK,
          RESET => RESET,
          DATA_IN => DATA_IN,
          DATA_OUT => DATA_OUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
	DATA_PROCESS: PROCESS(CLK)
		variable counter : INTEGER := 0;
	BEGIN
		if(rising_edge(CLK)) then
			if(counter < 100000) then
				DATA_IN <= "0100";
				counter := counter + 1;
			else
				DATA_IN <= "0000";
				
			end if;
		end if;
		counter_signal <= counter;
	END PROCESS;
	
	
		
	--DATA_IN <= "0100";

END;
