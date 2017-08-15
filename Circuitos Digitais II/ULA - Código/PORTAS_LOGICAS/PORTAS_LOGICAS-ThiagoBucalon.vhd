LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY PORTAS_LOGICAS IS
	PORT(A_B_Cin : IN BIT_VECTOR (2 DOWNTO 0);
		Saida_deco : IN BIT_VECTOR (7 DOWNTO 0);
		S: OUT BIT);
END PORTAS_LOGICAS;
ARCHITECTURE COMPORTAMENTAL OF PORTAS_LOGICAS IS
BEGIN
		PROCESS(A_B_Cin, saida_deco)
		BEGIN	
			IF (saida_deco(0)= '1') THEN
				S <= A_B_Cin(2) AND A_B_Cin(1); -- s0 estará recebendo A e B
			ELSIF (saida_deco(1)= '1') THEN
				S <= A_B_Cin(2) NAND A_B_Cin(1);
			ELSIF (saida_deco(2)= '1') THEN
				S <= A_B_Cin(2) OR A_B_Cin(1);
			ELSIF (saida_deco(3)= '1') THEN
				S <= A_B_Cin(2) NOR A_B_Cin(1);
			ELSIF (saida_deco(4)= '1') THEN
				S <= A_B_Cin(2) XOR A_B_Cin(1);
			ELSIF (saida_deco(5)= '1') THEN
				S <= A_B_Cin(2) XNOR A_B_Cin(1);
			END IF;		
		END PROCESS;
END COMPORTAMENTAL;