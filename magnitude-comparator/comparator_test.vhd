
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY comparator_test IS
END comparator_test;
 
ARCHITECTURE behavior OF comparator_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         R : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal R : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator PORT MAP (
          A => A,
          B => B,
          R => R
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
		A<="00";
		B<="00";
      wait for 50 ns;	
		A<="11";
		B<="11";
		wait for 50 ns;	
		A<="11";
		B<="10";
		wait for 50 ns;	
		A<="10";
		B<="01";
		wait for 50 ns;	
		A<="10";
		B<="11";
		wait for 50 ns;	
		A<="01";
		B<="10";
		wait for 50 ns;	
		A<="10";
		B<="01";
		wait for 50 ns;	
		A<="11";
		B<="01";
      wait;
   end process;

END;
