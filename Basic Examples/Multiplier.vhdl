library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier2x2 is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           b : in  STD_LOGIC_VECTOR (1 downto 0);
           c : out  STD_LOGIC_VECTOR (3 downto 0));
end multiplier2x2;

architecture Behavioral of multiplier2x2 is
component halfadder
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           t : out  STD_LOGIC;
           f : out  STD_LOGIC);
end component;
signal f0,f1,f2,f3 : std_logic;
begin
h1 : halfadder port map (f0,f1,c(1),f2);
h2 : halfadder port map (f2,f3,c(2),c(3));
f0 <= a(0) and b(1);
f1 <= a(1) and b(0);
f3 <= a(1) and b(1);
c(0) <= a(0) and b(0);

end Behavioral;

