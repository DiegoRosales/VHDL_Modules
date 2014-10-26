----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:49:05 08/18/2014 
-- Design Name: 
-- Module Name:    Triangle_Wave - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Triangle_Wave is
	GENERIC(
		N : INTEGER := 16
		);
	PORT(
		CK : in STD_LOGIC;
		RESET : in STD_LOGIC;
		WAVE_OUT : out STD_LOGIC_VECTOR(N-1 downto 0);
		COUNT_PERIOD : in INTEGER;
		COUNT_STEPS : in INTEGER;
		COUNT_AMPLITUDE : in INTEGER
	);
end Triangle_Wave;

architecture Behavioral of Triangle_Wave is
	type DIR is(UP, DOWN);
	
	signal direction : DIR := UP;
	signal wave_out_signal : INTEGER := 0;
begin

	PROCESS(CK, RESET)
		variable counter : INTEGER := 0;
	BEGIN
		IF(RESET = '1') THEN
			wave_out_signal <= 0;
			
		ELSIF(rising_edge(CK)) THEN
			IF(counter >= COUNT_PERIOD) THEN
				counter := 1;
				CASE direction IS
					WHEN UP =>
						IF(wave_out_signal >= COUNT_AMPLITUDE) THEN
							direction <= DOWN;
							wave_out_signal <= wave_out_signal - COUNT_STEPS;
						ELSE
							wave_out_signal <= wave_out_signal + COUNT_STEPS;
						END IF;
					
					WHEN DOWN =>
						IF(wave_out_signal <= 0) THEN
							direction <= UP;
							wave_out_signal <= wave_out_signal + COUNT_STEPS;
						ELSE
							wave_out_signal <= wave_out_signal - COUNT_STEPS;
						END IF;
					END CASE;
			ELSE
				counter := counter + 1;
			END IF;
		END IF;
	END PROCESS;

	WAVE_OUT <= std_logic_vector(to_unsigned(wave_out_signal, N));
end Behavioral;

