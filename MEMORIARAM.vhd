LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY MemoriaRamV2 IS
	PORT(rw,clk,enable:IN STD_LOGIC;--rw:'0' para ler o dado,'1' para escrever dado;clk:Sinal de clock;<--enable: habilitar Qualquer operação--> 
		adrss: IN STD_LOGIC_VECTOR(3 downto 0);-- endereço para operação-->
		file_en:IN STD_LOGIC_VECTOR(7 Downto 0);--Entrada do dado a ser salvo-->
		SRead:OUT STD_LOGIC_VECTOR(7 Downto 0));--Saida de leitura-->
END MemoriaRamV2;
Architecture memory of memoriaRamV2 is
SIGNAL RR,E0,S0:STD_LOGIC_VECTOR(7 Downto 0);--RR:intermediario Da Leitura;S0:Registrador de saída;E0:registrador de entrada;--  
SIGNAL r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15:STD_LOGIC_VECTOR(7 Downto 0);--16registradores da memoria--
SIGNAL SX,SY:STD_LOGIC_VECTOR(1 downto 0);--posisoes x e y
SIGNAL Endereco:STD_LOGIC_VECTOR(3 downto 0);--registrador do endereco
SIGNAL ld:STD_LOGIC_VECTOR(7 downto 0);--habilitacao da gravacao em um registrador
COMPONENT ffd4b IS--flipflplop 4 bits
	port(Dff4: IN STD_LOGIC_VECTOR(3 downto 0);
		clkff4,CLRN4: IN STD_LOGIC;
		Qff4:OUT STD_LOGIC_VECTOR(3 downto 0));
	END COMPONENT;
COMPONENT ffd8 IS--flip flop 8 bits
	PORT(Dff8: IN STD_LOGIC_VECTOR(7 downto 0);
		clkff8,CLRN8: IN STD_LOGIC;
		Qff8:OUT STD_LOGIC_VECTOR(7 downto 0));
	END COMPONENT;
COMPONENT DEMUX1BIT IS --demultiplexador
PORT(Den:IN STD_LOGIC;
		Adrs:IN STD_LOGIC_VECTOR(1 downto 0);
		SD0,SD1,SD2,SD3: OUT STD_LOGIC);
END COMPONENT;
COMPONENT MULTIPLEXADOR8BITS IS --multiplexador de 8 bits
PORT(
		Em18,Em28,Em38,Em48,Em58,Em68,Em78,Em88,Em98,Em108,Em118,Em128,Em138,Em148,Em158,Em168:IN STD_LOGIC_VECTOR(7 downto 0);
		S8:IN STD_LOGIC_VECTOR(3 downto 0);
		Saida8BITS:OUT STD_LOGIC_VECTOR(7 downto 0));
END COMPONENT;
BEGIN	
	LAdrs:ffd4b port map(Dff4=>adrss,clkff4=>(clk AND enable),CLRN4=>'0',Qff4=>Endereco);--armazena o endereco
		SX(0)<=Endereco(2);SX(1)<=Endereco(3);SY(0)<=Endereco(0);SY(1)<=Endereco(1);--associa os dois primeiros bits do endereco a x e os doios ultimos a y
	DECODEX:DEMUX1BIT port map(Den=>Enable,Adrs=>SX,SD0=>ld(0),SD1=>ld(1),SD2=>ld(2),SD3=>ld(3));--decodifica as opcoes em x 00 01 10 11
	DECODEY:DEMUX1BIT port map(Den=>Enable,Adrs=>SY,SD0=>ld(4),SD1=>ld(5),SD2=>ld(6),SD3=>ld(7));--decodifica as opcoes em y 00 01 10 11
	LFile:ffd8 port map(Dff8=>file_en,clkff8=>(clk AND enable),CLRN8=>'0',Qff8=>E0);--constroi o registrador com o valor recebido
	g0:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(0)AND(ld(4))),CLRN8=>'0',Qff8=>r0);--constroi registrador na posicao 0000
	g1:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(0)AND(ld(5))),CLRN8=>'0',Qff8=>r1);--constroi registrador na posicao 0001
	g2:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(0)AND(ld(6))),CLRN8=>'0',Qff8=>r2);--constroi registrador na posicao 0010
	g3:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(0)AND(ld(7))),CLRN8=>'0',Qff8=>r3);--constroi registrador na posicao 0011
	g4:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(1)AND(ld(4))),CLRN8=>'0',Qff8=>r4);--constroi registrador na posicao 0100
	g5:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(1)AND(ld(5))),CLRN8=>'0',Qff8=>r5);--constroi registrador na posicao 0101
	g6:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(1)AND(ld(6))),CLRN8=>'0',Qff8=>r6);--constroi registrador na posicao 0110
	g7:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(1)AND(ld(7))),CLRN8=>'0',Qff8=>r7);--constroi registrador na posicao 0111
	g8:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(2)AND(ld(4))),CLRN8=>'0',Qff8=>r8);--constroi registrador na posicao 1000
	g9:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(2)AND(ld(5))),CLRN8=>'0',Qff8=>r9);--constroi registrador na posicao 1001
	g10:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(2)AND(ld(6))),CLRN8=>'0',Qff8=>r10);--constroi registrador na posicao 1010
	g11:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(2)AND(ld(7))),CLRN8=>'0',Qff8=>r11);--constroi registrador na posicao 1011
	g12:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(3)AND(ld(4))),CLRN8=>'0',Qff8=>r12);--constroi registrador na posicao 1100
	g13:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(3)AND(ld(5))),CLRN8=>'0',Qff8=>r13);--constroi registrador na posicao 1101
	g14:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(3)AND(ld(6))),CLRN8=>'0',Qff8=>r14);--constroi registrador na posicao 1110
	g15:ffd8 port map(Dff8=>E0,clkff8=>((rw)AND clk AND ld(3)AND(ld(7))),CLRN8=>'0',Qff8=>r15);--constroi registrador na posicao 1111
	mux:MulTIPLEXADOR8BITS port map(Em18=>r0,Em28=>r1,Em38=>r2,Em48=>r3,Em58=>r4,Em68=>r5,Em78=>r6,Em88=>r7,Em98=>r8,Em108=>r9,Em118=>r10,Em128=>r11,Em138=>r12,Em148=>r13,Em158=>r14,Em168=>r15,S8=>Adrss,Saida8BITS=>RR);--seleciona registrador para leitura 
	Sa0:ffd8 port map(Dff8=>RR,clkff8=>(NOT rw)AND(clk),CLRN8=>rw,Qff8=>S0);--ativa um registrador quando a opcao de leitura eh ativada
	SRead<=S0;
END memory; 