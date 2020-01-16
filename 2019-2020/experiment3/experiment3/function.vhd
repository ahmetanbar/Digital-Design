library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity func is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           result : out  STD_LOGIC);
end func;

architecture Behavioral of func is
component mux is
    Port ( d3 : in  STD_LOGIC;
           d2 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           d0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;
signal xSign,ySign,zSign,rSign:std_logic;
begin
	xSign <= x;
	ySign <= y;
	zSign <= z;
	result <= rSign;
	mux1:mux port map('0','1',zSign,'1',xSign,ySign,rSign);


end Behavioral;

