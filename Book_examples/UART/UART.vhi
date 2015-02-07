
-- VHDL Instantiation Created from source file UART.vhd -- 13:06:31 01/13/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UART
	PORT(
		CLK : IN std_logic;
		RESET : IN std_logic;
		RD_UART : IN std_logic;
		WR_UART : IN std_logic;
		RX : IN std_logic;
		W_DATA : IN std_logic_vector(7 downto 0);          
		TX_FULL : OUT std_logic;
		RX_EMPTY : OUT std_logic;
		R_DATA : OUT std_logic_vector(7 downto 0);
		TX : OUT std_logic
		);
	END COMPONENT;

	Inst_UART: UART PORT MAP(
		CLK => ,
		RESET => ,
		RD_UART => ,
		WR_UART => ,
		RX => ,
		W_DATA => ,
		TX_FULL => ,
		RX_EMPTY => ,
		R_DATA => ,
		TX => 
	);


