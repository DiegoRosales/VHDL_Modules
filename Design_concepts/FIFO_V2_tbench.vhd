LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY FIFO_V2_tbench IS
END FIFO_V2_tbench;
 
ARCHITECTURE behavior OF FIFO_V2_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FIFO_V2
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         RD : IN  std_logic;
         WR : IN  std_logic;
         W_DATA : IN  std_logic_vector(7 downto 0);
         EMPTY : OUT  std_logic;
         FULL : OUT  std_logic;
         R_DATA : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal RD : std_logic := '0';
   signal WR : std_logic := '0';
   signal W_DATA : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal EMPTY : std_logic;
   signal FULL : std_logic;
   signal R_DATA : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FIFO_V2 PORT MAP (
          CLK => CLK,
          RESET => RESET,
          RD => RD,
          WR => WR,
          W_DATA => W_DATA,
          EMPTY => EMPTY,
          FULL => FULL,
          R_DATA => R_DATA
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
   
	process
	begin
		RESET <= '1';
		wait for CLK_period;
		RESET <= '0';
		wait for CLK_period/2;
		WR <= '1';
		wait for CLK_period*6;
		WR <= '0';
		wait;
		
	end process;

	W_DATA <= X"FF";
END;
