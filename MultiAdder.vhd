----------------------------------------------------------------------------------
-- Company: 
-- Engineer:Erica Lewandowski
-- 
-- Create Date:    13:53:13 02/10/2014 
-- Design Name: 
-- Module Name:    MultiAdder - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MultiAdder is
    Port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC_VECTOR (3 downto 0);
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
			  Switch : in std_logic;
			  Oflow: out std_logic);
			  
end MultiAdder;

architecture Behavioral of MultiAdder is


	component FullAdder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIn : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           COut : out  STD_LOGIC
			  );
	end component FullAdder;
	
signal carry : std_logic_vector (4 downto 0);
--signal mid : std_logic_vector (3 downto 0);
signal twoc : std_logic_vector (3 downto 0);

begin

--mid <= Bin;
twoc <= Bin when switch = '0' else 
		not Bin;
		--std_logic_vector (signed(not mid) +1) when switch = '1';

Bit0: FullAdder
	port map (  A => Ain(0),
					B => twoc(0),
					CIn => switch,
					COut => carry(1),
					Sum => Sum(0)
);			
					
Bit1: FullAdder
	port map (  A => Ain(1),
					B => twoc(1),
					CIn => carry(1),
					COut => carry(2),
					Sum => Sum(1)
);						

Bit2: FullAdder
	port map (  A => Ain(2),
					B => twoc(2),
					CIn => carry(2),
					COut => carry(3),
					Sum => Sum(2)
);						

Bit3: FullAdder
	port map (  A => Ain(3),
					B => twoc(3),
					CIn => carry(3),
					COut => carry(4),
					Sum => Sum(3)
);					
	

Oflow <= carry(4) XOR carry(3); 

end Behavioral;

