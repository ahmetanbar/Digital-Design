library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity threetoeightdecoder is
	port(
	-- LOGIC_GATES DEFINE
	A : in STD_LOGIC_VECTOR(2 downto 0);
	Z : out STD_LOGIC_VECTOR(7 downto 0)
	);
end threetoeightdecoder;

architecture Behavioral of threetoeightdecoder is
begin
	-- ASSIGN INPUTS TO OUTPUTS
	Z(0) <= not A(0) and not A(1) and not A(2);
	Z(1) <= A(0) and not A(1) and not A(2);
	Z(2) <= not A(0) and A(1) and not A(2);
	Z(3) <= A(0) and A(1) and not A(2);
	Z(4) <= not A(0) and not A(1) and A(2);
	Z(5) <= A(0) and not A(1) and A(2);
	Z(6) <= not A(0) and A(1) and A(2);
	Z(7) <= A(0) and A(1) and A(2);
end Behavioral;