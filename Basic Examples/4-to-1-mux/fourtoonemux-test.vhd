LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fourtoonemux-test IS
END fourtoonemux-test;
 
ARCHITECTURE behavior OF fourtoonemux-test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourtoonemux
    PORT(
         I : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourtoonemux PORT MAP (
          I => I,
          S => S,
          Y => Y
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      I <= "0101";
		S <= "00";
		wait for 100 ns;
		I <= "0101";
		S <= "01";
		wait for 100 ns;
		I <= "0101";
		S <= "10";
		wait for 100 ns;
		I <= "0101";
		S <= "11";
      wait;
   end process;

END;
