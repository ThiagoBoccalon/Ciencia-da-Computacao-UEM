library ieee;
use ieee.std_logic_1164.all;

entity mux2_com1 is
	port (a,b: in bit;
			s: in bit;
			f: out bit
		);
	end mux2_com1;
architecture comportamental of mux2_com1 is
begin
	f <= a when s ='0' else b;
		
end comportamental;