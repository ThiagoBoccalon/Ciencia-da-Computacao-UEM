library ieee;
use ieee.std_logic_1164.all;

entity xor_2 is
	port (x,y: in bit;
		  z: out bit	
		);
end xor_2;		
architecture logica4 of xor_2 is
begin
	z<= y xor x;  
end logica4;

