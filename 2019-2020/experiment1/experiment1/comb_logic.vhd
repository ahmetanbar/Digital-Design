library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comb_logic is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           a : out  STD_LOGIC;
           b : out  STD_LOGIC;
           c : out  STD_LOGIC);
end comb_logic;

architecture Behavioral of comb_logic is

begin
	a <= (x and z) or (y and z) or (x and y);
	b <= x xor y xor z;
	c <= not z;

end Behavioral;

