library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bin2bcd is
    Port ( d : in  STD_LOGIC_VECTOR (5 downto 0);
           result : out  STD_LOGIC_VECTOR (7 downto 0));
end bin2bcd;

architecture Behavioral of bin2bcd is
component shifter is
    Port ( input : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
signal sgn:std_logic_vector(5 downto 0);
begin
	result(0) <= d(0);
	result(7) <= '0';
	
	shifter1:shifter port map(	input(3) => sgn(3),
										input(2) => sgn(4),
										input(1) => sgn(5),
										input(0) => d(1),
										output => result(4 downto 1));
										
	shifter2:shifter port map(	input(3) => sgn(0),
										input(2) => sgn(1),
										input(1) => sgn(2),
										input(0) => d(2),
										output(3) => result(5),
										output(2) => sgn(3),
										output(1) => sgn(4),
										output(0) => sgn(5));
										
	shifter3:shifter port map( input(3) => '0',
										input(2) => d(5),
										input(1) => d(4),
										input(0) => d(3),
										output(3) => result(6),
										output(2) => sgn(0),
										output(1) => sgn(1),
										output(0) => sgn(2));
end Behavioral;

