LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY STATE_MACHINE_tbench IS
END STATE_MACHINE_tbench;
 
ARCHITECTURE behavior OF STATE_MACHINE_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT STATE_MACHINE
    PORT(
         CLK : IN  std_logic;
		 OUTPUT : OUT std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   
   --Outputs
   signal OUTPUT : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: STATE_MACHINE PORT MAP (
          CLK => CLK,
		  OUTPUT => OUTPUT
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
