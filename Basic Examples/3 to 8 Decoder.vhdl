library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity three_eight_decoder is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           d : out  STD_LOGIC_VECTOR (7 downto 0));
end three_eight_decoder;

architecture Behavioral of three_eight_decoder is
begin
d(0) <= (not x) and (not y) and (not z);
d(1) <= (not x) and (not y) and (z);
d(2) <= (not x) and (y) and (not z);
d(3) <= (not x) and (y) and (z);
d(4) <= (x) and (not y) and (not z);
d(5) <= (x) and (not y) and (z);
d(6) <= (x) and (y) and (not z);
d(7) <= (x) and (y) and (z);
end Behavioral;

