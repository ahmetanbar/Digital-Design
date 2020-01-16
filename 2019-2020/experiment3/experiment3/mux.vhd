library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    Port ( d3 : in  STD_LOGIC;
           d2 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           d0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end mux;

architecture Behavioral of mux is

begin
	output <= ((not s1) and (not s0) and (d0)) or ((not s1) and (s0) and (d1)) or ((s1) and (not s0) and (d2)) or ((s1) and (s0) and (d3));
end Behavioral;

