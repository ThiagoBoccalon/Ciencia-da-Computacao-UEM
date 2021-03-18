library ieee;
use ieee.std_logic_1164.all;

entity sub_2bits_while is
generic (n : integer := 2);
port ( A,B : in std_logic_vector (n-1 downto 0);
		 cin: in std_logic;
		 S: out std_logic_vector (n-1 downto 0);
		 cout: out std_logic;
		 Erro: out std_logic
		);
end sub_2bits_while;

architecture logica of sub_2bits_while is
begin
	process (A,B,Cin) 
		variable couti: std_logic_vector(n downto 0);   -- vai -1 inteiro
		variable i: integer;
		begin
			if A<B then 
				Erro <= '1';
				S <= "ZZ";
				Cout <= 'Z';
			else
				i:= 0;
				while i<= n-1 loop
					S(i) <= A(i) xor B(i) xor Couti(i);
					Couti(i+1):= ((not A(i)) and B(i)) or ((not A(i)) and Couti(i)) or (B(i) and Couti(i));
					i:= i+1;
					end loop;
				Cout <= Couti(n);
			end if;
	end process;
end logica;
		
