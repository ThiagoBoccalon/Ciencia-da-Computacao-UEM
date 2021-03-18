library ieee;
use ieee.std_logic_1164.all;

Entity Exercicio_2_Fluxo is
	Port( Driv, Pass, Ing, Beltd: in bit;
		  Alarme: out bit);
end Exercicio_2_Fluxo;

Architecture test of Exercicio_2_Fluxo is
Begin
	Alarme <= Ing and (not Beltd);
end test;