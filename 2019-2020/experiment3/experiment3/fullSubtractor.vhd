library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullSubtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cIn : in  STD_LOGIC;
           borrow : out  STD_LOGIC;
           result : out  STD_LOGIC);
end fullSubtractor;

architecture Behavioral of fullSubtractor is
signal inSign:std_logic_vector (2 downto 0);
signal resSign:std_logic_vector (7 downto 0);
component three_to_eight_decoder is
    Port ( input : in  STD_LOGIC_VECTOR (2 downto 0);
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
begin
	inSign(0) <= cIn;
	inSign(1) <= b;
	inSign(2) <= a;
	decoder1:three_to_eight_decoder port map(inSign,resSign);
	result <= (resSign(1) or resSign(2)	 or resSign(4) or resSign(7));
	borrow <= (resSign(1) or resSign(2) or resSign(3) or resSign(7));
end Behavioral;

