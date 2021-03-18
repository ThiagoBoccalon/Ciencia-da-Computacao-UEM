Library ieee;
Use ieee.std_logic_1164.all;
Library work;
Use work.all;
ENTITY cont_mod24_horas IS
	PORT(clk : IN STD_LOGIC;
		 q_out: BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0));
		 Constant es : STD_LOGIC := '1';
END cont_mod24_horas;

ARCHITECTURE estrutural OF cont_mod24_horas IS


signal q0, q1, q2, q3, q4 : std_logic;
signal clr : std_logic;

BEGIN
	clr <= '0' when (q0 = '1' and q1 = '1') else '1';
	contadorFFT4 : contadorFFT PORT MAP(es, clr, clk, q4);
	contadorFFT3 : contadorFFT PORT MAP(es, clr, q4, q3);
	contadorFFT2 : contadorFFT PORT MAP(es, clr, q3, q2);
	contadorFFT1 : contadorFFT PORT MAP(es, clr, q2, q1);
	contadorFFT0 : contadorFFT PORT MAP(es, clr, q1, q0);
	q_out <= q0 & q1 & q2 & q3 & q4;
END estrutural;

	