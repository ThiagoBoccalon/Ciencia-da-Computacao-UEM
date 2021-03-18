Library ieee;
use ieee.std_logic_1164.all;

Entity not_1 is 
	Port( A: in bit;
		  Z: out bit);
end not_1;

Architecture teste_3 of not_1 is
	Begin
		z <= not A;
	end teste_3;
