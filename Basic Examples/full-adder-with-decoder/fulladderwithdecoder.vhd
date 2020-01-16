library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladderwithdecoder is
	port(
		A: in STD_LOGIC_VECTOR(2 downto 0);
		S: out STD_LOGIC;
		C: out STD_LOGIC
	);
end fulladderwithdecoder;

architecture Behavioral of fulladderwithdecoder is
signal Z:STD_LOGIC_VECTOR(7 downto 0);
component decoder
	port(
	A : in STD_LOGIC_VECTOR(2 downto 0);
	Z : out STD_LOGIC_VECTOR(7 downto 0)
	);
end component;
begin
	decoder_blok: decoder port map(A,Z);
	S <= Z(1) or Z(2) or Z(4) or Z(7);
	C <= Z(3) or Z(5) or Z(6) or Z(7);
end Behavioral;

