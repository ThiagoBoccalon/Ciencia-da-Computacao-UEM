library ieee;
use ieee.std_logic_1164.all;

entity not_1 is
	port (x: in bit;
		  z: out bit);
end not_1;
		
architecture logica1 of not_1 is
begin
	z<= not x;
end logica1;