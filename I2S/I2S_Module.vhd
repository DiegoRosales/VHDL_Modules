----------------------------------------------------------------------------------
-- I2S Master Transmitter module
-- From bit 0 to bit 'length' => Right channel
-- From bit 'length' to bit 'length*2-1' => Left channel
-- By Diego Rosales
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2S_Module is
	generic(
		length : INTEGER := 24; -- Number of bits per sample per channel
		polarity : STD_LOGIC := '0' -- If it latches on rising or falling edge of the clock
		);
	port(
	-- I2S Signals
		SCK : out STD_LOGIC; -- Serial Clock
		WS : out STD_LOGIC; -- Word Select (Left, Right)
		SD : out STD_LOGIC; -- Data out
	-- Internal Signals
		DATA : in STD_LOGIC_VECTOR(length*2-1 downto 0); -- Data containing both channels
		BUSY : out STD_LOGIC; -- '1' While transmitting
		RESET : in STD_LOGIC; -- Reset signal
		CK : in STD_LOGIC; -- Main clock
		SEND : in STD_LOGIC -- Send signal
		);
end I2S_Module;

architecture Behavioral of I2S_Module is
TYPE machine IS (transmitting, idle);

SIGNAL state : machine := idle;
SIGNAL data_signal : STD_LOGIC_VECTOR((length*2-1) downto 0);
SIGNAL previous_lsb : STD_LOGIC;
SIGNAL count : INTEGER := -1;
begin

	PROCESS(CK, RESET)
	BEGIN
		IF(RESET = '1') THEN
			BUSY <= '1';
			WS <= '1';
			SD <= 'Z';
			data_signal <= (others => '0');
			previous_lsb <= '0';
			count <= -1;
			state <= idle;
			
		ELSIF(rising_edge(CK)) THEN
			CASE state IS
			WHEN idle =>
				BUSY <= '0';
				data_signal <= (others => '0');
				previous_lsb <= '0';
				WS <= 'Z';
				WS <= '1';
				count <= -1;
				IF(SEND = '1') THEN
					BUSY <= '1';
					data_signal <= DATA;
					previous_lsb <= DATA(0);
					state <= transmitting;
				END IF;
				
			WHEN transmitting =>
				BUSY <= '1';
				-- While it still has data to transmit
				IF(count <= (length*2-1)) THEN
				
					IF(count < (length - 1) OR count > (length*2-2)) THEN
						WS <= '0'; -- Left channel
					ELSE
						WS <= '1'; -- Right channel
					END IF;
					
					IF(count >= 0) THEN
						SD <= data_signal(length*2-1 - count);
					ELSE
						SD <= previous_lsb;
					END IF;
					
					count <= count + 1;
				END IF;
				
				-- If it has finished
				IF(count = (length*2-1)) THEN
					IF(SEND = '0') THEN
						state <= idle;
					ELSE
						data_signal <= DATA;
						count <= 0;
					END IF;
				ELSIF(count < 0) THEN
					count <= count + 1;
				END IF;
			END CASE;
		END IF;
	END PROCESS;

	-- If it latches on rising or falling edge of the clock
	SCK <= not(CK) WHEN polarity = '0' ELSE
				CK;
end Behavioral;

