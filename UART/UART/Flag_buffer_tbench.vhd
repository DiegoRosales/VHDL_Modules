--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:26:09 01/11/2015
-- Design Name:   
-- Module Name:   D:/GitHub/VHDL_Modules/Book_examples/UART/Flag_buffer_tbench.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Flag_buffer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Flag_buffer_tbench IS
END Flag_buffer_tbench;
 
ARCHITECTURE behavior OF Flag_buffer_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Flag_buffer
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         CLR_FLAG : IN  std_logic;
         SET_FLAG : IN  std_logic;
         DIN : IN  std_logic_vector(7 downto 0);
         DOUT : OUT  std_logic_vector(7 downto 0);
         FLAG : OUT  std_logic
        );
    END COMPONENT;
    
    COMPONENT UART_RX
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         RX : IN  std_logic;
         S_TICK : IN  std_logic;
         RX_DONE_TICK : OUT  std_logic;
         DOUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;	

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal CLR_FLAG : std_logic := '0';
   signal SET_FLAG : std_logic := '0';
   signal DIN : std_logic_vector(7 downto 0) := (others => '0');

   --Inputs UART_RX
   signal RX : std_logic := '1';
   signal S_TICK : std_logic := '0';
   signal S_TICK_next : std_logic;
   signal data : std_logic_vector(8 downto 0) := "011010010";
   
 	--Outputs
   signal DOUT_BUF : std_logic_vector(7 downto 0);
   signal FLAG : std_logic;

   --Outputs UART_RX
   signal RX_DONE_TICK : std_logic;
   signal DOUT : std_logic_vector(7 downto 0);
   
   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
	S_TICK_next <= not(S_TICK);
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Flag_buffer PORT MAP (
          CLK => CLK,
          RESET => RESET,
          CLR_FLAG => CLR_FLAG,
          SET_FLAG => RX_DONE_TICK,
          DIN => DOUT,
          DOUT => DOUT_BUF,
          FLAG => FLAG
        );

   uut2: UART_RX PORT MAP (
          CLK => CLK,
          RESET => RESET,
          RX => RX,
          S_TICK => '1',--S_TICK,
          RX_DONE_TICK => RX_DONE_TICK,
          DOUT => DOUT
        );		
   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

	S_TICK_process : process(CLK)
		variable counter : integer := 0;
		variable counter2 : integer := 0;
	begin
		if(rising_edge(CLK)) then
			if(counter2 > 8) then
				if(counter > 7) then
					S_TICK <= S_TICK_next;
					counter := 0;
				end if;
				counter := counter + 1;
			else
				counter2 := counter2 + 1;
			end if;
		end if;
	end process;

	RX_test_process : process(S_TICK)
		variable counter : integer := 0;
	begin
		if(rising_edge(S_TICK)) then
			if(counter < 9) then
				RX <= data(counter);
			elsif (counter >= 9 AND counter < 12) then
				RX <= '1';
			else
				counter := 0;
			end if;
			counter := counter + 1;
		end if;
	end process;

END;
