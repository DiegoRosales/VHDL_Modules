
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Test_PLL is
	port(
		CK32 : in STD_LOGIC; -- Main Papilio Clock (32MHz)
		CK27 : out STD_LOGIC; -- Clock from the Papilio to the PLL
		CK384fs : in STD_LOGIC; -- Clock from the PLL to the Papilio
		LED1 : out STD_LOGIC;
		LED2 : out STD_LOGIC;
		BTN1 : in STD_LOGIC;
		BTN2 : in STD_LOGIC
		);
end Test_PLL;

architecture Behavioral of Test_PLL is

	COMPONENT DCM32to27
	PORT(
		CLKIN_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
		);
	END COMPONENT;
	
signal led1_signal : STD_LOGIC := '0';
signal led2_signal : STD_LOGIC := '1';
begin

	Inst_DCM32to27: DCM32to27 PORT MAP(
		CLKIN_IN => CK32,
		CLKFX_OUT => CK27,
		CLKIN_IBUFG_OUT => open,
		CLK0_OUT => open
	);
	
	-- This process reacts to one of the output clocks of the PLL
	blink: PROCESS(CK384fs)
		variable counter : INTEGER := 0;
	BEGIN
		IF(rising_edge(CK384fs)) THEN
			IF(BTN1 = '1' and BTN2 = '0') THEN -- Button 1 pressed
				counter := counter + 1;
				IF(counter >= 1700000) THEN
					led1_signal <= not(led1_signal);
					led2_signal <= not(led2_signal);
					counter := 0;
				END IF;
			ELSIF(BTN1 = '0' and BTN2 = '1') THEN -- Button 2 pressed
				counter := counter + 1;
				IF(counter >= 17000000) THEN
					led1_signal <= not(led1_signal);
					led2_signal <= not(led2_signal);
					counter := 0;
				END IF;		
			END IF;
		END IF;
	END PROCESS;

	LED1 <= led1_signal;
	LED2 <= led2_signal;	

end Behavioral;

