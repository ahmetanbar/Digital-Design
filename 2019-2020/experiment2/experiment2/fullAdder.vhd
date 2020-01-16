library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end fullAdder;

architecture Behavioral of fullAdder is
signal sumSign,carrySign1,carrySign2:std_logic;

Component halfAdder is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;
begin

	halfAdder1:halfAdder port map(in1,in2,sumSign,carrySign1);
	halfAdder2:halfAdder port map(sumSign,cin,sum,carrySign2);
	cout <= carrySign1 or carrySign2;

end Behavioral;

