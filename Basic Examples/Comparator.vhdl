library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity comparator is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           b : in  STD_LOGIC_VECTOR (1 downto 0);
           g : out  STD_LOGIC;
           e : out  STD_LOGIC;
           l : out  STD_LOGIC);
end comparator;

architecture Behavioral of comparator is
component decoder is
    Port ( i : in  STD_LOGIC_VECTOR (1 downto 0);
           o : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
signal adec,bdec : std_logic_vector(3 downto 0);
begin
funca : decoder port map (a,adec);
funcb : decoder port map (b,bdec);

g <= (adec(3) and (bdec(0) or bdec(1) or bdec(2))) or (adec(2) and (bdec(0) or bdec(1))) or (adec(1) and bdec(0));
e <= (adec(0) and bdec(0)) or (adec(1) and bdec(1)) or (adec(2) and bdec(2)) or (adec(3) and bdec(3));
l <= (adec(0) and (bdec(1) or bdec(2) or bdec(3))) or (adec(1) and (bdec(2) or bdec(3))) or (adec(2) and bdec(3));
			
end Behavioral;
