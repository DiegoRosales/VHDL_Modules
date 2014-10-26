
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PCM1754 is
	generic(
		BIT_COUNT : INTEGER := 32;
		CK_RATIO : INTEGER := 2
		);
	PORT(
	-- DAC Signals
	    SCLK : OUT std_logic; --  System clock (128fs, 192fs, 265fs)
		SDATA : OUT std_logic; -- Audio data I2S
		LRCLK : OUT std_logic; -- Left/Right clock I2S
		BCLK : OUT std_logic; -- Audio data clock I2S
		CONTROL : OUT std_logic_vector(2 downto 0); -- (DEMP, MUTE, FORMAT)
	-- Internal signals
		DEMP : IN STD_LOGIC;
		MUTE : IN STD_LOGIC;
		FORMAT : IN STD_LOGIC;
		CKfs : IN std_logic;
		DATA : IN std_logic_vector(47 downto 0);
		START : IN std_logic;
		RESET : IN std_logic;          
		BUSY : OUT std_logic
		);
end PCM1754;

architecture Behavioral of PCM1754 is

	COMPONENT I2S_Master
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
	END COMPONENT;
	
	-- Types
	type MACHINE is (idle, executing);
	
	-- Signals
	signal state : MACHINE := idle;
	signal lr_signal : STD_LOGIC := '0';
	signal lr_enable : STD_LOGIC;
	signal lr_t : STD_LOGIC;
	signal bclk_signal : STD_LOGIC := '0';
	signal bclk_enable : STD_LOGIC;
	signal data_buffer : STD_LOGIC_VECTOR(47 downto 0);
begin

	Inst_I2S_Master: I2S_Master PORT MAP(
		SCK => BCLK,
		WS => LRCLK,
		SD => SDATA,
		---
		MCK => bclk_signal,
		LR => lr_t,
		DATA => data_buffer,
		CE => bclk_enable
	);
	
	Control_Process: process(CKfs, RESET, lr_signal)
		variable counter : INTEGER := 0;
	begin
		IF(RESET = '1') THEN
			data_buffer <= (others => '0');
			bclk_enable <= '0';
			lr_enable <= '0';		
			state <= idle;
			BUSY <= '0';
		
		ELSIF(rising_edge(CKfs)) THEN
			CASE state IS
			
			WHEN idle =>
				BUSY <= '0';
				bclk_enable <= '0';
				lr_enable <= '0';
				data_buffer <= (others => '0');
				IF(START = '1') THEN
					BUSY <= '1';
					data_buffer <= DATA;
					bclk_enable <= '1';
					lr_enable <= '1';
					state <= executing;

				END IF;
			WHEN executing =>
				IF(counter >= 2*BIT_COUNT*CK_RATIO) THEN
					counter := 0;
					IF(START = '1') THEN
						data_buffer <= DATA;
					ELSE
						state <= idle;
					END IF;
				ELSE
					counter := counter + 1;
				END IF;
			END CASE;
		END IF;		
		
	end process;
	
	BCLK_Process: process(CKfs)
		variable counter : INTEGER := 1;
	begin
		IF(rising_edge(CKfs)) THEN
			IF(counter >= CK_RATIO) THEN
				counter := 1;
				bclk_signal <= not(bclk_signal);
			ELSE
				counter := counter + 1;
			END IF;			
		END IF;	
	end process;
	
	LR_Process: process(bclk_signal)
		variable counter : INTEGER := 1;
	begin
		IF(rising_edge(bclk_signal)) THEN
			IF(counter >= BIT_COUNT) THEN
				counter := 1;
				lr_signal <= not(lr_signal);
			ELSE
				counter := counter + 1;
			END IF;			
		END IF;
	end process;
	
	lr_t <= lr_enable AND lr_signal;
	CONTROL <= DEMP & MUTE & FORMAT;
	SCLK <= CKfs;
end Behavioral;

