library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADC_Control is
	PORT(
		CK : in STD_LOGIC;
		RESET : in STD_LOGIC;
		CTRL_SEL : out STD_LOGIC;
		CTRL_CK : out STD_LOGIC;
		CTRL_DATA : out STD_LOGIC;
		START : in STD_LOGIC;
		LED1 : out STD_LOGIC;
		LED2 : out STD_LOGIC
		);
end ADC_Control;

architecture Behavioral of ADC_Control is

type machine is(executing, ready);

CONSTANT ID : STD_LOGIC_VECTOR(7 downto 0) := "00110001";
CONSTANT config : STD_LOGIC_VECTOR(7 downto 0) := "11110010"; -- MRST*, SRST*, MD1, MD0, FMT, PDWN, PREV, MUTE
signal state : machine := ready;
signal ctrl_data_signal : STD_LOGIC;
signal ctrl_ck_signal : STD_LOGIC := '0';
signal ctrl_sel_signal : STD_LOGIC := '1';
--signal START : STD_LOGIC := '1';
signal config_vector : STD_LOGIC_VECTOR(15 downto 0);
begin

	PROCESS(CK, RESET)
	VARIABLE bit_count : integer := 15;
	VARIABLE ck_divider : integer := 0;
	BEGIN
		IF(RESET = '0') THEN
			state <= ready;
			bit_count := 0;
			
		ELSIF(rising_edge(CK)) THEN
		
			IF(ck_divider = 5) THEN
				ck_divider := 0;
				ctrl_ck_signal <= not(ctrl_ck_signal);
				CASE state IS
				
				WHEN ready =>
					bit_count := 15;
					IF(START = '0') THEN
						config_vector <= ID&config;
						state <= executing;
					END IF;
					
				WHEN executing =>
					ctrl_sel_signal <= '0';
					IF(ctrl_ck_signal = '1') THEN
						IF(bit_count <= -1) THEN
							ctrl_sel_signal <= '1';
							state <= ready;
						ELSE
							ctrl_data_signal <= config_vector(bit_count);
							bit_count := bit_count - 1;
						END IF;
					END IF;
				
			END CASE;
			ELSE
				ck_divider := ck_divider + 1;
			END IF;
			
		END IF;
	END PROCESS;
	
	CTRL_DATA <= ctrl_data_signal;
	CTRL_SEL <= ctrl_sel_signal;
	CTRL_CK <= ctrl_ck_signal;
	LED1 <= RESET;
	LED2 <= START;
end Behavioral;