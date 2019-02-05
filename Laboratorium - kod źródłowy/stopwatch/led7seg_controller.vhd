library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity display_7seg_controler is
    Port ( clock_in : in  STD_LOGIC;
				
           digit0_in : in  STD_LOGIC_VECTOR (3 downto 0);
			  digit1_in : in  STD_LOGIC_VECTOR (3 downto 0);
			  digit2_in : in  STD_LOGIC_VECTOR (3 downto 0);
			  digit3_in : in  STD_LOGIC_VECTOR (3 downto 0);
           display_segments_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  display_catodes_out : out  STD_LOGIC_VECTOR (3 downto 0));
end display_7seg_controler;

architecture Behavioral of display_7seg_controler is
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
	
	component frequency_divider
		Generic ( DIVIDER : integer range 2 to integer'high);
		Port (clock_in : in  STD_LOGIC;
				frequency_out : out  STD_LOGIC := '0');
	end component;

	signal clock_1khz : STD_LOGIC := '1';
	
	signal current_display : integer range 0 to 3 := 0;
begin
	frequency_divider_1khz : frequency_divider generic map (
		DIVIDER => 2
	) port map (clock_in, clock_1khz);
	
	process (clock_1khz) is
	begin
		
		if clock_1khz'event and clock_1khz = '1' then
			if current_display = 3 then
				current_display <= 0;
			else
				current_display <= current_display + 1;
			end if;
		end if;
		
	end process;
			
	with current_display select
		display_catodes_out <=  (0 => '1', others => '0') when 0,
										(1 => '1', others => '0') when 1,
										(2 => '1', others => '0') when 2,
										(3 => '1', others => '0') when 3,
										(others => '0') when others;
	
	with current_display select
		display_segments_out(6 downto 0) <= hex_to_7seg(digit0_in) when 0,
														hex_to_7seg(digit1_in) when 1,
														hex_to_7seg(digit2_in) when 2,
														hex_to_7seg(digit3_in) when 3,
														(others => '0') when others;
		display_segments_out(7) <= '0';
				
end Behavioral;