LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY threetoeightdecoder-test IS
END threetoeightdecoder-test;
 
ARCHITECTURE behavior OF threetoeightdecoder-test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT threetoeightdecoder
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         Z : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: threetoeightdecoder PORT MAP (
          A => A,
          Z => Z
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A<="000"; 
		wait for 50 ns;	
		A<="001";
		wait for 50 ns;	
		A<="010";
		wait for 50 ns;	
		A<="011";
		wait for 50 ns;	
		A<="100";
		wait for 50 ns;	
		A<="101";
		wait for 50 ns;	
		A<="110";
		wait for 50 ns;	
		A<="111";
      wait;
   end process;

END;
