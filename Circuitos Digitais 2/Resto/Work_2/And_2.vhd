LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY And_2 IS
	PORT( A,B: IN BIT;
		  Z: Out Bit);
End And_2;

Architecture test2 of And_2 is
	Begin
		Z <= A and B;
	end test2;