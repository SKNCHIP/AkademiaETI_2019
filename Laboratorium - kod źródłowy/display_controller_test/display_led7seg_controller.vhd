library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity display_led7seg_controller is
	 generic ( DOT_POSITION : integer range 0 to 3 := 1);
    port ( clock_in : in  STD_LOGIC;
			  next_digit_in : in STD_LOGIC;
           digit_0_in : in  STD_LOGIC_VECTOR (3 downto 0);
			  digit_1_in : in  STD_LOGIC_VECTOR (3 downto 0);
			  digit_2_in : in  STD_LOGIC_VECTOR (3 downto 0);
			  digit_3_in : in  STD_LOGIC_VECTOR (3 downto 0);
           display_segments_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  display_catodes_out : out  STD_LOGIC_VECTOR (3 downto 0));
end display_led7seg_controller;

architecture Behavioral of display_led7seg_controller is
	function hex_to_7seg (hex : STD_LOGIC_VECTOR( 3 downto 0)) return STD_LOGIC_VECTOR is
	begin
			case hex is				 --ABCDEFG Segments
				when x"0" => return "1111110";
				when x"1" => return "0110000";
				when x"2" => return "1101101";
				when x"3" => return "1111001";
				when x"4" => return "0110011";
				when x"5" => return "1011011";
				when x"6" => return "1011111";
				when x"7" => return "1110000";
				when x"8" => return "1111111";
				when x"9" => return "1111011";
				when x"A" => return "1110111";
				when x"B" => return "0011111";
				when x"C" => return "1001110";
				when x"D" => return "0111101";
				when x"E" => return "1001111";
				when x"F" => return "1000111";
				when others => return "0000000";
			end case;
	end function;

	signal next_digit_old : STD_LOGIC := '0';
	
	signal current_display : integer range 0 to 3 := 0;
begin
	process (clock_in) is
	begin
		if clock_in'event and clock_in = '1' then
			if next_digit_old = '0' and next_digit_in = '1' then
			
				if current_display = 3 then
					current_display <= 0;
				else
					current_display <= current_display + 1;
				end if;
				
			end if;
			next_digit_old <= next_digit_in;
		end if;
	end process;
			
	with current_display select
		display_catodes_out <=  (0 => '0', others => '1') when 0,
										(1 => '0', others => '1') when 1,
										(2 => '0', others => '1') when 2,
										(3 => '0', others => '1') when 3,
										(others => '0') when others;
	
	with current_display select
		display_segments_out(7 downto 1) <= not hex_to_7seg(digit_0_in) when 0,
														not hex_to_7seg(digit_1_in) when 1,
														not hex_to_7seg(digit_2_in) when 2,
														not hex_to_7seg(digit_3_in) when 3,
														(others => '1') when others;
														
	display_segments_out(0) <= '0' when current_display = DOT_POSITION else	'1';
											
end Behavioral;