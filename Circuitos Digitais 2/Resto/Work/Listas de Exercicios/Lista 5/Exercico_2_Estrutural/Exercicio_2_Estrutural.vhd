Library ieee;
Use ieee.Std_logic_1164.all;

Entity Exercicio_2_Estrutural is
	Port ( Driv, Pass, Ing, Beltd: in bit;
		   Alarme: out bit);
end Exercicio_2_Estrutural;

Architecture Alarme_Carro of Exercicio_2_Estrutural is 

Component And_4
		Port( A,B,C,D: in bit;
			  S1: out bit);
end Component;

Component Or_2
	Port ( A,B: in bit;
		   S1: out bit);
end component;

Component not_1
	Port (A: in bit;
		  Z: out bit);
end Component;	

	signal T1, T2, T3, T4, T5, T6, T7, T8, T9: bit;

Begin
	P1: not_1 port map (driv,T1);
	P2: not_1 port map (Pass, T2); 
	P3: not_1 port map (Beltd, T3);
	P4: And_4 port map (T1, T2, Ing, T3, T4);
	P5: And_4 port map (T1, Pass, Ing, T3, T5);
	P6: And_4 port map (Driv, T2, Ing, T3, T6);
	P7: And_4 port map (Driv, Pass, Ing, T3, T7);
	P8: Or_2 port map (T4, T5, T8);
	P9: Or_2 port map (T6, T7, T9);
	P10: Or_2 port map (T8, T9, Alarme);
	
end Alarme_Carro;
	
