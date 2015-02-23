LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Echo_test_tbench IS
END Echo_test_tbench;
 
ARCHITECTURE behavior OF Echo_test_tbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Echo_test
    PORT(
         CLK : IN  std_logic;
         TX : OUT  std_logic;
         RX : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RX : std_logic := '1';

 	--Outputs
   signal TX : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 31.25 ns;
   
   signal DATA : STD_LOGIC_VECTOR(7 downto 0) := "00101101";
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Echo_test PORT MAP (
          CLK => CLK,
          TX => TX,
          RX => RX
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
	
	process(CLK)
		variable counter1, counter2, counter3, counter4 : integer := 0;
	begin
		if(rising_edge(CLK)) then
			if(counter3 > 120) then
				if(counter4 > 35) then
					counter4 := 0;
					if(counter1 > 13) then
						counter1 := 0;
						if(counter2 = 0) then
							RX <= '0';
							counter2 := counter2 + 1;
						elsif(counter2 > 0 AND counter2 <= 8) then
							RX <= DATA(counter2 - 1);
							counter2 := counter2 + 1;
						elsif(counter2 > 8 AND counter2 < 12) then
							RX <= '1';
							counter2 := counter2 + 1;
						else
							counter2 := 0;
						end if;
					else
						counter1 := counter1 + 1;
					end if;
				else
					counter4 := counter4 + 1;
				end if;
			else
				counter3 := counter3 + 1;
			end if;
		end if;
	end process;


END;
