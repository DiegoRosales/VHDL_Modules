library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BLOCK_RAM is
	generic( 
		N : INTEGER := 2; -- Number of addresses
		M : INTEGER := 8 -- Number of bits (multiples of 4 for optimal performance)
		);
	port(
		CLK : IN STD_LOGIC;
		WR_EN : IN STD_LOGIC;
		ADDR : IN STD_LOGIC_VECTOR(N-1 downto 0);
		DATA_IN : IN STD_LOGIC_VECTOR(M-1 downto 0);
		DATA_OUT : OUT STD_LOGIC_VECTOR(M-1 downto 0)
	);
	
end BLOCK_RAM;

architecture Behavioral of BLOCK_RAM is
	type MEMORY_TYPE is ARRAY((2**N)-1 downto 0) of STD_LOGIC_VECTOR(M-1 downto 0);
	
	signal memory : MEMORY_TYPE;
begin

	PROCESS(CLK)
	BEGIN
		if(rising_edge(CLK)) then
			if(WR_EN = '1') then
				memory(to_integer(unsigned(ADDR))) <= DATA_IN;
			end if;
		end if;
	END PROCESS;

	DATA_OUT <= memory(to_integer(unsigned(ADDR)));
end Behavioral;

