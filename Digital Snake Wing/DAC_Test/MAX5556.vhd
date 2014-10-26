----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:19:30 07/19/2014 
-- Design Name: 
-- Module Name:    MAX5556 - Behavioral 
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

entity MAX5556 is
	generic(WAIT_BITS : INTEGER := 1);
	port(
	-- MAX5556 Signals
	SDATA : out STD_LOGIC; --  Serial Data
	SCLK : out STD_LOGIC; -- Serial Data Clock
	LRCLK : out STD_LOGIC; -- Left-Right Clock (48kHz)
	MCLK : out STD_LOGIC; -- Master ADC Clock
	-- Internal signals
	CK256fs : in STD_LOGIC; -- Clock for the ADC (12.288 MHz @ 48kHz sample rate)
	DATA : in STD_LOGIC_VECTOR(47 downto 0); -- 24 bit audio x 2 channels
	BUSY : out STD_LOGIC;
	START : in STD_LOGIC;
	RESET : in STD_LOGIC
	);
	
	
end MAX5556;

architecture Behavioral of MAX5556 is

type machine is (ready, transmitting);
type channel is (left, right);

signal state : machine := ready;
signal leftright : channel := left;
signal data_buffer : STD_LOGIC_VECTOR(47 downto 0) := (others => '0');
signal output_buffer : STD_LOGIC;
signal lrclk_buffer : STD_LOGIC;
signal ck256fs_temp, bit_count_temp: INTEGER;
signal sclk_count : std_logic := '0';
begin

	transmission_process: PROCESS(CK256fs, RESET) IS
	VARIABLE bit_count : integer := 0;
	VARIABLE ck256fs_count : integer := 0;
	VARIABLE wait_bits_count : integer := 0;

	BEGIN
		IF(RESET = '1') THEN
			data_buffer <= (others => '0');
			state <= ready;
			ck256fs_count := 0;
			bit_count := 0 - WAIT_BITS;
			wait_bits_count := 0;
			
		ELSIF(rising_edge(CK256fs)) THEN
			CASE state IS	
			-- Idle, waiting to start
				WHEN ready =>
					SDATA <= 'Z';
					--lrclk_buffer <= '0';
					bit_count := 0 - WAIT_BITS;
					ck256fs_count := 0;
					-- Start signal
					IF(START = '1') THEN
						BUSY <= '1';
						data_buffer <= DATA;
						state <= transmitting;
						leftright <= left;
					END IF;
					
			-- Transmission process
				WHEN transmitting =>
					IF(sclk_count = '1') THEN
						--sclk_count <= '0';
						--------------------
						-- Left channel --
						IF(leftright = left) THEN
							lrclk_buffer <= '0';
							IF(bit_count >= 0) THEN
								output_buffer <= data_buffer(bit_count);
							ELSE
								output_buffer <= '0';
							END IF;
						-- Right channel --
						ELSE
							lrclk_buffer <= '1';
							IF(bit_count >= 0) THEN
								output_buffer <= data_buffer(bit_count+24);
							ELSE
								output_buffer <= '0';								
							END IF;
						END IF;
						
						-- Waits to complete half LRCLK cycle
						IF(bit_count = 23 AND ck256fs_count >= 127 AND leftright = LEFT) THEN
							bit_count := 0 - WAIT_BITS;
							leftright <= right;
						-- When it finishes
						ELSIF(bit_count = 23 AND ck256fs_count > 255 AND leftright = RIGHT) THEN
							bit_count := 0 - WAIT_BITS;
							ck256fs_count := 0;
							leftright <= left;
							-- If we stop sending data
							IF(START <= '0') THEN
								state <= ready;
								BUSY <= '0';
							-- Latches new data
							ELSE
								data_buffer <= DATA;
							END IF;
						ELSIF(bit_count < 23) THEN
							bit_count := bit_count + 1;
						END IF;		
						ck256fs_count := ck256fs_count + 1;	
					ELSE
						sclk_count <= '1';
					END IF;
					
			END CASE;
		END IF;
		
		
		bit_count_temp <= bit_count;
		ck256fs_temp <= ck256fs_count;
	END PROCESS;


	SDATA <= output_buffer;
	SCLK <= NOT(CK256fs);--sclk_count;
	--SCLK <= 'Z';
	LRCLK <= lrclk_buffer;
	MCLK <= NOT(CK256fs);

end Behavioral;

