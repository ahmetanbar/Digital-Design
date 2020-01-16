library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR_LATCH is
    Port ( S : in    STD_LOGIC;
           R : in    STD_LOGIC;
           Q : out   STD_LOGIC;
           QN : out   STD_LOGIC
			  );
end SR_LATCH;

architecture Behavioral of SR_LATCH is
signal sq   : STD_LOGIC;
signal snq : STD_LOGIC;
begin

Q    <= sq;
sq   <= R nor snq;
snq <= S nor sq;
QN <= snq;

end Behavioral;