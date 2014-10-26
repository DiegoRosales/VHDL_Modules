library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADC_test is

	PORT(
	-- Internal
		CK32 : in STD_LOGIC;
		RESET : IN std_logic;
		START : IN std_logic;   
		LED1 : OUT std_logic;
		LED2 : OUT std_logic;
	--PLL
		CK27 : out STD_LOGIC;
	-- ADC
	-- Control       
		CTRL_SEL : OUT std_logic;
		CTRL_CK : OUT std_logic;
		CTRL_DATA : OUT std_logic
		);

end ADC_test;

architecture Behavioral of ADC_test is

	COMPONENT ADC_Control
	PORT(
		CK : IN std_logic;
		RESET : IN std_logic;
		START : IN std_logic;          
		CTRL_SEL : OUT std_logic;
		CTRL_CK : OUT std_logic;
		CTRL_DATA : OUT std_logic;
		LED1 : OUT std_logic;
		LED2 : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT DCM32to27
	PORT(
		CLKIN_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
		);
	END COMPONENT;
	
	signal ck27_signal : STD_LOGIC;
BEGIN

	CK27 <= ck27_signal;
	
	Inst_DCM32to27: DCM32to27 PORT MAP(
		CLKIN_IN => CK32,
		CLKFX_OUT => ck27_signal,
		CLKIN_IBUFG_OUT => open,
		CLK0_OUT => open
	);

	Inst_ADC_Control: ADC_Control PORT MAP(
		CK => ck27_signal,
		RESET => RESET,
		CTRL_SEL => CTRL_SEL,
		CTRL_CK => CTRL_CK,
		CTRL_DATA => CTRL_DATA,
		START => START,
		LED1 => LED1,
		LED2 => LED2 
	);

end Behavioral;

