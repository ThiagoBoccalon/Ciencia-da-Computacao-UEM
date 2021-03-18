library ieee;
use ieee.std_logic_1164.all;

-- library wor
use work.somador_package.all;

entity somador is
	port (A,B,Cin: in bit;
			S,Cout: out bit);
	end somador;
	
architecture teste1 of somador is
signal t0,t1,t2, t3: bit;
begin
	P1: xor_2 port map (B, Cin, t0);
	P2: and_2 port map (B, Cin, t1);
	P3: and_2 port map (A, B, t2);
	P4: and_2 port map (A, Cin, t3);
	P5: xor_2 port map (A, t0, S);
	P6: or_3 port map (t1, t2, t3, Cout);
end teste1;

