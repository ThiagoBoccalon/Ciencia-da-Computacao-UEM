LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY SELECAO_SAIDA IS
	PORT( S_SOM,S_SUB,Cout_SOM,Cout_SUB,S_LOGICA : IN BIT; -- Sa�das dos componentes portas_logicas, somador e subtrator
		  S,Cout : OUT BIT); -- Sa�das finais da ULA
END SELECAO_SAIDA;
ARCHITECTURE COMPORTAMENTAL OF SELECAO_SAIDA IS
BEGIN
	S <= (S_SOM OR S_SUB OR S_LOGICA); -- como somente uma das sa�das sair� com bit '1' devido
	Cout <= (Cout_SOM OR Cout_SUB); -- ao decodificador, pode--se usar uma or, pois S s� receber�
END COMPORTAMENTAL; -- '1' caso alguma sa�da tenha sido ativada e liberado '1', da mesma forma com o Cout