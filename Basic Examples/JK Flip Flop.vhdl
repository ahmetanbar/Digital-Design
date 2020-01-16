library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_FLIPFLOP is
    Port  (J   : in    STD_LOGIC;
			  K   : in    STD_LOGIC;
           CLK : in    STD_LOGIC;
           Q   : out   STD_LOGIC;
           QN  : out   STD_LOGIC);
end JK_FLIPFLOP;

architecture Behavioral of JK_FLIPFLOP is
component D_FLIPFLOP is
    Port  (D   : in    STD_LOGIC;
           CLK : in    STD_LOGIC;
           Q   : out   STD_LOGIC;
           QN  : out   STD_LOGIC);
end component;
signal sgn : std_logic_vector(4 downto 0);
begin
sgn(0) <= sgn(3) and J;
sgn(1) <= not(K) and sgn(2);
sgn(4) <= sgn(0) or sgn(1);
d : D_FLIPFLOP port map(sgn(4),CLK,sgn(2),sgn(3));
Q <= sgn(2);
QN <= sgn(3);
end Behavioral;

