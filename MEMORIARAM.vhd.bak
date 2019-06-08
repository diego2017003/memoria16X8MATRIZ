LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY MemoriaRam IS
	PORT(rw,clk,enable:IN STD_LOGIC;--rw:'0' para ler o dado,'1' para escrever dado;clk:Sinal de clock;<--enable: habilitar Qualquer operação--> 
		adrss: IN STD_LOGIC_VECTOR(3 downto 0);-- endereço para operação-->
		file_en:IN STD_LOGIC_VECTOR(7 Downto 0);--Entrada do dado a ser salvo-->
		SRead:OUT STD_LOGIC_VECTOR(7 Downto 0));--Saida de leitura-->
END MemoriaRam;
Architecture memory of memoriaRam is
SIGNAL RR,E0,S0,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15:STD_LOGIC_VECTOR(7 Downto 0);
SIGNAL Endereco:STD_LOGIC_VECTOR(3 downto 0);
SIGNAL ld:STD_LOGIC_VECTOR(15 downto 0);
COMPONENT ffd4b IS
	port(Dff4: IN STD_LOGIC_VECTOR(3 downto 0);
		clkff4,CLRN4: IN STD_LOGIC;
		Qff4:OUT STD_LOGIC_VECTOR(3 downto 0));
	END COMPONENT;
COMPONENT ffd8 IS
	PORT(Dff8: IN STD_LOGIC_VECTOR(7 downto 0);
		clkff8,CLRN8: IN STD_LOGIC;
		Qff8:OUT STD_LOGIC_VECTOR(7 downto 0));
	END COMPONENT;
COMPONENT DEMUX1BIT IS
PORT(Den:IN STD_LOGIC;
		Adrs:IN STD_LOGIC_VECTOR(3 downto 0);
		SD0,SD1,SD2,SD3,SD4,SD5,SD6,SD7,SD8,SD9,SD10,SD11,SD12,SD13,SD14,SD15: OUT STD_LOGIC);
END COMPONENT;
COMPONENT MULTIPLEXADOR8BITS IS
PORT(
		Em18,Em28,Em38,Em48,Em58,Em68,Em78,Em88,Em98,Em108,Em118,Em128,Em138,Em148,Em158,Em168:IN STD_LOGIC_VECTOR(7 downto 0);
		S8:IN STD_LOGIC_VECTOR(3 downto 0);
		Saida8BITS:OUT STD_LOGIC_VECTOR(7 downto 0));
END COMPONENT;
BEGIN	
	LAdrs:ffd4b port map(Dff4=>adrss,clkff4=>(clk AND enable),CLRN4=>'0',Qff4=>Endereco);
	DECODE:DEMUX1BIT port map(Den=>Enable,Adrs=>adrss,SD0=>ld(0),SD1=>ld(1),SD2=>ld(2),SD3=>ld(3),SD4=>ld(4),SD5=>ld(5),SD6=>ld(6),SD7=>ld(7),SD8=>ld(8),SD9=>ld(9),SD10=>ld(10),SD11=>ld(11),SD12=>ld(12),SD13=>ld(13),SD14=>ld(14),SD15=>ld(15));
	LFile:ffd8 port map(Dff8=>file_en,clkff8=>(clk AND enable),CLRN8=>'0',Qff8=>E0);
	g0:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(0)),CLRN8=>'0',Qff8=>r0);
	g1:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(1)),CLRN8=>'0',Qff8=>r1);
	g2:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(2)),CLRN8=>'0',Qff8=>r2);
	g3:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(3)),CLRN8=>'0',Qff8=>r3);
	g4:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(4)),CLRN8=>'0',Qff8=>r4);
	g5:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(5)),CLRN8=>'0',Qff8=>r5);
	g6:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(6)),CLRN8=>'0',Qff8=>r6);
	g7:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(7)),CLRN8=>'0',Qff8=>r7);
	g8:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(8)),CLRN8=>'0',Qff8=>r8);
	g9:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(9)),CLRN8=>'0',Qff8=>r9);
	g10:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(10)),CLRN8=>'0',Qff8=>r10);
	g11:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(11)),CLRN8=>'0',Qff8=>r11);
	g12:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(12)),CLRN8=>'0',Qff8=>r12);
	g13:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(13)),CLRN8=>'0',Qff8=>r13);
	g14:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(14)),CLRN8=>'0',Qff8=>r14);
	g15:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(15)),CLRN8=>'0',Qff8=>r15);
	mux:MulTIPLEXADOR8BITS port map(Em18=>r0,Em28=>r1,Em38=>r2,Em48=>r3,Em58=>r4,Em68=>r5,Em78=>r6,Em88=>r7,Em98=>r8,Em108=>r9,Em118=>r10,Em128=>r11,Em138=>r12,Em148=>r13,Em158=>r14,Em168=>r15,S8=>Adrss,Saida8BITS=>RR);
	Sa0:ffd8 port map(Dff8=>RR,clkff8=>(NOT(rw)AND clk),CLRN8=>'0',Qff8=>S0);
	SRead<=S0;
END memory; 