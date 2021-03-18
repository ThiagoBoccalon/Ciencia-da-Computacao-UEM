LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY PORTAS_LOGICAS IS
	PORT(A_B_Cin : IN BIT_VECTOR (2 DOWNTO 0); -- A, B e Cin
		Saida_deco : IN BIT_VECTOR (7 DOWNTO 0); -- Sa�das provenientes do decodificador
		S: OUT BIT); -- sa�da das portas l�gicas
END PORTAS_LOGICAS;
ARCHITECTURE COMPORTAMENTAL OF PORTAS_LOGICAS IS
BEGIN
		PROCESS(A_B_Cin, saida_deco) --pra cada caso da sa�da do decodificador haver� uma, e somente uma
		BEGIN -- fun��o l�gica a ser executada, liberando a sa�da.
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
				S <= '0'; -- caso n�o se encaixe nas fun��es l�gicas, o resultado deve ser '0' para n�o atrapalhar
			END IF;		-- na or da sele��o final
		END PROCESS;
END COMPORTAMENTAL;