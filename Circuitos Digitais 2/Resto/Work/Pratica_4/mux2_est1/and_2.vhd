library ieee;
use ieee.std_logic_1164.all;

entity and_2 is
	port (x,y: in bit;
			
		  z: out bit
		);
	end and_2;
architecture logica of and_2 is
begin
	  z <= y and x;
end logica;