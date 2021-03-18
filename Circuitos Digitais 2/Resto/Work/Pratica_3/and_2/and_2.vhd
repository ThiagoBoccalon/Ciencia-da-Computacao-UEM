library ieee;
use ieee.std_logic_1164.all;

entity and_2 is
	port ( a, b: in bit;
			f: out bit);
end and_2;

architecture procedural of and_2 is
begin
	process (a,b)
		begin
			if (a = '1') and (b = '1') then
				f <= '1';
			else
				f<= '0';
			end if;
	end process;
end procedural;