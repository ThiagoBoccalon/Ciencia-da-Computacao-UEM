library ieee;
use ieee.std_logic_1164.all;

entity Mux_case_when is
port(a,b,c,d: in bit;
	 s0,s1: in bit;
	 f: out bit
	 );
end Mux_case_when;

architecture sq of Mux_case_when is
begin 
	process (a,b,c,d,s0,s1)
	begin
		case s0 is
			when '0' => f <= a;
			when '0' => f <= b;  
			when '1' => f <= c;
			when '1' => f <= d;
		end case;
	end process;
end sq;