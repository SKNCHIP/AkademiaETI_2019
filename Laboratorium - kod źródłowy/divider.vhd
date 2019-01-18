----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:24:15 04/11/2018 
-- Design Name: 
-- Module Name:    dzielnik - Behavioral 
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

entity divider is
port(
	signal clock_in: in std_logic;
	signal clock_out: out std_logic
	 );
end divider;

architecture Behavioral of dzielnik is

signal y:std_logic_vector(25 downto 0):="00000000000000000000000000";
constant n:integer :=50000;
constant m:integer :=n/2;

begin

div:process(clock_in) is
begin
	
			
			if rising_edge(clock_in) then 
				if 
					y=n-1 then y<="00000000000000000000000000";
				elsif (true) then y<=y+1;
				end if;
				if y = m then clock_out<='0';
				elsif y ="00000000000000000000000000" then clock_out<='1';
				end if;
			end if;
		
	
end process div;

end Behavioral;

