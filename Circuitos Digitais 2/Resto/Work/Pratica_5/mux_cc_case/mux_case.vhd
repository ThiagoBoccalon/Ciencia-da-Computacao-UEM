library ieee;
use ieee.std_logic_1164.all;

entity mux_case is
	port (a,b,c,d: in bit;
			    s: in bit_vector(1 downto 0);
			f: out bit
		);
	end mux_case;
	
architecture comportamental of mux_case is
begin
	process (s,a,b,c,d)
	begin
		case s is
				when "00" => f <= a;
				when "01" => f <= b;
				when "10" => f <= c;
				when "11" => f <= d;				
		end case;		
	end process;
end comportamental;