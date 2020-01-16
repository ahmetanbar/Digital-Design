library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfAdder is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end halfAdder;

architecture Behavioral of halfAdder is

begin
sum <= in1 xor in2;
carry <= in1 and in2;

end Behavioral;

