--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:00:24 11/20/2019
-- Design Name:   
-- Module Name:   C:/Users/bakialmaci/Desktop/bakialmaci/SCHOOL/DigitalSystems/Laboratory/experiment3/experiment3/fullSubtractorTB.vhd
-- Project Name:  experiment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullSubtractor
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
 
ENTITY fullSubtractorTB IS
END fullSubtractorTB;
 
ARCHITECTURE behavior OF fullSubtractorTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullSubtractor
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cIn : IN  std_logic;
         borrow : OUT  std_logic;
         result : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cIn : std_logic := '0';

 	--Outputs
   signal borrow : std_logic;
   signal result : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullSubtractor PORT MAP (
          a => a,
          b => b,
          cIn => cIn,
          borrow => borrow,
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
      a <= '0';
		b <= '0';
		cIn <= '0';
      wait for 100 ns;
      a <= '0';
		b <= '0';
		cIn <= '1';
      wait for 100 ns;	
      a <= '0';
		b <= '1';
		cIn <= '0';
      wait for 100 ns;	
      a <= '0';
		b <= '1';
		cIn <= '1';
      wait for 100 ns;	
      a <= '1';
		b <= '0';
		cIn <= '0';
      wait for 100 ns;	
      a <= '1';
		b <= '0';
		cIn <= '1';
      wait for 100 ns;	
      a <= '1';
		b <= '1';
		cIn <= '0';
      wait for 100 ns;	
      a <= '1';
		b <= '1';
		cIn <= '1';
      wait for 100 ns;			
      wait;
   end process;

END;
