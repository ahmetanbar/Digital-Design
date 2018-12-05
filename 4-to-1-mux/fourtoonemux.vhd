library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fourtoonemux is
	port(
	I: in STD_LOGIC_VECTOR(3 downto 0);
	S: in STD_LOGIC_VECTOR(1 downto 0);
	Y: out STD_LOGIC
	);
	
end fourtoonemux;

architecture Behavioral of fourtoonemux is
	signal AtO: STD_LOGIC_VECTOR(3 downto 0);
begin
	AtO(0)<= I(0) and not S(0) and not S(1);
	AtO(1)<= I(1) and S(0) and not S(1);
	AtO(2)<= I(2) and not S(0) and S(1);
	AtO(3)<= I(3) and S(0) and S(1);
	Y <= AtO(0) or AtO(1) or AtO(2) or AtO(3); 
end Behavioral;

