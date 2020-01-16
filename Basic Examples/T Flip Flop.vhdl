library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_FLIPFLOP is
    Port  (T   : in    STD_LOGIC;
           CLK : in    STD_LOGIC;
           RES : in    STD_LOGIC;
           Q   : out   STD_LOGIC;
           QN  : out   STD_LOGIC);
end T_FLIPFLOP;

architecture Behavioral of T_FLIPFLOP is
component D_FLIPFLOP is
    Port  (D   : in    STD_LOGIC;
           CLK : in    STD_LOGIC;
           RES : in    STD_LOGIC;
           Q   : out   STD_LOGIC;
           QN  : out   STD_LOGIC);
end component;
signal sgn : std_logic_vector(1 downto 0);
begin
sgn(0) <= T xor sgn(1);
d : D_FLIPFLOP port map(sgn(0),CLK,RES,sgn(1),QN);
Q <= sgn(1);
end Behavioral;

