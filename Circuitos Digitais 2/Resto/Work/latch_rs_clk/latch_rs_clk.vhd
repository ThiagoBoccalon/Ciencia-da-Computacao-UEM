LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY LATCH_RS_CLK IS
	PORT( R, S, CLK: IN BIT;
		  Q, QBAR: BUFFER BIT);
END LATCH_RS_CLK;

ARCHITECTURE TEST_01 OF LATCH_RS_CLK IS
	BEGIN
		PROCESS(R,S,CLK)
			BEGIN
				IF S = '0' AND R='1' AND CLK = '1' THEN
					Q <= '0';
					QBAR <= '1';
				ELSE
					IF S = '1' AND R='0' AND CLK = '1' THEN
						Q <= '1';
						QBAR <= '0';
					ELSE
							IF S = '1' AND R='1' AND CLK = '1' THEN
								Q <= '1';
								QBAR <= '1';
							ELSE
								Q <= Q;
								QBAR <= QBAR;
							END IF;
					END IF;
				END IF;
		END PROCESS;
END TEST_01;
					