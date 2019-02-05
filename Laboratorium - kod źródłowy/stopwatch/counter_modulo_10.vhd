library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_modulo_10 is
   port ( clock_in : in  STD_LOGIC;
			 count_up_in : in STD_LOGIC;
			 reset_in : in STD_LOGIC;
          counter_out : out STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
			 overflow_out : out  STD_LOGIC := '0');
end counter_modulo_10;

architecture Behavioral of counter_modulo_10 is
	signal counter : integer range 0 to 9 := 0;
	signal count_up_old : STD_LOGIC := '0';
begin
	process (clock_in, reset_in) is
	begin 
		if reset_in = '1' then
			counter <= 0;
			overflow_out <= '0';
		elsif clock_in'event and clock_in = '1'  then
			
			if count_up_old = '0' and count_up_in = '1' then	
				if counter = 9 then
					counter <= 0;
					overflow_out <= '1';
				else
					counter <= counter + 1;
					overflow_out <= '0';
				end if;
			end if;
			
			count_up_old <= count_up_in;
		end if;
	end process;
	
	counter_out <= std_logic_vector(to_unsigned(counter, counter_out'length));
	
end Behavioral;