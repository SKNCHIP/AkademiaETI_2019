library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity debouncer is

port(
	signal clock: in std_logic;
	signal in: in std_logic;
	signal out: out std_logic
	);
	
end debouncer;

architecture Behavioral of debouncer is

signal q : std_logic:='0';
signal key_synch : std_logic:='0';

synch: process (clock) is
variable delay_cntr : integer range 0 to 50 := 0;
begin
  if rising_edge(clock) then
    q <= in;
    key_synch <= q;
    if (key_synch = out) then
      delay_cntr := 0;
    else
      delay_cntr := delay_cntr + 1;
    end if;
    if (delay_cntr = 50) then
      out <= key_synch;
      delay_cntr := 0;
    end if;
  end if;
end process;

end Behavioral;