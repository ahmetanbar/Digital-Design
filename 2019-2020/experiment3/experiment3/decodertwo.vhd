library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decodertwo is
    Port ( x : in  STD_LOGIC_VECTOR (1 downto 0);
           result : out  STD_LOGIC_VECTOR (3 downto 0));
end decodertwo;

architecture Behavioral of decodertwo is

begin
	result(0) <= not x(0) and not x(1);
	result(1) <= not x(0) and  x(1);
	result(2) <=  x(0) and not x(1);
	result(3) <=  x(0) and  x(1);

end Behavioral;

