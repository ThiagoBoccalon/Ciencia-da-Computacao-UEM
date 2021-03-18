library ieee;
use ieee.std_logic_1164.all;

entity And_4 is 
	Port ( A,B,C,D : in bit;
		   S1: out bit);
end And_4;

Architecture Teste_1 of And_4 is
	begin
		S1 <= A and B and C and D;
    end Teste_1;