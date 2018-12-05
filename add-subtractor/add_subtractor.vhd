library ieee;
use ieee.std_logic_1164.all;

entity adderSubtractor is 
   port(  mode : in std_logic;
          A  : in std_logic_vector(2 downto 0);
          B  : in std_logic_vector(2 downto 0);
          S  : out std_logic_vector(2 downto 0);
          Cout, V : out std_logic
		);
end adderSubtractor;

architecture struct of adderSubtractor is

   component full_adder is	      
      port(
		A, B, C : IN std_logic;
		Sum, Carry : OUT std_logic
		);
   end component;
	
   signal C1, C2, C3: std_logic;
   signal xor0, xor1, xor2: std_logic;

begin
	xor0 <= B(0) XOR mode;
	xor1 <= B(1) XOR mode;
	xor2 <= B(2) XOR mode;
	FA0: full_adder port map(A(0), xor0, mode,  S(0), C1);
	FA1: full_adder port map(A(1), xor1, C1,  S(1), C2); 
	FA2: full_adder port map(A(2), xor2, C2,  S(2), C3); 
	V <= C2 XOR C3;
	Cout <= C3;
end struct;
