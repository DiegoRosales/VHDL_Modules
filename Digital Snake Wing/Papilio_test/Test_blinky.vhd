----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:58:46 08/14/2014 
-- Design Name: 
-- Module Name:    Test_blinky - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test_blinky is
	port(
		CK : in STD_LOGIC;
		LED1 : out STD_LOGIC;
		LED2 : out STD_LOGIC;
		BTN1 : in STD_LOGIC;
		BTN2 : in STD_LOGIC
		);
end Test_blinky;

architecture Behavioral of Test_blinky is

signal led1_signal : STD_LOGIC := '0';
signal led2_signal : STD_LOGIC := '1';
begin

	blink: PROCESS(CK)
		variable counter : INTEGER := 0;
	BEGIN
		IF(rising_edge(CK)) THEN
			IF(BTN1 = '1' and BTN2 = '0') THEN
				counter := counter + 1;
				IF(counter >= 3200000) THEN
					led1_signal <= not(led1_signal);
					led2_signal <= not(led2_signal);
					counter := 0;
				END IF;
			ELSIF(BTN1 = '0' and BTN2 = '1') THEN
				counter := counter + 1;
				IF(counter >= 32000000) THEN
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

