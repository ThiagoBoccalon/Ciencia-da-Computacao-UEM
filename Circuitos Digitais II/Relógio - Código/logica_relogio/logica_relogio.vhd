Library ieee;
Use ieee.std_logic_1164.all;
Entity logica_relogio is
	PORT(clr,clk : in std_logic;
		 s6,s5,s4,s3,s2,s1 : buffer integer range 0 to 9);
end logica_relogio;
Architecture comportamental of logica_relogio is
begin
	Process(clk,clr,s6,s5,s4,s3,s2,s1)
	begin
		if clr = '0' then
			s6<= 0; s5<= 0; s4<= 0; s3<= 0; s2<= 0; s1<= 0;
		elsif falling_edge(clk) then
			s6 <= s6 + 1;
			if (s6 = 9) and (s5 /= 5) then
				s5 <= s5 + 1;
				s6 <= 0;
			end if;
			if (s5 = 5) and (s6 = 9) then
				s4 <= s4 + 1;
				s6 <= 0; s5 <= 0; end if;
				if (s4 = 9) and (s3 /= 5) then
					s3 <= s3 + 1;
					s4 <= 0; --s5 <= 0; s6 <= 0;
				end if;
				if (s4 = 5) and (s3 = 9) then
					s2 <= s2 + 1;
					s6 <= 0; s5 <= 0; s4 <= 0; s3 <= 0; end if;
					if (s2 = 9) and (s1 /= 2) then
						s1 <= s1 + 1;
						s2 <= 0;
					end if;
					if (s1 = 2) and (s2 = 4) then
						s6<= 0; s5<= 0; s4<= 0; s3<= 0; s2<= 0; s1<= 0;
					end if;
				--end if;	
			--end if;
		end if;	
	end process;
end comportamental;