--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:31:21 11/02/2019
-- Design Name:   
-- Module Name:   C:/Users/bakialmaci/Desktop/bakialmaci/SCHOOL/DigitalSystems/Works/experiment1/cct_tb.vhd
-- Project Name:  experiment1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cct
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
 
ENTITY cct_tb IS
END cct_tb;
 
ARCHITECTURE behavior OF cct_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cct
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         f1 : OUT  std_logic;
         f2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';

 	--Outputs
   signal f1 : std_logic;
   signal f2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cct PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          f1 => f1,
          f2 => f2
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
      -- hold reset state for 100 ns.
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
      wait for 100 ns;	
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '1';
      wait for 100 ns;
		a <= '0';
		b <= '1';
		c <= '1';
		d <= '0';
      wait for 100 ns;
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '1';
      wait for 100 ns;
		wait;
   end process;

END;
