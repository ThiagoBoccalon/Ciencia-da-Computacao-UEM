LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY SOMADOR IS
	PORT (A_B_Cin: IN BIT_VECTOR (2 downTO 0);   -- A, B e Cin
		  SAIDA_DECO : IN BIT_VECTOR(7 DOWNTO 0);-- Saidas do decodificador 
		  S_SOM,Cout_SOM : OUT BIT; -- Saídas do somador
		  S,Cout: BUFFER BIT); -- Auxiliares
END SOMADOR;
ARCHITECTURE TEST_SOMADOR OF SOMADOR IS
BEGIN
		WITH A_B_Cin SELECT
			S <= '0' WHEN "000", -- Da mesma forma que o subtrator, foi utilizado duas
				 '1' WHEN "001", -- vezes o with select when para selecionar a saída ao final
				 '1' WHEN "010",
				 '0' WHEN "011",
				 '1' WHEN "100",
				 '0' WHEN "101",
				 '0' WHEN "110",
				 '1' WHEN "111";
		WITH A_B_Cin SELECT
			Cout <= '0' WHEN "000",
					'0' WHEN "001",
					'0' WHEN "010",
					'1' WHEN "011",
					'0' WHEN "100",
					'1' WHEN "101",
					'1' WHEN "110",
					'1' WHEN "111";
		S_SOM <= (S AND SAIDA_DECO(6)); -- Análogamente ao subtrator, foi feito uma operação and
		Cout_SOM <= (Cout AND SAIDA_DECO(6));-- para selecionar a saída
END TEST_SOMADOR;