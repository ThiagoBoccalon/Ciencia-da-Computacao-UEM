library ieee;
use ieee.std_logic_1164.all;

entity Exercicio_1 is
	port( E0,E1,E2,E3: in bit;
		  S_Reitor, S_VReitor, S_Assessor, S_Secretaria: out bit);
end Exercicio_1;

Architecture XXX of exercicio_1 is 
begin
	process (E0, E1, E2, E3) -- N�o se pode esquecer de usar Process
	begin
		if (E0='1') then 
			S_Reitor <= '1';			
		else
			if ((E1='1') and (E0='0')) then
					S_VReitor <= '1';
			else
				if ((E2='1') and (E1='0') and (E0='0')) then
						S_assessor <= '1';
				else
					if ((E3='1') and (E2='0') and (E1='0') and (E0='0')) then
							S_Secretaria <= '1';
					Else
						S_Reitor <= '0';
						S_VReitor <= '0';
						S_Assessor <= '0';
						S_Secretaria <= '0';
					end if;
			     end if;
			  end if;   
		end if;
	end process;
end XXX;
