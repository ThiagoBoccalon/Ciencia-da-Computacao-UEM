library ieee;
use ieee.std_logic_1164.all;

Entity And_2_Porta is 
Port (a,b: in bit;
	  S0: out bit);
end And_2_Porta;

Architecture teste_1 of And_2_Porta is
Begin
	S0 <= a and b;
end teste_1;
 