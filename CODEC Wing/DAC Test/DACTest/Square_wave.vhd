library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Square_wave is
	PORT(
		-- PCM1754 Signals
		SDATA : OUT STD_LOGIC;
		SCLK : OUT STD_LOGIC;
		LRCLK : OUT STD_LOGIC;
		BCLK : OUT STD_LOGIC;
		CONTROL : OUT STD_LOGIC_VECTOR(2 downto 0);
		-- Internal signals
		CK32 : IN STD_LOGIC;
		ZEROA : IN STD_LOGIC;
		LED : OUT STD_LOGIC;
		-- Test signals
		SDATA_TEST : OUT STD_LOGIC;
		SCLK_TEST : OUT STD_LOGIC;
		LRCLK_TEST : OUT STD_LOGIC;
		BCLK_TEST : OUT STD_LOGIC
	);		
	attribute KEEP : string;
end Square_wave;

architecture Behavioral of Square_wave is
	-- Component declaration
	COMPONENT PCM1754
	PORT(
	-- DAC Signals
	    SCLK : OUT std_logic; --  System clock
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
	END COMPONENT;
	
	-- Constant declaration
	constant COUNTER_LIM : INTEGER := 35000;
	-- Signal declaration
	signal CKfs : STD_LOGIC := '0';
	signal sq_wave : STD_LOGIC_VECTOR(47 downto 0) := "100000000000000000000001101010100000000000000001";--"000000000100001001000000000000000100001001000000";
	signal START : STD_LOGIC := '1';
	signal RESET : STD_LOGIC := '0';
	signal BUSY : STD_LOGIC;
	signal zeroa_signal : STD_LOGIC;
	
	-- Chipscope
	signal SDATA_Chipscope, SCLK_Chipscope, LRCLK_Chipscope, BCLK_Chipscope : STD_LOGIC;
	--signal counter_signal : INTEGER;
	
	
	attribute KEEP of SDATA_Chipscope : signal is "TRUE";
	attribute KEEP of LRCLK_Chipscope : signal is "TRUE";
	attribute KEEP of BCLK_Chipscope : signal is "TRUE";
	attribute KEEP of zeroa_signal : signal is "TRUE";
	attribute KEEP of SCLK_Chipscope : signal is "TRUE";
	
begin

	Inst_PCM1754: PCM1754 PORT MAP(
	-- PCM1754 Signals
		SCLK => SCLK_Chipscope,
		SDATA => SDATA_Chipscope,
		LRCLK => LRCLK_Chipscope,
		BCLK => BCLK_Chipscope,
		CONTROL => CONTROL,
	-- Internal Signals
		DEMP => '0',
		MUTE => '0',
		FORMAT => '0',
		CKfs => CKfs,
		DATA => sq_wave,
		START => START,
		RESET => RESET,
		BUSY => BUSY
	);
	
	PROCESS(CK32)
		variable ck_divider : INTEGER := 0;
		variable counter : INTEGER := 0;
	BEGIN
		IF(rising_edge(CK32)) THEN
			IF(ck_divider = 1) THEN
				ck_divider := 0;
				CKfs <= not CKfs;
				IF(counter >= COUNTER_LIM) THEN
					counter := 0;
					sq_wave(47 downto 0) <= not(sq_wave(47 downto 0));
				END IF;
			ELSE
				ck_divider :=  ck_divider +1;
				
				--counter_signal <= counter;
			END IF;
			counter := counter + 1;
		END IF;
	END PROCESS;
	
	SCLK <= SCLK_Chipscope;
	SDATA <= SDATA_Chipscope;
	LRCLK <= LRCLK_Chipscope;
	BCLK <= BCLK_Chipscope;

	SCLK_TEST <= SCLK_Chipscope;
	SDATA_TEST <= SDATA_Chipscope;
	LRCLK_TEST <= LRCLK_Chipscope;
	BCLK_TEST <= BCLK_Chipscope;
	
	zeroa_signal <= ZEROA;
	LED <= zeroa_signal;


	
end Behavioral;

