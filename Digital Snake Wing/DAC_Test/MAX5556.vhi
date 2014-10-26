
-- VHDL Instantiation Created from source file MAX5556.vhd -- 17:14:29 08/21/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_MAX5556: MAX5556 PORT MAP(
		SDATA => ,
		SCLK => ,
		LRCLK => ,
		MCLK => ,
		CK256fs => ,
		DATA => ,
		BUSY => ,
		START => ,
		RESET => 
	);


