Library ieee;
Use ieee.std_logic_1164.all;
Entity decodificador_bcd is
	PORT(dado : in integer range 0 to 9;
		 display : out bit_vector(6 downto 0)); --a,b,c,d,e,f,g
end decodificador_bcd;
Architecture trabalho of decodificador_bcd is
begin
	display <= "0010000" when dado = 0 else
			   "1010111" when dado = 1 else
			   "0001001" when dado = 2 else
			   "0000011" when dado = 3 else
			   "1000110" when dado = 4 else
			   "0100010" when dado = 5 else
			   "0100000" when dado = 6 else
			   "0010110" when dado = 7 else
			   "0000000" when dado = 8 else
			   "0000010" when dado = 9;
end;