library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ThreeBitAdderSubtractor is
    Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
           b : in  STD_LOGIC_VECTOR (2 downto 0);
           switch : in  STD_LOGIC;
           carry : out  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (2 downto 0));
end ThreeBitAdderSubtractor;

architecture Behavioral of ThreeBitAdderSubtractor is
signal aSign1,aSign2,aSign3,carrySign1,carrySign2:std_logic;

component fullAdder is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;
begin
	aSign1 <= a(0) xor switch;
	aSign2 <= a(1) xor switch;
	aSign3 <= a(2) xor switch;
	fullAdder1:fullAdder port map(aSign1,b(0),switch,result(0),carrySign1);
	fullAdder2:fullAdder port map(aSign2,b(1),carrySign1,result(1),carrySign2);
	fullAdder3:fullAdder port map(aSign3,b(2),carrySign2,result(2),carry);

end Behavioral;

