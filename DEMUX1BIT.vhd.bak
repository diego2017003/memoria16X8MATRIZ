Library ieee;
use ieee.std_logic_1164.all;
ENTITY DEMUX1BIT IS
	PORT(Den:IN STD_LOGIC;
			Adrs:IN STD_LOGIC_VECTOR(3 downto 0);
			SD0,SD1,SD2,SD3,SD4,SD5,SD6,SD7,SD8,SD9,SD10,SD11,SD12,SD13,SD14,SD15: OUT STD_LOGIC);
END DEMUX1BIT;
Architecture demux of DEMUX1BIT is
BEGIN
SD0<=(Den)AND(NOT(Adrs(3)))AND(NOT(Adrs(2)))AND(NOT(Adrs(1)))AND(NOT(Adrs(0)));
SD1<=(Den)AND(NOT(Adrs(3)))AND(NOT(Adrs(2)))AND(NOT(Adrs(1)))AND((Adrs(0)));
SD2<=(Den)AND(NOT(Adrs(3)))AND(NOT(Adrs(2)))AND((Adrs(1)))AND(NOT(Adrs(0)));
SD3<=(Den)AND(NOT(Adrs(3)))AND(NOT(Adrs(2)))AND((Adrs(1)))AND((Adrs(0)));
SD4<=(Den)AND(NOT(Adrs(3)))AND((Adrs(2)))AND(NOT(Adrs(1)))AND(NOT(Adrs(0)));
SD5<=(Den)AND(NOT(Adrs(3)))AND((Adrs(2)))AND(NOT(Adrs(1)))AND((Adrs(0)));
SD6<=(Den)AND(NOT(Adrs(3)))AND((Adrs(2)))AND((Adrs(1)))AND(NOT(Adrs(0)));
SD7<=(Den)AND(NOT(Adrs(3)))AND((Adrs(2)))AND((Adrs(1)))AND((Adrs(0)));
SD8<=(Den)AND((Adrs(3)))AND(NOT(Adrs(2)))AND(NOT(Adrs(1)))AND(NOT(Adrs(0)));
SD9<=(Den)AND((Adrs(3)))AND(NOT(Adrs(2)))AND(NOT(Adrs(1)))AND((Adrs(0)));
SD10<=(Den)AND((Adrs(3)))AND(NOT(Adrs(2)))AND((Adrs(1)))AND(NOT(Adrs(0)));
SD11<=(Den)AND((Adrs(3)))AND(NOT(Adrs(2)))AND((Adrs(1)))AND((Adrs(0)));
SD12<=(Den)AND((Adrs(3)))AND((Adrs(2)))AND(NOT(Adrs(1)))AND(NOT(Adrs(0)));
SD13<=(Den)AND((Adrs(3)))AND((Adrs(2)))AND(NOT(Adrs(1)))AND((Adrs(0)));
SD14<=(Den)AND((Adrs(3)))AND((Adrs(2)))AND((Adrs(1)))AND(NOT(Adrs(0)));
SD15<=(Den)AND((Adrs(3)))AND((Adrs(2)))AND((Adrs(1)))AND((Adrs(0)));
END demux;