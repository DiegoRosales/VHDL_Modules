library IEEE;
use IEEE.STD_LOGIC_1164.all;

library Counters;
use Counters.packageTest.all;

entity test is
	port(
	  CLK, RESET : in  std_logic;
	  MAX_TICK   : out std_logic;
	  Q          : out std_logic_vector(7 downto 0)
	  );
end test;

architecture Behavioral of test is

  

begin

	counter : binary_counter	port map(
	  CLK => CLK,
	  RESET => RESET,
	  MAX_TICK   => MAX_TICK,
	  Q => Q
	  );
	
end Behavioral;

