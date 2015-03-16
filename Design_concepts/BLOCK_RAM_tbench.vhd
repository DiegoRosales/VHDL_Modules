LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY BLOCK_RAM_tbench IS
END BLOCK_RAM_tbench;
 
ARCHITECTURE behavior OF BLOCK_RAM_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BLOCK_RAM
    PORT(
         CLK : IN  std_logic;
         WR_EN : IN  std_logic;
         ADDR : IN  std_logic_vector(1 downto 0);
         DATA_IN : IN  std_logic_vector(7 downto 0);
         DATA_OUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal WR_EN : std_logic := '0';
   signal ADDR : std_logic_vector(1 downto 0) := (others => '0');
   signal DATA_IN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal DATA_OUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BLOCK_RAM PORT MAP (
          CLK => CLK,
          WR_EN => WR_EN,
          ADDR => ADDR,
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
 

	RD_WR_PROCESS: process
	begin
		WR_EN <= '0';
		wait for 3*CLK_period;
		wait for CLK_period/2;
		WR_EN <= '1';
		ADDR <= "00";
		DATA_IN <= X"FA";
		wait for CLK_period/2;
		ADDR <= "01";
		DATA_IN <= X"DD";
		wait for CLK_period;
		ADDR <= "01";
		DATA_IN <= X"DD";
		wait for CLK_period;
		WR_EN <= '0';
		wait;
	end process;

END;
