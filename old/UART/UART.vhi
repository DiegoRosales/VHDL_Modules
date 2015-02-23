
-- VHDL Instantiation Created from source file UART.vhd -- 16:37:42 09/13/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UART
	PORT(
		RX : IN std_logic;
		CK32 : IN std_logic;
		RESET : IN std_logic;
		DATA_TX : IN std_logic_vector(7 downto 0);
		START : IN std_logic;          
		TX : OUT std_logic;
		DATA_RX : OUT std_logic_vector(7 downto 0);
		STATE : OUT std_logic
		);
	END COMPONENT;

	Inst_UART: UART PORT MAP(
		RX => ,
		TX => ,
		CK32 => ,
		RESET => ,
		DATA_TX => ,
		DATA_RX => ,
		START => ,
		STATE => 
	);


