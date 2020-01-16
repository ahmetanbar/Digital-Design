--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:21:02 11/20/2019
-- Design Name:   
-- Module Name:   C:/Users/bakialmaci/Desktop/bakialmaci/SCHOOL/DigitalSystems/Laboratory/experiment2/experiment2/ThreeBitAdderSubtractorTB.vhd
-- Project Name:  experiment2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ThreeBitAdderSubtractor
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
 
ENTITY ThreeBitAdderSubtractorTB IS
END ThreeBitAdderSubtractorTB;
 
ARCHITECTURE behavior OF ThreeBitAdderSubtractorTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ThreeBitAdderSubtractor
    PORT(
         a : IN  std_logic_vector(2 downto 0);
         b : IN  std_logic_vector(2 downto 0);
         switch : IN  std_logic;
         carry : OUT  std_logic;
         result : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(2 downto 0) := (others => '0');
   signal b : std_logic_vector(2 downto 0) := (others => '0');
   signal switch : std_logic := '0';

 	--Outputs
   signal carry : std_logic;
   signal result : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ThreeBitAdderSubtractor PORT MAP (
          a => a,
          b => b,
          switch => switch,
          carry => carry,
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
		b <= "000";
		switch <= '0';
      wait for 100 ns;
		a <= "000";
		b <= "000";
		switch <= '1';
		wait for 100 ns;
      a <= "011";
		b <= "001";
		switch <= '0';
      wait for 100 ns;
      a <= "011";
		b <= "001";
		switch <= '1';
      wait for 100 ns;
      a <= "111";
		b <= "001";
		switch <= '0';
      wait for 100 ns;
      a <= "111";
		b <= "001";
		switch <= '1';
      wait for 100 ns;
      a <= "100";
		b <= "111";
		switch <= '0';
      wait for 100 ns;
      a <= "100";
		b <= "111";
		switch <= '1';	
		wait;
   end process;

END;
