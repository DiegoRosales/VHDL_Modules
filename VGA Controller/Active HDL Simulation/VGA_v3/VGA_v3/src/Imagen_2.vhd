library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Imagen_2 is 
	port(
	CK: in std_logic;
	R, G: out std_logic_vector(2 downto 0);
	B: out std_logic_vector(1 downto 0);
	H, V: out std_logic
	);
end Imagen_2;

architecture Imagen_2 of Imagen_2 is
component sync
	port (
		CK: in std_logic;
		HS, VS: out std_logic;
		GO: out std_logic;
		X: out std_logic_vector(9 downto 0);
		Y: out std_logic_vector(9 downto 0);
		CK_25: out std_logic
	);
end component;


constant X1: integer:=100;
constant Y1: integer:=100;
constant X2: integer:=200;
constant Y2: integer:=200;	 

signal X, Y: std_logic_vector(9 downto 0); 
signal GO, CK25: std_logic;
begin
	
	 
	
	Sincronizacion: sync port map(CK=>CK, HS=>H, VS=>V, X=>X, Y=>Y, GO=>GO, CK_25=>CK25);

	R <= "111" when (X>=X1 and X<=X2) and (Y>=Y1 and Y<=Y2) and GO='1' else "000"; 
	G <= "000";
	B <= "00";
	
	
    
end architecture;