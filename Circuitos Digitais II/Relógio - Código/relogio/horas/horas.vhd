Library ieee;
Use ieee.std_logic_1164.all;
Entity horas is
	PORT(clr : in std_logic;
		change2 : in boolean; -- se colocar a linha de baixo(change1<=false) tem que mudar pra buffer e no package tbm
		un,dez :  buffer integer range 0 to 9);
end horas;
Architecture trabalho of horas is
begin
	Process(clr,un,dez,change2)
	begin
		if clr = '0' then
			un <= 0; dez <= 0;
		elsif change2 then
			un <= un + 1;
			--change2 <= false; se colocar essa linha dá erro
			if (un = 9) and (dez < 2) then
				dez <= dez + 1;
				un <= 0;
			end if;
		end if;
		if dez = 2 and un = 3 then
			un <= 0;
			dez <= 0;
		end if;
	end process;
end trabalho;