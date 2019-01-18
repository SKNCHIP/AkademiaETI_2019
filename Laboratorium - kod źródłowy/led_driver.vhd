----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:04:25 03/28/2018 
-- Design Name: 
-- Module Name:    kod - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity driver is
port(
	signal led7_seg_out: out std_logic_vector(7 downto 0);
	signal digit_in_1: in std_logic_vector(7 downto 0);
	signal digit_in_2: in std_logic_vector(7 downto 0);
	signal digit_in_3: in std_logic_vector(7 downto 0);
	signal digit_in_4: in std_logic_vector(7 downto 0);
	signal led7_an_out: out std_logic_vector(3 downto 0);
	signal clock:in std_logic
	);

	
end driver;

architecture Behavioral of driver is

signal l:std_logic_vector(1 downto 0) :="00";
signal awaria:  std_logic_vector(7 downto 0):="11111111";


begin

licznik:process(clock) is
begin
		
			if rising_edge(clock) then
				if
					l="11" then l<="00";
					elsif (true) then l<=l+1;
				end if;
			end if;
			
		
		
		if l="00" then led7_an_out<="1110";
		elsif l="01" then led7_an_out<="1101";
		elsif l="10" then led7_an_out<="1011";
		elsif l="11" then led7_an_out<="0111";
		end if;
		
end process licznik ;

	with l select
	led7_seg_o<=digit_in_1 when "00",
					digit_in_2 when "01",
					digit_in_3 when "10",
					digit_in_4 when "11",
					awaria when others;

end Behavioral;
