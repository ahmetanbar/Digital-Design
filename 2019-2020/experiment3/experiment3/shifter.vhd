library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shifter is
    Port ( input : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end shifter;

architecture Behavioral of shifter is
component fullAdder is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC);
end component;
signal csgn:std_logic_vector(3 downto 0);
signal check:std_logic;
begin

	check <= (input(3) or (input(2) and input (0)) or (input(2) and input (1)));

	fullAdder1:fullAdder port map(input(3),'0',csgn(2),csgn(3),output(3));
	
	fullAdder2:fullAdder port map(input(2),'0',csgn(1),csgn(2),output(2));
	
	fullAdder3:fullAdder port map(input(1),(check),csgn(0),csgn(1),output(1));
	
	fullAdder4:fullAdder port map(input(0),(check),'0',csgn(0),output(0));
	
	
end Behavioral;

