LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY half_adder IS
	PORT (
	A, B : IN std_logic;
	Sum, Carry : OUT std_logic
	);
END half_adder;

ARCHITECTURE Behavioral OF half_adder IS
BEGIN
	Sum <= A xor B;
	Carry <= A and B;
END Behavioral;