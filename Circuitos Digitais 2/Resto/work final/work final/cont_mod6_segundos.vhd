Library ieee;
Use ieee.std_logic_1164.all;
Library work;
Use work.all;
ENTITY cont_mod6_segundos IS
	PORT(clk  : IN STD_LOGIC;
		 q_out: BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0));
		 Constant es : STD_LOGIC := '1';
END cont_mod6_segundos;

ARCHITECTURE estrutural OF cont_mod6_segundos IS


signal q0, q1, q2 : std_logic;
signal clr : std_logic;

BEGIN
	clr <= '0' when (q0 = '1' and q1 ='1') else '1';
	contadorFFT2 : contadorFFT PORT MAP(es, clr, clk, q2);
	contadorFFT1 : contadorFFT PORT MAP(es, clr, q2, q1);
	contadorFFT0 : contadorFFT PORT MAP(es, clr, q1, q0);
	q_out <= q0 & q1 & q2;
END estrutural;