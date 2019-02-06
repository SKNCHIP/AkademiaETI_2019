library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity frequency_divider is
	Generic ( DIVIDER : integer := 8);
   
	Port ( clock_in : in  STD_LOGIC;
			 reset_in : in STD_LOGIC;
			 frequency_out : out  STD_LOGIC);
			 
end frequency_divider;

architecture Behavioral of frequency_divider is
	signal counter : integer range 0 to DIVIDER := 0;
begin
	process (clock_in, reset_in) is
	begin 
	
		if reset_in = '1' then
			counter <= 0;
		elsif clock_in'event and clock_in = '1' then
			
			if counter = DIVIDER - 1 then
				counter <= 0;
			else
				counter <= counter + 1;
			end if;
			
		end if;
		
	end process;
	
	frequency_out <= '0' when counter < DIVIDER/2 else '1';
	
end Behavioral;

