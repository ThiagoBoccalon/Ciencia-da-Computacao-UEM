library ieee;
use ieee.std_logic_1164.all;

entity nand_2 is
	port ( a, b: in bit;
			f: out bit);
end nand_2;

architecture procedural of nand_2 is
begin
	process (a,b)
		begin
			if (a = '1') and (b = '1') then
				f <= '0';
			else
				f<= '1';
			end if;
	end process;
end procedural;