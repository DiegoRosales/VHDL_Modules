library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_test is
	PORT(
		TX : OUT std_logic;
		CK32 : IN std_logic;
		RESET : IN std_logic;		
		START : IN std_logic;
		LED1 : OUT std_logic;
		LED2 : OUT STD_LOGIC
		);
end UART_test;

architecture Behavioral of UART_test is
	
	COMPONENT UART
	PORT(
		RX : IN std_logic;
		CK32 : IN std_logic;
		RESET : IN std_logic;
		DATA_TX : IN std_logic_vector(7 downto 0);
		START : IN std_logic;          
		TX : OUT std_logic;
		DATA_RX : OUT std_logic_vector(7 downto 0);
		STATE : OUT std_logic
		);
	END COMPONENT;
	
	signal STATE : STD_LOGIC;
	signal DATA_TX : std_logic_vector(7 downto 0);
begin

	Inst_UART: UART PORT MAP(
		RX => 'Z',
		TX => TX,
		CK32 => CK32,
		RESET => RESET,
		DATA_TX => DATA_TX,
		DATA_RX => open,
		START => START,
		STATE => STATE
	);
	
	DATA_TX <= "00110010";
	LED1 <= RESET;
	LED2 <= START;

end Behavioral;

