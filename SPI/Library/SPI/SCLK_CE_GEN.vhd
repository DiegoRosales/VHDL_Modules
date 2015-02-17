--=============SPI SCLK and CS GENERATOR MODULE=====================
-- By Diego Rosales
-- Last edited 08/02/2015
---------------------- LINKS -------------------------------
-- Book from Amazon: http://www.amazon.com/FPGA-Prototyping-VHDL-Examples-Spartan-3/dp/0470185317/ref=sr_1_6?ie=UTF8&qid=1422761365&sr=8-6&keywords=vhdl
-- My Github: https://github.com/DiegoRosales
-- My Blog: https://produccionyelectronica.blogspot.com
------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SCLK_CE_GEN is
	GENERIC(
		POL : STD_LOGIC := '0';
		N : INTEGER := 8
		);
	PORT(
		CLK, RESET : IN STD_LOGIC;
		S_TICK : IN STD_LOGIC;
		START : IN STD_LOGIC;
		SCLK : OUT STD_LOGIC;
		CE : OUT STD_LOGIC;
		BUSY : OUT STD_LOGIC;
		CONT : IN STD_LOGIC
	);
end SCLK_CE_GEN;

architecture Behavioral of SCLK_CE_GEN is
	type STATE_TYPE is (IDLE, DATA);
	
	signal state_current, state_next : STATE_TYPE;
	signal sclk_current, sclk_next : STD_LOGIC;
	signal ce_current, ce_next : STD_LOGIC;	
	signal counter_current, counter_next : UNSIGNED(3 downto 0);
	signal busy_current, busy_next : STD_LOGIC;
begin

	SCLK <= sclk_current;
	CE <= ce_current;
	BUSY <= busy_current;
	
	FSM_PROCESS: PROCESS(CLK, RESET)
	BEGIN
		if (RESET = '1') then
			state_current <= IDLE;
			sclk_current <= POL;
			ce_current <= '1';
			counter_current <= (others => '0');
			busy_current <= '0';
		elsif (rising_edge(CLK)) then
			state_current <= state_next;
			sclk_current <= sclk_next;
			ce_current <= ce_next;
			counter_current <= counter_next;
			busy_current <= busy_next;
		end if;
	END PROCESS;
	
	NEXT_STATE_PROCESS: PROCESS(state_current, sclk_current, ce_current, counter_current, 
								START, S_TICK, busy_current, CONT)
	BEGIN
		state_next <= state_current;
		sclk_next <= sclk_current;
		ce_next <= ce_current;
		counter_next <= counter_current;
		busy_next <= busy_current;
		
		CASE state_current IS
		WHEN IDLE => 
			sclk_next <= POL;
			ce_next <= '1';
			counter_next <= (others => '0');
			busy_next <= '0';
			if(START = '1') then
				state_next <= DATA;
				ce_next <= '0';
				busy_next <= '1';
			end if;
		WHEN DATA =>
			if (S_TICK = '1') then
				if(counter_current <= N-1) then
					sclk_next <= not(sclk_current);
				end if;
				
				if(counter_current < N-1 AND sclk_current = not(POL)) then
					counter_next <= counter_current + 1;				
				elsif(counter_current = N-1 AND sclk_current = not(POL)) then
					if(CONT = '1') then
						counter_next <= (others => '0');
					else
						counter_next <= counter_current + 1;
					end if;
				elsif(counter_current > N-1 AND counter_current <= N) then
					ce_next <= '1';
					counter_next <= counter_current + 1;
				elsif(counter_current > N) then
					state_next <= IDLE;
				end if;
			end if;
		END CASE;
	END PROCESS;
	
end Behavioral;

