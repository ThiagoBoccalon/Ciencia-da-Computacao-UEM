LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY PORTAS_LOGICAS IS
	PORT(A_B_Cin : IN BIT_VECTOR (2 DOWNTO 0); -- A, B e Cin
		Saida_deco : IN BIT_VECTOR (7 DOWNTO 0); -- Saídas provenientes do decodificador
		S: OUT BIT); -- saída das portas lógicas
END PORTAS_LOGICAS;
ARCHITECTURE COMPORTAMENTAL OF PORTAS_LOGICAS IS
BEGIN
		PROCESS(A_B_Cin, saida_deco) --pra cada caso da saída do decodificador haverá uma, e somente uma
		BEGIN -- função lógica a ser executada, liberando a saída.
			IF (saida_deco(0)= '1') THEN
				S <= A_B_Cin(2) AND A_B_Cin(1);
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
			ELSE
				S <= '0'; -- caso não se encaixe nas funções lógicas, o resultado deve ser '0' para não atrapalhar
			END IF;		-- na or da seleção final
		END PROCESS;
END COMPORTAMENTAL;