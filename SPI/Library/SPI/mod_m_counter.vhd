--=============SPI MASTER TX MODULE=====================
-- Copied By Diego Rosales
-- Last edited 31/01/2015
---------------------- NOTES -------------------------------
-- This module was taken from the book
-- FPGA Prototyping with VHDL examples
---------------------- LINKS -------------------------------
-- Book from Amazon: http://www.amazon.com/FPGA-Prototyping-VHDL-Examples-Spartan-3/dp/0470185317/ref=sr_1_6?ie=UTF8&qid=1422761365&sr=8-6&keywords=vhdl
-- My Github: https://github.com/DiegoRosales
-- My Blog: https://produccionyelectronica.blogspot.com
------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mod_m_counter is
	generic(
		N : INTEGER := 4; -- Number of bits
		M : INTEGER := 10 -- mod-M
	);
	port(
		CLK, RESET : IN STD_LOGIC;
		MAX_TICK : OUT STD_LOGIC
		--Q : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		);
end mod_m_counter;

architecture Behavioral of mod_m_counter is

	signal r_reg : UNSIGNED(N-1 downto 0) := (others => '0');
	signal r_next : UNSIGNED(N-1 downto 0) := (others => '0');

begin

	-- Register
	process(CLK, RESET)
	BEGIN
		IF(RESET = '1') THEN
			r_reg <= (others => '0');
		ELSIF(CLK'event AND CLK = '1') THEN
			r_reg <= r_next;
		END IF;
	END PROCESS;

	-- Next-state logic
	r_next <= (others => '0') when r_reg=(M-1) 
				else r_reg + 1;

	-- Output logic
	--Q <= STD_LOGIC_VECTOR(r_reg);
	MAX_TICK <= '1' WHEN r_reg=(M-1) ELSE '0';

end Behavioral;

