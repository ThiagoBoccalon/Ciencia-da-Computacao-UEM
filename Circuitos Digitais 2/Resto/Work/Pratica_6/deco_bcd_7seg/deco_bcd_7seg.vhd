library ieee;
use ieee.std_logic_1164.all;
entity deco_bcd_7seg is
	port (
		 bcd: in std_logic_vector(3 downto 0);
		 segmentos: out std_logic_vector (6 downto 0)			   	
		 );
end deco_bcd_7seg;

architecture teste of deco_bcd_7seg is
begin
	with bcd select -- 
		segmentos <= "1111110" when "0000",
					 "0110000" when "0001",
					 "1101101" when "0010",
					 "1111001" when "0011",
					 "0110011" when "0100",	
					 "1011011" when "0101",
					 "1011111" when "0110",
					 "1110000" when "0111",
					 "1111111" when "1000",
					 "1111011" when "1001",
					 "ZZZZZZZ" when others;
end teste;