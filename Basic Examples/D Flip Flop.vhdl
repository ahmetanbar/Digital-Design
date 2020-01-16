library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FLIPFLOP is
    Port  (D   : in    STD_LOGIC;
           CLK : in    STD_LOGIC;
           RES : in    STD_LOGIC;
           Q   : out   STD_LOGIC;
           QN  : out   STD_LOGIC);
end D_FLIPFLOP;
architecture Behavioral of D_FLIPFLOP is
component D_LATCH is
    Port ( D : in    STD_LOGIC;
           E : in    STD_LOGIC;
           Q : out   STD_LOGIC;
           QN : out   STD_LOGIC);
end component;
signal sgn : std_logic_vector(3 downto 0);
begin
sgn(2) <= not(RES) and D;
master : D_LATCH port map(sgn(2),CLK,sgn(0),sgn(1));
slave  : D_LATCH port map(sgn(0),not(CLK),Q,QN);

end Behavioral;

