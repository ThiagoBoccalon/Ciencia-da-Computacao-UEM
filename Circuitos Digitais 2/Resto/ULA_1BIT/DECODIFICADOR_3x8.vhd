LIBRARY IEEE;
IEEE.STD_LOGIC_1164.ALL;

ENTITY DECODIFICADOR_8x1 IS 
	PORT(SEL: BIT_VECTOR (2 DOWNTO 0);
		 S1,S2,S3,S4,S5,S6,S7: OUT BIT);
ENTITY DECODIFICADOR_8x1;

ARCHITECTURE TEST_DECO_3x8 OF DECODIFICADOR_8x1 IS
	BEGIN
		PROCESS(SEL)
			BEGIN
				CASE SEL IS
					WHEN "000" => S1 <= '1'; 
					WHEN "001" => S2 <= '1';
					WHEN "010" => S3 <= '1';
					WHEN "011" => S4 <= '1';
					WHEN "100" => S5 <= '1';
					WHEN "101" => S6 <= '1';
					WHEN "110" => S7 <= '1'; 
					WHEN "111" => S8 <= '1'; 
				END CASE;