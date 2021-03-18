library ieee;
use ieee.std_logic_1164.all;

Entity Exercicio_2_Comportamental is
	Port( ch: in bit_vector (3 downto 0);
		  Alarme: out bit);
end Exercicio_2_Comportamental;
			
			
Architecture test of Exercicio_2_Comportamental is
Begin
	alarme <= '1' when ch = "0010" else
	          '1' when ch = "0110" else
	          '1' when ch = "1010" else
	          '1' when ch = "1110" else
	          '0';
end test;