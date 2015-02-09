library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FIFO is
	generic(
		B : NATURAL := 8; -- Number of bits
		W : NATURAL := 4  -- Number of address bits
	);
	port(
		CLK, RESET : IN STD_LOGIC;
		RD, WR : IN STD_LOGIC;
		W_DATA : IN STD_LOGIC_VECTOR(B-1 downto 0);
		EMPTY, FULL : OUT STD_LOGIC;
		R_DATA : OUT STD_LOGIC_VECTOR(B-1 downto 0)
	);
end FIFO;

architecture Behavioral of FIFO is

	type REG_FILE_TYPE is array (2**W-1 downto 0) of
		STD_LOGIC_VECTOR(B-1 downto 0);
	signal array_reg : REG_FILE_TYPE;
	signal w_ptr_reg, w_ptr_next, w_ptr_succ : 
		STD_LOGIC_VECTOR(W-1 downto 0);
	signal r_ptr_reg, r_ptr_next, r_ptr_succ : 
		STD_LOGIC_VECTOR(W-1 downto 0);
	signal full_reg, empty_reg, full_next, empty_next : 
		STD_LOGIC;
	signal wr_op : STD_LOGIC_VECTOR(1 downto 0);
	signal wr_en : STD_LOGIC;

begin

	-- Register file
	PROCESS(CLK, RESET)
	BEGIN
		if (RESET = '1') then
			array_reg <= (others => (others => '0'));
		elsif (CLK'event and CLK = '1') then
			if (wr_en = '1') then
				array_reg(to_integer(UNSIGNED(w_ptr_reg))) <= W_DATA;
			end if;
		end if;
	END PROCESS;

	-- Read port
	R_DATA <= array_reg(to_integer(UNSIGNED(r_ptr_reg)));
	-- Write enabled only when FIFO is not full_next
	wr_en <= WR AND (NOT full_reg);
	
	-- FIFO control logic
	PROCESS(CLK, RESET)
	BEGIN
		if (reset = '1') then
			w_ptr_reg <= (others => '0');
			r_ptr_reg <= (others => '0');
			full_reg <= '0';
			empty_reg <= '1';
		elsif (CLK'event AND CLK = '1') then
			w_ptr_reg <= w_ptr_next;
			r_ptr_reg <= r_ptr_next;
			full_reg <= full_next;
			empty_reg <= empty_next;
		end if;
	END PROCESS;
	
	-- succesive pointer values
	w_ptr_succ <= STD_LOGIC_VECTOR(UNSIGNED(w_ptr_reg)+1);
	r_ptr_succ <= STD_LOGIC_VECTOR(UNSIGNED(r_ptr_reg)+1);
	
	-- Next-state logic for read and write pointers
	wr_op <= WR & RD;
	
	PROCESS(w_ptr_reg, w_ptr_succ, r_ptr_reg, r_ptr_succ, wr_op,
				empty_reg, full_reg)
	BEGIN
		w_ptr_next <= w_ptr_reg;
		r_ptr_next <= r_ptr_reg;
		full_next <= full_reg;
		empty_next <= empty_reg;
		case wr_op is
			when "00" => -- No operation
			when "01" => -- Read
				if (empty_reg /= '1') then
					r_ptr_next <= r_ptr_succ;
					full_next <= '0';
					if (r_ptr_succ = w_ptr_reg) then
						empty_next <= '1';
					end if;
				end if;
			when "10" => -- Write
				if (full_reg /= '1') then -- Not full_next
					w_ptr_next <= w_ptr_succ;
					empty_next <= '0';
					if (w_ptr_succ = r_ptr_reg) then
						full_next <= '1';
					end if;
				end if;
			when others => --Write/read
				w_ptr_next <= w_ptr_succ;
				r_ptr_next <= r_ptr_succ;
		end case;
	END PROCESS;
	
	-- Output
	FULL <= full_reg;
	EMPTY <= empty_reg;
end Behavioral;

