Library ieee;
Use ieee.std_logic_1164.all;
Entity segundos is
	PORT(clk, clr : in std_logic;
		change : out boolean;
		un,dez :  buffer integer range 0 to 9);
end segundos;
Architecture trabalho of segundos is
begin
	Process(clk,clr,un,dez)
	Begin
		If clr = '0' then
			change <= false;
			un <= 0;
			dez <= 0;
		elsif falling_edge(clk) then
			un <= un + 1;
			if (un = 9) and (dez < 5) then				
				dez <= dez + 1;
				un <= 0;
			end if;
		end if;
		If (dez = 5) and (un = 10) then
			change <= true;
			dez <= 0; un <= 0; 
		end if;
	end process;	
end trabalho;