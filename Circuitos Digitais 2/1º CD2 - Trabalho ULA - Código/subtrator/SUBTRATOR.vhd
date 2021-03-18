LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY SUBTRATOR IS
	PORT(EN_SUB: IN BIT_VECTOR (2 DOWNTO 0); -- A, B  e Cin
		 SAIDA_DECO : IN BIT_VECTOR(7 DOWNTO 0); -- Saída do decodificador
		 S,Cout: BUFFER BIT; -- Auxiliares
		 S_SUB,Cout_SUB : OUT BIT); -- Saídas do Subtrator
END SUBTRATOR;
ARCHITECTURE TEST_SUBTRATOR OF SUBTRATOR IS
	BEGIN
		S <=      '0' WHEN EN_SUB = "000" ELSE   -- Foi utilizado duas vezes		
			      '1' WHEN EN_SUB = "001" ELSE	 -- o when else para que pudéssemos
				  '1' WHEN EN_SUB = "010" ELSE	 -- selecionar a saída ao final
				  '0' WHEN EN_SUB = "011" ELSE
				  '1' WHEN EN_SUB = "100" ELSE
				  '0' WHEN EN_SUB = "101" ELSE
				  '0' WHEN EN_SUB = "110" ELSE
				  '1' WHEN EN_SUB = "111";
		Cout <=   '0' WHEN EN_SUB = "000" ELSE
			      '1' WHEN EN_SUB = "001" ELSE
				  '1' WHEN EN_SUB = "010" ELSE
				  '1' WHEN EN_SUB = "011" ELSE
				  '0' WHEN EN_SUB = "100" ELSE
				  '0' WHEN EN_SUB = "101" ELSE
				  '0' WHEN EN_SUB = "110" ELSE
				  '1' WHEN EN_SUB = "111";
		S_SUB <= (S AND SAIDA_DECO(7)); -- Como só queremos que a saída libere 1 caso seja
		Cout_SUB <= (Cout AND SAIDA_DECO(7)); -- o caso 7 do decodificador, fizemos uma and
	END TEST_SUBTRATOR;					-- pois X and '1' = X 
	
		  
		