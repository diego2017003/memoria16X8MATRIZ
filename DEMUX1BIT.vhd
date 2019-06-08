Library ieee;
use ieee.std_logic_1164.all;
ENTITY DEMUX1BIT IS
	PORT(Den:IN STD_LOGIC;
			Adrs:IN STD_LOGIC_VECTOR(1 downto 0);
			SD0,SD1,SD2,SD3: OUT STD_LOGIC);
END DEMUX1BIT;
Architecture demux of DEMUX1BIT is
BEGIN
SD0<=(Den)AND(NOT(Adrs(1)))AND(NOT(Adrs(0)));
SD1<=(Den)AND(NOT(Adrs(1)))AND((Adrs(0)));
SD2<=(Den)AND((Adrs(1)))AND(NOT(Adrs(0)));
SD3<=(Den)AND((Adrs(1)))AND((Adrs(0)));
END demux;