--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:15:27 12/01/2019
-- Design Name:   
-- Module Name:   C:/Users/bakialmaci/Desktop/bakialmaci/SCHOOL/DigitalSystems/Laboratory/experiment3/experiment3/shifterTB.vhd
-- Project Name:  experiment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shifter
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
 
ENTITY shifterTB IS
END shifterTB;
 
ARCHITECTURE behavior OF shifterTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shifter
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(3 downto 0);
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(3 downto 0);
   signal carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shifter PORT MAP (
          input => input,
          output => output,
          carry => carry
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
		input <= "0000";
      wait for 100 ns;
		input <= "0001";
      wait for 100 ns;
		input <= "0011";
      wait for 100 ns;
		input <= "0100";
      wait for 100 ns;
		input <= "0101";
      wait for 100 ns;
		input <= "0110";
      wait for 100 ns;
		input <= "1000";
      wait for 100 ns;
		input <= "1001";	
      wait;
   end process;

END;
