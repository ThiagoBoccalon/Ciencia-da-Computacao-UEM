Library ieee;
Use ieee.std_logic_1164.all;

Entity Exercicio_1_Aula_Pratica is
Port ( Ch: in bit_vector (3 downto 0);
	   S_Cham: out bit_vector (3 downto 0));
end Exercicio_1_Aula_Pratica;

Architecture Teste of Exercicio_1_Aula_Pratica is
begin
	  S_Cham <= "0001" when ch = "0001" else
				"0010" when ch = "0010" else
				"0010" when ch = "0011" else
				"0100" when ch = "0100"	else
				"0100" when ch = "0101" else
				"0100" when ch = "0110" else
				"0100" when ch = "0111" else
				"1000" when ch = "1000" else
				"1000" when ch = "1001" else
				"1000" when ch = "1010" else
				"1000" when ch = "1011" else
				"1000" when ch = "1100" else 
				"1000" when ch = "1101" else
				"1000" when ch = "1110" else
				"1000" when ch = "1111" else
				"0000";
end Teste;