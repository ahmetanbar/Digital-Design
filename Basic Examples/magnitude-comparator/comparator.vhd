library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
	port(
		A: in STD_LOGIC_VECTOR(1 downto 0); 
		B: in STD_LOGIC_VECTOR(1 downto 0);
		R: out STD_LOGIC_VECTOR(2 downto 0)
	);
end comparator;

architecture Behavioral of comparator is
	component twotofourdecoder
	port(
		A : in STD_LOGIC_VECTOR(1 downto 0);
		Z : out STD_LOGIC_VECTOR(3 downto 0)
	);
end component;
signal dec_sig0: STD_LOGIC_VECTOR(3 downto 0);
signal dec_sig1: STD_LOGIC_VECTOR(3 downto 0);
signal first_short: STD_LOGIC;
signal zero_short: STD_LOGIC;

begin
	decoder_blok1: twotofourdecoder port map(A(0)=>A(0),A(1)=>B(0),
											Z(0)=>dec_sig0(0),Z(1)=>dec_sig0(1),
											Z(2)=>dec_sig0(2),Z(3)=>dec_sig0(3));
	decoder_blok2: twotofourdecoder port map(A(0)=>A(1),A(1)=>B(1),
											Z(0)=>dec_sig1(0),Z(1)=>dec_sig1(1),
											Z(2)=>dec_sig1(2),Z(3)=>dec_sig1(3));
	first_short<=dec_sig1(0) or dec_sig1(3);
	zero_short<=dec_sig0(0) or dec_sig0(3);
	R(0)<= dec_sig1(1) or (dec_sig0(1) and first_short);
	R(1)<= first_short and zero_short;
	R(2)<= dec_sig1(2) or (dec_sig0(2) and first_short); 
end Behavioral;

