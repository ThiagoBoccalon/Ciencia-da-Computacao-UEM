LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FFJK_C IS
	PORT(CLR,CLK,J,K: IN STD_LOGIC;
		 Q,QBAR: BUFFER STD_LOGIC);
END FFJK_C;

ARCHITECTURE TESTE OF FFJK_C IS
	BEGIN
		PROCESS(CLR,CLK,J,K)
		VARIABLE QV, QBARV: STD_LOGIC;
		BEGIN
			IF (CLR ='0') THEN
				QV:= '0';
				QBARV:= QV;
			ELSIF (FALLING_EDGE (CLK)) THEN
				IF (J='1' AND K='0') THEN
					QV:= '1';
					QBARV:= NOT QV;
				ELSIF (J= '0' AND K='1') THEN
					QV:= '0';
					QBARV:= NOT QV;
				ELSIF (J='0' AND K='0') THEN
					QV:= NOT QV;
					QBARV:= NOT QV;
				ELSE
					QV:= QV;
					QBARV:= QBARV;
				END IF;
			END IF;
			Q<= QV; 
			QBAR<= QBARV;
		END PROCESS;		
END TESTE;
			