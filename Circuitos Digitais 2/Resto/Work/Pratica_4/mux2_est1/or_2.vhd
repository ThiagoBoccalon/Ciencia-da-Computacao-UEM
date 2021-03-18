library ieee;
use ieee.std_logic_1164.all;

entity or_2 is
	port (x,y: in bit;
			
		  z: out bit
		);
	end or_2;
architecture logica of or_2 is
begin
	  z <= x or y;
end logica;