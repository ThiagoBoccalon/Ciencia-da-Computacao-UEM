library ieee;
use ieee.std_logic_1164.all;
Entity mux_with is
	port ( a,b,c,d : in bit;
			s: in bit_vector (1 downto 0);
			f: out bit
			);
end mux_with;
architecture comp of mux_with is
	begin
		with s select
			f<= a when "00",
				b when "01",
				c when "10",
				d when "11";
end comp;