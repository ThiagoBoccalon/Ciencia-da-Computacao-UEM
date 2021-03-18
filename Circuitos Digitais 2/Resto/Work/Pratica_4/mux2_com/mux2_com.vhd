library ieee;
use ieee.std_logic_1164.all;

entity mux2_com is
	port (a,b: in bit;
			s: in bit;
			f: out bit
		);
	end mux2_com;
architecture comportamental of mux2_com is
begin
	process (a,b,s)
	begin
		if (s ='0') then
			f <= a;
		else 
			f <= b;
		end if;
	end process;
end comportamental;