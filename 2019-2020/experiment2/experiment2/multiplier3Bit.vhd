library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier3Bit is
    Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
           b : in  STD_LOGIC_VECTOR (1 downto 0);
           result : out  STD_LOGIC_VECTOR (4 downto 0));
end multiplier3Bit;

architecture Behavioral of multiplier3Bit is
signal aSign:std_logic_vector(2 downto 0);
signal bSign:std_logic_vector(2 downto 0);
signal carrySign:std_logic_vector(1 downto 0);
component fullAdder is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;
begin
	result(0) <= a(0) and b(0);
	
	aSign(0) <= a(1) and b(0);
	bSign(0) <= a(0) and b(1);
	fullAdder1:fullAdder port map(aSign(0),bSign(0),'0',result(1),carrySign(0));
	
	aSign(1) <= a(2) and b(0);
	bSign(1) <= a(1) and b(1);	
	fullAdder2:fullAdder port map(aSign(1),bSign(1),carrySign(0),result(2),carrySign(1));
	
	aSign(2) <= carrySign(1);
	bSign(2) <= a(2) and b(1);	
	fullAdder3:fullAdder port map(aSign(2),bSign(2),'0',result(3),result(4));

end Behavioral;

