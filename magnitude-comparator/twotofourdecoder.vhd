library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity twotofourdecoder is
	port(
	A : in STD_LOGIC_VECTOR(1 downto 0);
	Z : out STD_LOGIC_VECTOR(3 downto 0)
	);
end twotofourdecoder;

architecture Behavioral of twotofourdecoder is
begin
	Z(0) <= not A(0) and not A(1);
	Z(1) <= A(0) and not A(1);
	Z(2) <= not A(0) and A(1);
	Z(3) <= A(0) and A(1);
end Behavioral;