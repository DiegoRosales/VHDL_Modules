library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Sync is
	port( 
	CK: in std_logic;
	HS, VS: out std_logic;
	GO: out std_logic;
	X: out std_logic_vector(9 downto 0);
	Y: out std_logic_vector(9 downto 0);
	CK_25: out std_logic
	);
end Sync;

architecture Sync of Sync is  

  constant H_DisplayArea: integer:= 640; -- horizontal display area
  constant H_Limit: integer:= 800;		 -- límite horizontal
  constant H_FrontPorch: integer:= 16; 	 -- h. front porch
  constant H_BackPorch: integer:= 48;	 -- h. back porch
  constant H_SyncPulse: integer:= 96;	 -- h. pulse width
  constant V_DisplayArea: integer:= 480; -- vertical display area
  constant V_Limit: integer:= 525;       -- límite vertical
  constant V_FrontPorch: integer:= 10;	 -- v. front porch
  constant V_BackPorch: integer:= 33;	 -- v. back porch
  constant V_SyncPulse: integer:= 2;	 -- v. pulse width   
  
  signal CK25: std_logic:='0'; -- Reloj de 25MHz		 
  
  signal CurrentHPos: std_logic_vector(9 downto 0) := (others => '0'); -- Llega a 1100100000 = 800
  signal CurrentVPos: std_logic_vector(9 downto 0) := (others => '0'); -- Llega a 1000001101 = 525	
  signal H_GO, V_GO: std_logic:='0';	
  signal Cuenta_X, Cuenta_Y: std_logic_vector(9 downto 0) := (others => '0'); -- Cuenta los pixeles	
  
begin
	
	-- Divisor de frecuencia
	process(CK)			   
	begin	
		if rising_edge(CK) then
			CK25<=not CK25;
		end if;
	end process;
	
	process(CK25)
	begin
	    if rising_edge(CK25) then	
			if CurrentHPos < H_limit-1 then
				CurrentHPos <= CurrentHPos+1;  -- Contador horizontal
			else -- Cada vez que termina una linea horizontal, aumenta la cuenta vertical
				if CurrentVPos < V_limit-1 then
					CurrentVPos<=CurrentVPos+1;	-- Contador vertical
				else
					CurrentVPos <= (others=>'0');  -- Reinicia el contador vertical
				end if;
				
				CurrentHPos <= (others=>'0');  -- Reinicia el contador horizontal
			end if;	
		end if;
	end process;	
	
	HS <= '0' when CurrentHPos < H_SyncPulse else  -- Señal de sincronización
	      '1';
	  
    VS <= '0' when CurrentVPos < V_SyncPulse else  -- Señal de sincronización
		  '1';	
	
	-- Indica cuándo puede empezar a desplegarse la imagen
	H_GO <= '1' when (CurrentHpos>=H_SyncPulse+H_BackPorch) and (CurrentHPos<H_SyncPulse+H_BackPorch+H_DisplayArea) else
			'0';   
																									 
	V_GO <= '1'	when (CurrentVpos>=V_SyncPulse+V_BackPorch) and (CurrentVPos<V_SyncPulse+V_BackPorch+V_DisplayArea) else
			'0'; 
		
	-- Cuenta los pixeles cuando comienza el área visible
	Cuenta_X <= CurrentHPos - H_SyncPulse -	H_BackPorch when H_GO = '1' else (others => '0');		   
	
	Cuenta_Y <= CurrentVPos - V_SyncPulse -	V_BackPorch when V_GO = '1' else (others => '0'); 
		
	GO <= H_GO and V_GO;
	X <= Cuenta_X;
	Y <= Cuenta_Y;	 
	CK_25<=CK25;
	
end architecture;
	