library ieee;
use ieee.std_logic_1164.all;

entity mux2_est is
	port (a,b: in bit;
			s: in bit;
			f: out bit);
	end mux2_est;
	
architecture estrutural of mux2_est is
	signal t0, t1, t2: bit;
	
begin	
	t0 <= not s;
	t1 <= t0 and a;
	t2 <= s and b;
	f <= t1 or t2;
		
end estrutural;