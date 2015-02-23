library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library SPI;
use SPI.ALL;

library Work;
use Work.MC_25LC640A_TYPES.ALL;

entity MC_25LC640A_CONTROLLER is

	PORT(
	-- TO FPGA
	CLK, RESET : IN STD_LOGIC;
	DATA_OUT : IN STD_LOGIC_VECTOR(7 downto 0);
	DATA_IN : OUT STD_LOGIC_VECTOR(7 downto 0);
	ADDR : IN STD_LOGIC_VECTOR(15 downto 0);
	OPR : IN OPERATION;
	START : IN STD_LOGIC;
	CONSEC_WR : IN UNSIGNED(5 downto 0); -- Max 32 byte page write
	BUSY : OUT STD_LOGIC;
	-- TO REAL WORLD
	CS : OUT STD_LOGIC;
	SO : IN STD_LOGIC;
	SI : OUT STD_LOGIC;
	SCK : OUT STD_LOGIC;
	WP : OUT STD_LOGIC;
	HOLD : OUT STD_LOGIC
	);
end MC_25LC640A_CONTROLLER;

architecture Behavioral of MC_25LC640A_CONTROLLER is
	
	TYPE STATE IS (IDLE, EXECUTING);

	signal opr_curr : OPERATION;
	signal state_curr, state_next : STATE;
begin

	RESET_PROCESS : PROCESS(CLK, RESET)
	BEGIN
		if(RESET = '1') then
			state_curr <= IDLE;
		elsif(rising_edge(CLK)) then
			state_curr <= state_next;
		end if;
	END PROCESS;	
	
	NEXT_STATE_PROCESS : PROCESS(CLK, state_curr)
	BEGIN
		state_next <= state_curr;
		CASE state_curr IS
		WHEN IDLE =>
		WHEN EXECUTING =>
		END CASE;
	END PROCESS;
	
end Behavioral;



