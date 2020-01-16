library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
    Port ( I0 : in  STD_LOGIC;
			  I1 : in  STD_LOGIC;
			  I2 : in  STD_LOGIC;
			  I3 : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end MUX;

architecture Behavioral of MUX is

begin
O <= (I0 and not(S(0)) and not(S(1))) or (I1 and not(S(0)) and S(1)) or (I2 and S(0) and not(S(1))) or (I3 and S(0) and S(1));

end Behavioral;

