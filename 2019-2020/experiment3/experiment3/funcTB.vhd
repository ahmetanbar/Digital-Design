--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:49:04 12/01/2019
-- Design Name:   
-- Module Name:   C:/Users/bakialmaci/Desktop/bakialmaci/SCHOOL/DigitalSystems/Laboratory/experiment3/experiment3/funcTB.vhd
-- Project Name:  experiment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: func
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
 
ENTITY funcTB IS
END funcTB;
 
ARCHITECTURE behavior OF funcTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT func
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
         result : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';

 	--Outputs
   signal result : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: func PORT MAP (
          x => x,
          y => y,
          z => z,
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
		x <= '0';
		y <= '0';
		z <= '0';
		wait for 100 ns;
		x <= '0';
		y <= '0';
		z <= '1';
		wait for 100 ns;
		x <= '0';
		y <= '1';
		z <= '0';
		wait for 100 ns;
		x <= '0';
		y <= '1';
		z <= '1';
		wait for 100 ns;
		x <= '1';
		y <= '0';
		z <= '0';
		wait for 100 ns;
		x <= '1';
		y <= '0';
		z <= '1';
		wait for 100 ns;
		x <= '1';
		y <= '1';
		z <= '0';
		wait for 100 ns;
		x <= '1';
		y <= '1';
		z <= '1';		
      wait;
   end process;

END;
