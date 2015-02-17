library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity P3 is
	PORT(
		CLK, RESET : IN STD_LOGIC;
		DATA_IN : IN STD_LOGIC_VECTOR(3 downto 0);
		DATA_OUT : OUT STD_LOGIC_VECTOR(3 downto 0)
	);
end P3;

architecture Behavioral of P3 is

	CONSTANT M : INTEGER := 100000; -- Aumentar para alentar el reloj. Max = 2^24

	signal counter_current, counter_next : UNSIGNED(23 downto 0) := (others => '0');
	signal counter_done : STD_LOGIC := '0';
	signal data_reg, data_next : SIGNED(3 downto 0) := (others => '0');
begin

	RESET_PROCESS: PROCESS(CLK, RESET)
	BEGIN
		if(RESET = '1') then
			counter_current <= (others => '0');
			data_reg <= (others => '0');
		elsif(rising_edge(CLK)) then
			counter_current <= counter_next;
			data_reg <= data_next;
		end if;	
	END PROCESS;
	
	counter_next <= (others => '0') when counter_current=(M-1)
				else counter_current + 1;
	
	counter_done <= '1' WHEN counter_current=(M-1) ELSE '0';
	
	PROCESS(counter_done, data_reg)
	BEGIN
		data_next <= data_reg;
		if(counter_done = '1') then
			data_next <= SIGNED(DATA_IN) - data_reg;
		end if;
	END PROCESS;
	
	DATA_OUT <= STD_LOGIC_VECTOR(data_reg);

end Behavioral;

