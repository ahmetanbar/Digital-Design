library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HALF_ADDER is
       Port (x,y,ci :  in  STD_LOGIC;
				  co,sum : out  STD_LOGIC);
       end HALF_ADDER;

architecture Behavioral of HALF_ADDER is
begin
	sum <= x xor y xor ci;
	co <= (x and y) or ((x xor y) and ci);
end Behavioral;
