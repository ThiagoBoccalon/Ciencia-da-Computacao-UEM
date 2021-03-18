LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY ULA IS
	PORT(A_B_Cin, SEL_ULA : IN BIT_VECTOR (2 DOWNTO 0);
		 SAIDA_DECO: BUFFER BIT_VECTOR (7 DOWNTO 0);
		 S_Cout,S_Cout2: BUFFER BIT_VECTOR(1 DOWNTO 0);
		 S, Cout : OUT BIT);
END ULA;

ARCHITECTURE TEST_ULA OF ULA IS

COMPONENT SOMADOR IS
	PORT (A_B_Cin: IN BIT_VECTOR (2 DOWNTO 0);    
		  S_Cout: OUT BIT_vector (1 DOWNTO 0));
END COMPONENT;

COMPONENT SUBTRATOR IS
	PORT(EN_SUB: IN BIT_VECTOR (2 DOWNTO 0);
		 S_Cout: OUT BIT_VECTOR (1 DOWNTO 0));
END COMPONENT;

COMPONENT DECODIFICADOR_3X8 IS
	PORT(SEL: BIT_VECTOR (2 DOWNTO 0);
		 S : OUT BIT_VECTOR(7 DOWNTO 0));
END COMPONENT;
	
BEGIN
	P1:SOMADOR PORT MAP (A_B_Cin,S_Cout);  -- entra 3 bits A,B e Cin em Somador sendo A(2) B(1) & Cin(0)
	P2:SUBTRATOR PORT MAP (A_B_Cin,S_Cout2);  -- entra 3 bits A,B e Cin em Somador sendo A(2) B(1) & Cin(0)
	P3: DECODIFICADOR_3X8 PORT MAP (SEL_ULA, SAIDA_DECO);  
	PROCESS(A_B_Cin,Saida_deco,S_Cout,S_Cout2)
	BEGIN
		IF (saida_deco(0)= '1') THEN
			S <= A_B_Cin(2) AND A_B_Cin(1); -- s0 estará recebendo A e B
		ELSIF (saida_deco(1)= '1') THEN
			S <= A_B_Cin(2) NAND A_B_Cin(1);
		ELSIF (saida_deco(2)= '1') THEN
			S <= A_B_Cin(2) OR A_B_Cin(1);
		ELSIF (saida_deco(3)= '1') THEN
			S <= A_B_Cin(2) NOR A_B_Cin(1);
		ELSIF (saida_deco(4)= '1') THEN
			S <= A_B_Cin(2) XOR A_B_Cin(1);
		ELSIF (saida_deco(5)= '1') THEN
			S <= A_B_Cin(2) XNOR A_B_Cin(1);
		ELSIF (saida_deco(6)= '1') THEN
			S <= S_Cout(1);
			Cout <= S_Cout(0);
		ELSIF (saida_deco(7)= '1') THEN
			S <= S_Cout2(1);
			Cout <= S_Cout2(0);
		END IF;
	END PROCESS;	
END TEST_ULA;
	