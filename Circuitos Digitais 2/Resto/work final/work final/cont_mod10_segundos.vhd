Library ieee;
Use ieee.std_logic_1164.all;
Library work;
Use work.all;
ENTITY cont_mod10_segundos IS
	PORT(clk : IN STD_LOGIC;
		 q_out: BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));
		 Constant es : STD_LOGIC := '1';
END cont_mod10_segundos;

ARCHITECTURE estrutural OF cont_mod10_segundos IS

signal q0, q1, q2, q3 : std_logic;
signal clr : std_logic;

BEGIN	
	clr <= '0' when (q2 = '1' and q0 = '1') else '1';
	contadorFFT3 : contadorFFT PORT MAP(es, clr, clk, q3);
	contadorFFT2 : contadorFFT PORT MAP(es, clr, q3, q2);
	contadorFFT1 : contadorFFT PORT MAP(es, clr, q2, q1);
	contadorFFT0 : contadorFFT PORT MAP(es, clr, q1, q0);
	q_out <= q0 & q1 & q2 & q3;
END estrutural;