library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity binary_to_bcd is
    Port ( bin : in  STD_LOGIC_VECTOR (5 downto 0);
           bcd : out  STD_LOGIC_VECTOR (7 downto 0));
end binary_to_bcd;

architecture Behavioral of binary_to_bcd is
component converter is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           s : out  STD_LOGIC_VECTOR (3 downto 0);
			  c : out std_logic);
end component;
signal sgn0 : std_logic_vector (3 downto 0);
signal sgn1 : std_logic_vector (3 downto 0);
signal sgn2 : std_logic_vector (3 downto 0);
signal sgn3 : std_logic_vector (3 downto 0);

signal sgn_c : std_logic_vector (2 downto 0);

begin
w0 : converter port map( x(3) => '0' , x(2 downto 0) => bin(5 downto 3) , s => sgn0 , c=> sgn_c(0));
w1 : converter port map( x(3 downto 1) => sgn0(2 downto 0),x(0) => bin(2), s => sgn1 , c=> sgn_c(1));
w2 : converter port map( x(3 downto 1) => sgn1(2 downto 0),x(0) => bin(1), s => sgn2 , c=> sgn_c(2));

bcd(7) <= '0';
bcd(6) <= sgn0(3);
bcd(5) <= sgn1(3);
bcd(4) <= sgn2(3);
bcd(3) <= sgn2(2);
bcd(2) <= sgn2(1);
bcd(1) <= sgn2(0);
bcd(0) <= bin(0);


end Behavioral;
