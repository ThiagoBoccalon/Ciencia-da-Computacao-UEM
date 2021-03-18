library ieee;
use ieee.std_logic_1164.all;

entity xnor_2 is
	port ( a, b: in bit;
			f: out bit);
end xnor_2;

architecture procedural of xnor_2 is
begin
	process (a,b)
		begin
			if (a = b )then
				f <= '1';
			else
				f<= '0';
			end if;
	end process;
end procedural;