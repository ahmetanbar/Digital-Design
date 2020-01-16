--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:05:01 12/01/2019
-- Design Name:   
-- Module Name:   C:/Users/bakialmaci/Desktop/bakialmaci/SCHOOL/DigitalSystems/Laboratory/experiment3/experiment3/bin2bcdTB.vhd
-- Project Name:  experiment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bin2bcd
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
 
ENTITY bin2bcdTB IS
END bin2bcdTB;
 
ARCHITECTURE behavior OF bin2bcdTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bin2bcd
    PORT(
         d : IN  std_logic_vector(5 downto 0);
         result : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bin2bcd PORT MAP (
          d => d,
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
      d <= "000000";
      wait for 100 ns;
      d <= "000001";
      wait for 100 ns;
      d <= "000100";
      wait for 100 ns;
      d <= "000101";
      wait for 100 ns;
      d <= "001000";
      wait for 100 ns;
      d <= "010000";
      wait for 100 ns;
      d <= "100101";
      wait for 100 ns;
      d <= "111111";		
      wait;
   end process;

END;
