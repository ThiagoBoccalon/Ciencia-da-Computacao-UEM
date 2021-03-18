library ieee;
use ieee.std_logic_1164.all;

entity Exercicio_MUX is
	port( a,b,s: in bit;
			  f: out bit
			);
end Exercicio_MUX;

architecture Multiplex of Exercicio_MUX is
begin
		f <= a when s='0' else b; 


end Multiplex;
