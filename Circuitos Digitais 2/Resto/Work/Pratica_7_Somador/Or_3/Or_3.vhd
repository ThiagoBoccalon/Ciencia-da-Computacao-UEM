library ieee;
use ieee.std_logic_1164.all;

entity or_3 is
	port (x,y,w: in bit;
		  z: out bit	
		);
end or_3;		
architecture logica3 of or_3 is
begin
	z<= x or y or w;
end logica3;