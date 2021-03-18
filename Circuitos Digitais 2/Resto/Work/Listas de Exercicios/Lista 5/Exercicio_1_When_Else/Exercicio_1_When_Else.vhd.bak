library ieee;
use ieee.std_logic_1164.all;

entity Exercicio_1_When_Else is
	Port ( ch: bit_vector (0 downto 3);
		   S_ch: bit_vector (0 downto 3));
end Exercicio_1_When_Else;

Architecture Concorrente of Exercicio_1_When_Else is
Begin
	S_ch <= "0001" when ch = "0001" else
	        "0010" when ch = "0010" | ch = "0011" else
	        "0100" when ch = "0100" | ch = "0101" | ch = "0110" | ch = "0111" else
	        "1000" when others
	        "0000";
End Concorrente;