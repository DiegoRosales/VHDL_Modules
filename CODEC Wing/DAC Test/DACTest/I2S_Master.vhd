---------------------------------------------------------
-- By Diego Rosales
-- Based on the Philips I2S Specification. Diagram on Page 5, figure 5.
-- Tested on the PCM1754 DAC from TI
-- Link: https://www.sparkfun.com/datasheets/BreakoutBoards/I2SBUS.pdf
-- Licence: beerware ;D
-- 26/10/2014
---------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

library UNISIM;
use UNISIM.vcomponents.all;

entity I2S_Master is
	PORT(
		SCK : OUT STD_LOGIC; -- Serial Clock
		WS : OUT STD_LOGIC; -- Word Select
		SD : OUT STD_LOGIC; -- Serial Data
		-----
		MCK : IN STD_LOGIC;
		LR : IN STD_LOGIC;
		DATA : IN STD_LOGIC_VECTOR(47 downto 0);
		CE : IN STD_LOGIC
	);
end I2S_Master;

architecture Behavioral of I2S_Master is
	signal mck_signal : STD_LOGIC;
	signal lr_signal : STD_LOGIC;
	signal fd1_output : STD_LOGIC;
	signal fd2_output : STD_LOGIC;
	signal parallel_load : STD_LOGIC;
	signal data_buffer : STD_LOGIC_VECTOR(23 downto 0);
	signal shift_reg_buffer : STD_LOGIC_VECTOR(23 downto 0);
	
begin

	FD1: FDCE generic map('0') -- Starts at 0
    port map (C=>MCK, D=>lr_signal, CE=>CE, CLR=>'0', Q=>fd1_output);
	
	FD2: FDCE generic map('0') -- Starts at 0
    port map (C=>MCK, D=>fd1_output, CE=>CE, CLR=>'0', Q=>fd2_output);
	
	parallel_load <= fd1_output XOR fd2_output;
	
	data_buffer <= DATA(47 downto 24) when not(fd1_output) = '0' else
							DATA(23 downto 0);
							
	SHIFT_REG : process(mck_signal, parallel_load)
	begin
		IF(rising_edge(mck_signal)) THEN
			-- If the parallel load signal is set
			IF(parallel_load = '1') THEN
				shift_reg_buffer <= data_buffer;
			-- Else, left shift the buffer
			ELSE
				shift_reg_buffer <= STD_LOGIC_VECTOR(unsigned(shift_reg_buffer) sll 1);
			END IF;
		END IF;
	end process;
	
	-- Signals
	mck_signal <= not(MCK);
	lr_signal <= LR;
	-- Outputs
	SCK <= mck_signal; -- Serial Clock
	WS <= lr_signal; -- Word Select (left, right)
	SD <= shift_reg_buffer(23); -- Outputs the most significant bit
	
end Behavioral;

