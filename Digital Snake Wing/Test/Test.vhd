----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:08 08/25/2014 
-- Design Name: 
-- Module Name:    Test - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Test is
	PORT(
		-- MAX5556 Signals
		SDATA : OUT STD_LOGIC;
		SCLK : IN STD_LOGIC;
		LRCLK : OUT STD_LOGIC;
		MCLK : OUT STD_LOGIC;
		-- Internal signals
		CK32 : IN STD_LOGIC;
		--CK27 : OUT STD_LOGIC;
		CKPLL : IN STD_LOGIC
	);		
end Test;

architecture Behavioral of Test is

	-- Component declaration
	COMPONENT DCM32to27
	PORT(
		CLKIN_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
		);
	END COMPONENT;

	-- Signal declaration
	--signal CK384fs : STD_LOGIC := '0';
	signal lrclk_signal : STD_LOGIC := '0';
	signal CK27 : STD_LOGIC;
begin

	-- Component instantiation
	Inst_DCM32to27: DCM32to27 PORT MAP(
		CLKIN_IN => CK32,
		CLKFX_OUT => CK27,
		CLKIN_IBUFG_OUT => open,
		CLK0_OUT => open
	);

	PROCESS(CK27)
		variable ck_divider : INTEGER := 0;
		variable counter : INTEGER := 0;
	BEGIN
		IF(rising_edge(CK27)) THEN
			--CK384fs <= not CK384fs;
			IF(counter = 127) THEN
				counter := 0;
				lrclk_signal <= not(lrclk_signal);
			ELSE
				counter := counter + 1;
				
				--counter_signal <= counter;
			END IF;
			--counter := counter + 1;
		END IF;
	END PROCESS;
	
	MCLK <= CK27;
	SDATA <= SCLK;
	LRCLK <= lrclk_signal;

end Behavioral;

