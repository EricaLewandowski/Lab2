--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Erica Lewandowski
--
-- Create Date:   15:18:23 02/08/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Erica.Lewandowski/Documents/School/Spring 2014/ECE 281/Xilinx/Lab2/AdderTB.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FullAdder
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
 
ENTITY AdderTB IS
END AdderTB;
 
ARCHITECTURE behavior OF AdderTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FullAdder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         CIn : IN  std_logic;
         Sum : OUT  std_logic;
         COut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal CIn : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal COut : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FullAdder PORT MAP (
          A => A,
          B => B,
          CIn => CIn,
          Sum => Sum,
          COut => COut
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
      -- First line of truth table
		A <= '0';
		B <= '0';
		CIn <= '0';
		wait for 100 ns;	
		
		-- Second line of truth table
		A <= '0';
		B <= '0';
		CIn <= '1';
		wait for 100 ns;	
		
		-- Complete_ the rest of the truth table below:
				
		A <= '0';
		B <= '1';
		CIn <= '0';
		wait for 100 ns;	
		
		A <= '0';
		B <= '1';
		CIn <= '1';
		wait for 100 ns;

		A <= '1';
		B <= '0';
		CIn <= '0';
		wait for 100 ns;	
		
		A <= '1';
		B <= '0';
		CIn <= '1';
		wait for 100 ns;

		A <= '1';
		B <= '1';
		CIn <= '0';
		wait for 100 ns;	
		
		A <= '1';
		B <= '1';
		CIn <= '1';
		wait for 100 ns;
		
      wait;
   end process;

END;
