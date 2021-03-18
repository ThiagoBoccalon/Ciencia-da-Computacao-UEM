library ieee;
use ieee.std_logic_1164.all;

entity Exercicio_2 is 
	port (Driv, Pass, Ing: in bit;
		  Beltp: out bit	
			);
end Exercicio_2;

Architecture Carro of Exercicio_2 is
Begin
  Process (Driv, Pass, Ing)

	Begin
		if ((Driv='0') and (Ing='1'))
	    then 
			beltp <= '0';
		else
			if ((Driv='0') or ((Pass='0') and (Ing='1')))
		    then
				beltp <= '0';
		    end if;
		 end if;
     end process;
end Carro;