library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity func is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           result : out  STD_LOGIC);
end func;

architecture Behavioral of func is
signal outSign:std_logic_vector(2 downto 0);
component mux is
    Port ( d3 : in  STD_LOGIC;
           d2 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           d0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;

begin
	mux1:mux port map('0',z,y,x,'0','0',outSign(0));
	mux2:mux port map('0',z,y,x,'0','1',outSign(1));
	mux3:mux port map('0',z,y,x,'1','0',outSign(2));
	
	result <= (outSign(0) and not outSign(1)) or (not outSign(1) and not outSign(2)) or (not outSign(0) and outSign(2));
	
end Behavioral;

