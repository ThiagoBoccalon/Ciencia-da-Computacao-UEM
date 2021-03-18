library ieee;
use ieee.std_logic_1164;


Entity Exercicio_1_Estrutural is
Port ( Re, Vr, As, Se: in bit;
	   Sre, Svr, Sas, Sse: out bit);
end Exercicio_1_Estrutural;

Architecture Estrutural of Exercicio_1_Estrutural is

Signal t0,t1,t2,t3,t4,t5: bit;

Component Not_1
		  Port (E1: in bit;
				S3: out bit);
end COMPONENT;

Component And_2_Porta
		Port (A,B: in bit;
			  S0: out bit);
end COMPONENT;


begin
		P1: not_1 port map (Re,t0);   
		P2: not_1 port map (t0,Sre);
		P3: not_1 port map (Re,t1);
		P4: not_1 port map (Vr, t2);
		P5: not_1 port map (As, t3);
		P6: And_2_POrta port map (Vr, t1, Svr);
		p7: And_2_Porta port map (Vr, t1, t4);
		p8: And_2_Porta port map (As,t4,Sas);
		p9: And_2_Porta port map (Se,t3,t5);
		P10: And_2_Porta port map (t4,t5, Sse);
end estrutural; 
		