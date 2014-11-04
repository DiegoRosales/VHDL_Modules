library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Imagen_1 is 
	port(
	CK: in std_logic;
	R, G: out std_logic_vector(2 downto 0);
	B: out std_logic_vector(1 downto 0);
	H, V: out std_logic;
	H_debug, V_debug: out std_logic
	);
end Imagen_1;

architecture Imagen_1 of Imagen_1 is
component sync
	port (
		CK: in std_logic;
		HS, VS: out std_logic;
		GO: out std_logic;
		X: out std_logic_vector(9 downto 0);
		Y: out std_logic_vector(9 downto 0) 
	);
end component;
signal X, Y: std_logic_vector(9 downto 0); 
signal sig_H, sig_V: std_logic;
signal GO: std_logic;
begin
	
	Sincronizacion: sync port map(CK=>CK, HS=>sig_H, VS=>sig_V, X=>X, Y=>Y, GO=>GO);
	
--R <= "111" when (GO = '1' and Y<=158) else "000";
--G <= "111" when (GO = '1' and Y>(158) and Y<=(158+158)) else "000";
--B <= "11" when (GO = '1' and Y>(158+158) and Y<=(158+158+158)) else "00";

R <= "111" when (GO = '1' and X<=213) else "000";
G <= "111" when (GO = '1' and X>(213) and X<=(213+213)) else "000";
B <= "11" when (GO = '1' and X>(213+213) and X<=(213+213+213)) else "00";
	
H<=sig_H;
V<=sig_V;

H_debug<=sig_H;
V_debug<=sig_V;   
end;