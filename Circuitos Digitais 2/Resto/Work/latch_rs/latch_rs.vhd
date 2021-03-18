LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY LATCH_RS IS
	PORT(R,S: IN BIT;
		 Q, QBAR: BUFFER BIT);
END LATCH_RS;

ARCHITECTURE TEST OF LATCH_RS IS 
BEGIN
	PROCESS(S,R)
		BEGIN
			IF S ='0' AND R='1' THEN
				Q <= '0';
				QBAR <= '1';
			ELSE 
				IF S='1' AND R='0' THEN
						Q <= '1';
						QBAR <= '0';
				ELSE
					IF S='1' AND R='1' THEN
						Q <= '0';
						QBAR <= '0';
					ELSE
						Q <= Q;
						QBAR <= QBAR;
					END IF;
				END IF;
			END IF;
		END PROCESS;
END TEST;