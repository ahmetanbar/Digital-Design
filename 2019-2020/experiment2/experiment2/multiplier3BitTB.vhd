--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:53:06 11/20/2019
-- Design Name:   
-- Module Name:   C:/Users/bakialmaci/Desktop/bakialmaci/SCHOOL/DigitalSystems/Laboratory/experiment2/experiment2/multiplier3BitTB.vhd
-- Project Name:  experiment2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplier3Bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY multiplier3BitTB IS
END multiplier3BitTB;
 
ARCHITECTURE behavior OF multiplier3BitTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplier3Bit
    PORT(
         a : IN  std_logic_vector(2 downto 0);
         b : IN  std_logic_vector(1 downto 0);
         result : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(2 downto 0) := (others => '0');
   signal b : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplier3Bit PORT MAP (
          a => a,
          b => b,
          result => result
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      a <= "000";
		b <= "00";
      wait for 50 ns;
      a <= "000";
		b <= "01";
      wait for 50 ns;	
      a <= "000";
		b <= "11";
      wait for 50 ns;	
      a <= "001";
		b <= "01";
      wait for 50 ns;	
      a <= "001";
		b <= "10";
      wait for 50 ns;	
      a <= "001";
		b <= "11";
      wait for 50 ns;	
      a <= "011";
		b <= "01";
      wait for 50 ns;	
      a <= "011";
		b <= "10";
      wait for 50 ns;
      a <= "011";
		b <= "11";
      wait for 50 ns;			
      a <= "111";
		b <= "01";	
		wait for 50 ns;
      a <= "111";
		b <= "10";	
		wait for 50 ns;
      a <= "111";
		b <= "11";
		wait for 50 ns;		
   end process;

END;
