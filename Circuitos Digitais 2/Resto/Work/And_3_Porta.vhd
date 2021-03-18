library ieee;
use ieee.std_logic_1164.all;

entity And_3_Porta is
Port (A,B,C: in bit;
	  S1: out bit);
end And_3_Porta;	

Architecture Teste_2 of and_3_Porta is
begin
	S1 <= A and B and C;
end teste_2;