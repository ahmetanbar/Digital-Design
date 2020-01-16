library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity USR is
    Port  (I        : in    STD_LOGIC_VECTOR(3 DOWNTO 0);
			  S   	  : in    STD_LOGIC_VECTOR(1 DOWNTO 0);
           CLK 	  : in    STD_LOGIC;
           SERIAL   : in   STD_LOGIC;
           RESET    : in   STD_LOGIC;
           A    	  : out   STD_LOGIC_VECTOR(3 DOWNTO 0));
end USR;

architecture Behavioral of USR is
component T_FLIPFLOP is
    Port  (T   : in    STD_LOGIC;
           CLK : in    STD_LOGIC;
           RES : in    STD_LOGIC;
           Q   : out   STD_LOGIC;
           QN  : out   STD_LOGIC);
end component;

component MUX is
    Port ( I0 : in  STD_LOGIC;
			  I1 : in  STD_LOGIC;
			  I2 : in  STD_LOGIC;
			  I3 : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end component;
signal H : std_logic_vector(3 downto 0);
signal K : std_logic_vector(3 downto 0);
signal A0_TEMP,A1_TEMP,A2_TEMP,A3_TEMP,QN_TEMP : std_logic;
begin
M0 : MUX PORT MAP(A3_TEMP,SERIAL,A2_TEMP,I(3),S,H(0)); 
M1 : MUX PORT MAP(A2_TEMP,A3_TEMP,A1_TEMP,I(2),S,H(1)); 
M2 : MUX PORT MAP(A1_TEMP,A2_TEMP,A0_TEMP,I(1),S,H(2)); 
M3 : MUX PORT MAP(A0_TEMP,A1_TEMP,SERIAL,I(0),S,H(3)); 

K(0) <= H(0) XOR A3_TEMP;
K(1) <= H(1) XOR A2_TEMP;
K(2) <= H(2) XOR A1_TEMP;
K(3) <= H(3) XOR A0_TEMP;

T0 : T_FLIPFLOP PORT MAP(K(0),CLK,RESET,A3_TEMP); 
T1 : T_FLIPFLOP PORT MAP(K(1),CLK,RESET,A2_TEMP); 
T2 : T_FLIPFLOP PORT MAP(K(2),CLK,RESET,A1_TEMP); 
T3 : T_FLIPFLOP PORT MAP(K(3),CLK,RESET,A0_TEMP);

A(3) <= A3_TEMP;
A(2) <= A2_TEMP;
A(1) <= A1_TEMP;
A(0) <= A0_TEMP;


end Behavioral;

