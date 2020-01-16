library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cct is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           f1 : out  STD_LOGIC;
           f2 : out  STD_LOGIC);
end cct;

architecture Behavioral of cct is

begin
	f1 <= ((c and (not b)) xor a) and ((not a) or c);
	f2 <= (c and d) or (not d);
end Behavioral;

