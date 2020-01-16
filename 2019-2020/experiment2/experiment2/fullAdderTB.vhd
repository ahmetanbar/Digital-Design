--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:43:31 11/19/2019
-- Design Name:   
-- Module Name:   C:/Users/bakialmaci/Desktop/bakialmaci/SCHOOL/DigitalSystems/Works/experiment2/fullAdderTB.vhd
-- Project Name:  experiment2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullAdder
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
 
ENTITY fullAdderTB IS
END fullAdderTB;
 
ARCHITECTURE behavior OF fullAdderTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullAdder
    PORT(
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         cin : IN  std_logic;
         sum : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullAdder PORT MAP (
          in1 => in1,
          in2 => in2,
          cin => cin,
          sum => sum,
          cout => cout
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
		in1 <= '0';
		in2 <= '0';
		cin <= '0';
      wait for 100 ns;
		in1 <= '0';
		in2 <= '0';
		cin <= '1';
      wait for 100 ns;
		in1 <= '0';
		in2 <= '1';
		cin <= '0';
      wait for 100 ns;
		in1 <= '0';
		in2 <= '1';
		cin <= '1';
      wait for 100 ns;
		in1 <= '1';
		in2 <= '0';
		cin <= '0';
      wait for 100 ns;
		in1 <= '1';
		in2 <= '0';
		cin <= '1';
      wait for 100 ns;
		in1 <= '1';
		in2 <= '1';
		cin <= '0';
      wait for 100 ns;
		in1 <= '1';
		in2 <= '1';
		cin <= '1';
      wait for 100 ns;
		wait;
   end process;

END;
