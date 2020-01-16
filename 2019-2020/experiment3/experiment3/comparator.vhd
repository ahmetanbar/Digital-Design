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
component decodertwo is
    Port ( x : in  STD_LOGIC_VECTOR (1 downto 0);
           result : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
signal aDec,bDec : std_logic_vector(3 downto 0);
begin

decoder1 : decodertwo port map (a,aDec);
decoder2 : decodertwo port map (b,bDec);

g <= (aDec(3) and (bDec(0) or bDec(1) or bDec(2))) or (aDec(2) and (bDec(0) or bDec(1))) or (aDec(1) and bDec(0));
e <= (aDec(0) and bDec(0)) or (aDec(1) and bDec(1)) or (aDec(2) and bDec(2)) or (aDec(3) and bDec(3));
l <= (aDec(0) and (bDec(1) or bDec(2) or bDec(3))) or (aDec(1) and (bDec(2) or bDec(3))) or (aDec(2) and bDec(3));

end Behavioral;

