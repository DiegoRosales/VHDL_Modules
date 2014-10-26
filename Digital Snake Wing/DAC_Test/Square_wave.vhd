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
		-- MAX5556 Signals
		SDATA : OUT STD_LOGIC;
		SCLK : OUT STD_LOGIC;
		LRCLK : OUT STD_LOGIC;
		MCLK : OUT STD_LOGIC;
		-- Internal signals
		CK33 : IN STD_LOGIC
	);		
end Square_wave;

architecture Behavioral of Square_wave is
	-- Component declaration
	COMPONENT MAX5556
	PORT(
		CK256fs : IN std_logic;
		DATA : IN std_logic_vector(47 downto 0);
		START : IN std_logic;
		RESET : IN std_logic;          
		SDATA : OUT std_logic;
		SCLK : OUT std_logic;
		LRCLK : OUT std_logic;
		MCLK : OUT std_logic;
		BUSY : OUT std_logic
		);
	END COMPONENT;
	
	-- Constant declaration
	constant COUNTER_LIM : INTEGER := 20000;
	-- Signal declaration
	signal CK256fs : STD_LOGIC := '0';
	signal sq_wave : STD_LOGIC_VECTOR(47 downto 0) := "000000000000000000000001000000000000101010101000";
	signal START : STD_LOGIC := '1';
	signal RESET : STD_LOGIC := '0';
	signal BUSY : STD_LOGIC;
	--signal counter_signal : INTEGER;
begin
	Inst_MAX5556: MAX5556 PORT MAP(
		SDATA => SDATA,
		SCLK => SCLK,
		LRCLK => LRCLK,
		MCLK => MCLK,
		CK256fs => CK256fs,
		DATA => sq_wave,
		BUSY => BUSY,
		START => START,
		RESET => RESET
	);
	
	PROCESS(CK33)
		variable ck_divider : INTEGER := 0;
		variable counter : INTEGER := 0;
	BEGIN
		IF(rising_edge(CK33)) THEN
			IF(ck_divider = 1) THEN
				ck_divider := 0;
				CK256fs <= not CK256fs;
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

end Behavioral;

