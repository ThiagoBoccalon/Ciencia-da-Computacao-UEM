library ieee; 
use ieee.std_logic_1164.all;

Entity not_1 is
Port (E1: in bit;
	  S3: out bit);
End not_1;

Architecture teste_3 of not_1 is
begin
		S3 <= not E1;
end teste_3;
