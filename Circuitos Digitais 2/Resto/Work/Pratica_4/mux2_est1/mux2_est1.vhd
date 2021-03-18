library ieee;
use ieee.std_logic_1164.all;

entity mux2_est1 is
	port (a,b: in bit;
			s: in bit;
			f: out bit);
	end mux2_est1;
	
architecture estrutural of mux2_est1 is
	component not_1
		port (x: in bit;
				z: out bit);
	end component;
	
	component and_2
		port (x,y: in bit;
			z: out bit);
	end component;
	
	component or_2
		port (x,y: in bit;
				z: out bit);
	end component;
	
	signal t0, t1, t2: bit;
	
	begin
	
	p1: not_1 port map (s, t0);
	p2: and_2 port map (t0, a, t1);
	p3: and_2 port map (s, b, t2);
	p4: or_2 port map (t1, t2, f);
end estrutural;