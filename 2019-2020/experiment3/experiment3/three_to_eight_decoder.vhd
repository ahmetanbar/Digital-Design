library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity three_to_eight_decoder is
    Port ( input : in  STD_LOGIC_VECTOR (2 downto 0);
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end three_to_eight_decoder;

architecture Behavioral of three_to_eight_decoder is

begin
	output(0) <= (not input(0)) and (not input(1)) and (not input(2));
	output(1) <= (not input(0)) and (not input(1)) and (input(2));
	output(2) <= (not input(0)) and (input(1)) and (not input(2));
	output(3) <= (not input(0)) and (input(1)) and (input(2));
	output(4) <= (input(0)) and (not input(1)) and (not input(2));
	output(5) <= (input(0)) and (not input(1)) and (input(2));
	output(6) <= (input(0)) and (input(1)) and (not input(2));
	output(7) <= (input(0)) and (input(1)) and (input(2));

end Behavioral;

