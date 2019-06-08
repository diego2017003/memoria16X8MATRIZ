LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY MULTIPLEXADOR1BIT IS 
	PORT(
		Em1,Em2,Em3,Em4,Em5,Em6,Em7,Em8,Em9,Em10,Em11,Em12,Em13,Em14,Em15,Em16:IN STD_LOGIC;
		S:IN STD_LOGIC_VECTOR(3 downto 0);
		Saida:OUT STD_LOGIC);
END MULTIPLEXADOR1BIT;
ARCHITECTURE mux1BIT OF MULTIPLEXADOR1BIT IS
SIGNAL i:STD_LOGIC_VECTOR(15 downto 0);
BEGIN

i(0)<=(Em1)AND(NOT(s(3)))AND(NOT(s(2)))AND(NOT(s(1)))AND(NOT(s(0)));	
i(1)<=(Em2)AND(NOT(s(3)))AND(NOT(s(2)))AND(NOT(s(1)))AND((s(0)));
i(2)<=(Em3)AND(NOT(s(3)))AND(NOT(s(2)))AND((s(1)))AND(NOT(s(0)));
i(3)<=(Em4)AND(NOT(s(3)))AND(NOT(s(2)))AND((s(1)))AND((s(0)));
i(4)<=(Em5)AND(NOT(s(3)))AND((s(2)))AND(NOT(s(1)))AND(NOT(s(0)));
i(5)<=(Em6)AND(NOT(s(3)))AND((s(2)))AND(NOT(s(1)))AND((s(0)));
i(6)<=(Em7)AND(NOT(s(3)))AND((s(2)))AND((s(1)))AND(NOT(s(0)));	
i(7)<=(Em8)AND(NOT(s(3)))AND((s(2)))AND((s(1)))AND((s(0)));
i(8)<=(Em9)AND((s(3)))AND(NOT(s(2)))AND(NOT(s(1)))AND(NOT(s(0)));
i(9)<=(Em10)AND((s(3)))AND(NOT(s(2)))AND(NOT(s(1)))AND((s(0)));
i(10)<=(Em11)AND((s(3)))AND(NOT(s(2)))AND((s(1)))AND(NOT(s(0)));
i(11)<=(Em12)AND((s(3)))AND(NOT(s(2)))AND((s(1)))AND((s(0)));
i(12)<=(Em13)AND((s(3)))AND((s(2)))AND(NOT(s(1)))AND(NOT(s(0)));	
i(13)<=(Em14)AND((s(3)))AND((s(2)))AND(NOT(s(1)))AND((s(0)));
i(14)<=(Em15)AND((s(3)))AND((s(2)))AND((s(1)))AND(NOT(s(0)));
i(15)<=(Em16)AND((s(3)))AND((s(2)))AND((s(1)))AND((s(0)));
Saida<=(i(0))OR(i(1))OR(i(2))OR(i(3))OR(i(4))OR(i(5))OR(i(6))OR(i(7))OR(i(8))OR(i(9))OR(i(10))OR(i(11))OR(i(12))OR(i(13))OR(i(14))OR(i(15));
END mux1BIT;