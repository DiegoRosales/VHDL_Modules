library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier is
	PORT(
		A : in STD_LOGIC_VECTOR(31 downto 0);
		B : in STD_LOGIC_VECTOR(31 downto 0);
		C : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Multiplier;

architecture Behavioral of Multiplier is

signal mantissa_prod : STD_LOGIC_VECTOR(47 downto 0);
begin

	mantissa_prod <=std_logic_vector(unsigned(A(22 downto 0) OR X"400000") * unsigned(B(22 downto 0) OR X"400000" )); -- Step 1
	
	
	

end Behavioral;

