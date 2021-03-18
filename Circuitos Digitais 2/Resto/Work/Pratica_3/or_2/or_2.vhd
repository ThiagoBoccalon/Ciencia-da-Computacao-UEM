library ieee;
use ieee.std_logic_1164.all;

entity or_2 is
	port ( a, b: in bit;
			f: out bit);
end or_2;

architecture procedural of or_2 is
begin
	process (a,b)
		begin
			if (a = '0') and (b = '0') then
				f <= '0';
			else
				f<= '1';
			end if;
	end process;
end procedural;