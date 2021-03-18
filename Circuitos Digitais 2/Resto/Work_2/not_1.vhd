library ieee;
use ieee.std_logic_1164.all;

Entity not_1 is 
	PORT(A: in bit;
		 Z: out bit);
end not_1;

Architecture test of not_1 is
BEGIN
	Z <= not A;
End test;