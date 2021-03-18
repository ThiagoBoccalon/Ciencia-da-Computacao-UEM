Library ieee;
Use ieee.std_logic_1164.all;
Entity minutos is
	PORT(clr : in std_logic;
		change1 : in boolean; -- se colocar a linha de baixo(change1<=false) tem que mudar pra buffer, e no package tbm
		change2 : out boolean;
		un,dez :  buffer integer range 0 to 9);
end minutos;
Architecture trabalho of minutos is
begin
	Process(clr,un,dez)
	begin
		if clr = '0' then
			un <= 0; dez <= 0;
			change2 <= false;
		elsif change1 then
			un <= un + 1;
			--change1 <= false; se colocar essa linha dá erro
			if (un = 9) and (dez < 5) then
				dez <= dez + 1;
				un <= 0;
			end if;
		end if;
		if dez = 5 and un = 9 then
			change2 <= true;
			un <= 0;
			dez <= 0;
		end if;
	end process;
end trabalho;