-- Simple Level Shifter for Matrix/Coolrunner
-- Octal450

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity level_shifter is
	Port (
		POSTBIT_IN : in STD_LOGIC_VECTOR(7 downto 0);
		POSTBIT_OUT : out STD_LOGIC_VECTOR(7 downto 0);
		DBG: out STD_LOGIC
	);
end level_shifter;

architecture arch of level_shifter is

begin

process (POSTBIT_IN) is
begin
	POSTBIT_OUT <= POSTBIT_IN;
	DBG <= POSTBIT_IN(0);
end process;

end arch;
