library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC);
end fullAdder;

architecture Behavioral of fullAdder is

begin
		sum <= in1 xor in2 xor cin;
		cout <= (in1 and in2) or ((in1 xor in2) and cin);

end Behavioral;

