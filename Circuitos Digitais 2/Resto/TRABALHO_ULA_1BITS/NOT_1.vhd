LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY NOT_1 IS
	PORT(A: IN BIT;
		 S: OUT BIT);
END NOT_1;

ARCHITECTURE TEST_NOT OF NOT_1 IS
	BEGIN
		S <= NOT A;
	END TEST_NOT;