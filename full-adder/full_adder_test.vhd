LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder_test IS
END full_adder_test;
 
ARCHITECTURE behavior OF full_adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         Sum : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder PORT MAP (
          A => A,
          B => B,
          C => C,
          Sum => Sum,
          Carry => Carry
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			A<=  '0' ;
			B<=  '0' ;
			C<=  '1' ;
		wait for 100 ns;	
			A<=  '0' ;
			B<=  '1' ;
			C<=  '0' ;
		wait for 100 ns;	
			A<=  '0' ;
			B<=  '1' ;
			C<=  '1' ;
		wait for 100 ns;	
			A<=  '1' ;
			B<=  '0' ;
			C<=  '0' ;
		wait for 100 ns;	
			A<=  '1' ;
			B<=  '0' ;
			C<=  '1' ;
		wait for 100 ns;	
			A<=  '1' ;
			B<=  '1' ;
			C<=  '0' ;
		wait for 100 ns;	
			A<=	 '1' ;
			B<=	 '1' ;
			C<=	 '1' ;
			

      -- insert stimulus here 

      wait;
   end process;

END;
