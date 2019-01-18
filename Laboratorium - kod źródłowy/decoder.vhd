library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity decoder is

port(
	signal in: in std_logic_vector(7 downto 0);
	signal out: out std_logic_vector(7 downto 0)
	);
	
end decoder;

architecture Behavioral of decoder is

case in is
		  when "0000" => digit_i(7 downto 1) <= "0000001";
		  when "0001" => digit_i(7 downto 1) <= "1001111";
		  when "0010" => digit_i(7 downto 1) <= "0010010";
		  when "0011" => digit_i(7 downto 1) <= "0000110";
		  when "0100" => digit_i(7 downto 1) <= "1001100";
		  when "0101" => digit_i(7 downto 1) <= "0100100";
		  when "0110" => digit_i(7 downto 1) <= "0100000";
		  when "0111" => digit_i(7 downto 1) <= "0001101";
		  when "1000" => digit_i(7 downto 1) <= "0000000";
		  when "1001" => digit_i(7 downto 1) <= "0000100";
		  when others => digit_i(7 downto 1) <= "1111111";
end case;

end Behavioral;