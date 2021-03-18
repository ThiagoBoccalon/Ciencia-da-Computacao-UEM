Library ieee;
Use ieee.std_logic_1164.all;
Library work;
Use work.all;
ENTITY contadorFFT IS
	PORT(es, clr, clk : IN STD_LOGIC;  
		 q: BUFFER STD_LOGIC);           
END contadorFFT;

ARCHITECTURE logica OF contadorFFT IS
BEGIN
	PROCESS(clr, clk, es)
	VARIABLE qv : STD_LOGIC;
	BEGIN
	IF (clr = '0') THEN
		qv := '0';
	ELSIF (falling_edge(clk)) THEN
		IF (es = '1') THEN
			qv := NOT qv;
		ELSE 
			qv := qv; 
		END IF;
	END IF;
	q <= qv;
	END PROCESS;
END logica;