library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity counter is

port(
	signal clock_in: in std_logic;
	signal reset: in std_logic;
	signal clock_out: out std_logic;
	signal number: out std_logic_vector(3 downto 0)
	);
	
end counter;

architecture Behavioral of decoder is

counter: process(clock_in,reset) is
if reset='1' then
	number<="0000";
	clock_out<='0';
elsif reset='0' then
	if rising_edge(clock_in) then
		
		if number="1001" then
			number<="0000";
			clock_out<='1';
		elsif (true) then
			number<=number+1;
			clock_out<=0;
		end if;
	end if;

end if;	
	
end process counter;

end Behavioral;