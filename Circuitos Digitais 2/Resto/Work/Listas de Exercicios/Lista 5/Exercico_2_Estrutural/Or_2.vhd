Library ieee;
Use ieee.std_logic_1164.all;

Entity Or_2 is 
	Port ( A,B: in bit;
		   S1: out bit);
end Or_2;

Architecture Teste_2 of Or_2 is
Begin
	  S1 <= A or B;
end Teste_2;