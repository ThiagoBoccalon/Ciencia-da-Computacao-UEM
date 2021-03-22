LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY LATCH_D IS
	PORT(D: IN BIT;
		 Q, QBAR: BUFFER BIT);
END LATCH_D;

ARCHITECTURE TEST_D OF LATCH_D IS
	BEGIN
		PROCESS(D)
			BEGIN
				Q <= D;
				QBAR <= NOT Q;
		END PROCESS;
	END TEST_D;
	