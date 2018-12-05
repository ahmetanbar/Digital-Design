LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY full_adder IS
PORT (
	A, B, C : IN std_logic;
	Sum, Carry : OUT std_logic
	);
END full_adder;

ARCHITECTURE Behavioral OF full_adder IS
signal SSum1,SC1,SC2:std_logic;
Component half_adder
	port (	
	A,B:in std_logic;
	Sum, Carry:out std_logic
	);
end component;

BEGIN
	H1_block:half_adder port map(A,B,SSum1,SC1);
	H2_block:half_adder port map(SSum1,C,Sum,SC2);
	Carry <= SC1 or SC2;
END Behavioral;
