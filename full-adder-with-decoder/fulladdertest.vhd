LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY fulladdertest IS
END fulladdertest;
 
ARCHITECTURE behavior OF fulladdertest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladderwithdecoder
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         S : OUT  std_logic;
         C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic;
   signal C : std_logic;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladderwithdecoder PORT MAP (
          A => A,
          S => S,
          C => C
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
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
