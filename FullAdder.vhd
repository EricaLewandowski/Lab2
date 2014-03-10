----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:21:45 02/08/2014 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIn : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           COut : out  STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is

signal Anot, Bnot, CinNot, E, F, G, H, I, J : std_logic;

begin

Anot <= not A;
Bnot <= not B;
CinNot <= not CIn;

E <= Anot and Bnot and CIn;
F <= Anot and B and CinNot;
G <= A and B and CIn;

H <= A and B;
I <= B and CIn;
J <= A and CIn;

Sum <= E or F or G;
COut <= H or I or J;

end Behavioral;

