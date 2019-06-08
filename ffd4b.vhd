LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY ffd4b is 
	port(Dff4: IN STD_LOGIC_VECTOR(3 downto 0);
		clkff4,CLRN4: IN STD_LOGIC;
		Qff4:OUT STD_LOGIC_VECTOR(3 downto 0));
END ffd4b;
ARCHITECTURE behaviorffd4b of ffd4b is
		COMPONENT ffd
			port(Dff,clkff,CLRN:IN STD_LOGIC;
		   Qff:OUT STD_LOGIC);
		END COMPONENT;
		begin	
			gen:FOR i IN 0 TO 3 GENERATE
			l:ffd PORT MAP(Dff=>Dff4(i),clkff=>clkff4,CLRN=>CLRN4,Qff=>Qff4(i));
	    END GENERATE;
END behaviorffd4b;	