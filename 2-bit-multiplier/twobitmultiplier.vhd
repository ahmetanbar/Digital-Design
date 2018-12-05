library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity twobitmultiplier is
	PORT(
	X : in std_logic_vector(1 downto 0);
	Y : in std_logic_vector(1 downto 0);
	Pro : out std_logic_vector(3 downto 0)
	);
end twobitmultiplier;

architecture Behavioral of twobitmultiplier is
   component full_adder is
	port( 
	A, B, C : IN std_logic;
	Sum, Carry : OUT std_logic
	);
   end component;
		
   signal and01, and10, and11, Carry : std_logic;

begin
	Pro(0) <= X(0) and Y(0);
	and01 <= X(0) and Y(1);
	and10 <= X(1) and Y(0);
	and11 <= X(1) and Y(1);
	FA0: full_adder port map(and01, and10, '0',  Pro(1), Carry);
	FA1: full_adder port map(and11, '0', Carry, Pro(2), Pro(3));
end Behavioral;
