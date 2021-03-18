Library ieee;
Use ieee.std_logic_1164.all;
Library work;
USE WORK.Relogio_package.all;
Entity Relogio IS
	Port(clk: In Std_logic;
	     BCD_SEG_UNI, BCD_SEG_DEZ, BCD_MIN_UNI, BCD_MIN_DEZ, BCD_HR_UNI, BCD_HR_DEZ: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
		 constant es : STD_LOGIC := '1';
END Relogio;

Architecture logic OF Relogio IS

SIGNAL SegundosUnidade, MinutosUnidade : std_logic_vector(3 downto 0);
SIGNAL SegundosDezena, MinutosDezena : std_logic_vector(2 downto 0);
SIGNAL Horas : std_logic_vector (4 downto 0);
SIGNAL BcdSegUni, BcdSegDez : std_logic_vector(6 downto 0);
SIGNAL BcdMinUni, BcdMinDez : std_logic_vector(6 downto 0);
SIGNAL BcdHrsUni, BcdHrsDez : std_logic_vector(6 downto 0);

BEGIN
	Segundos0 : cont_mod10_segundos PORT MAP (clk, SegundosUnidade);
	Segundos1 : cont_mod6_segundos PORT MAP (SegundosUnidade(3), SegundosDezena);
	Minutos0 : cont_mod10_minutos PORT MAP (SegundosDezena(2), MinutosUnidade);
	Minutos1 : cont_mod6_minutos PORT MAP (MinutosUnidade(3), MinutosDezena);
	Horas0: cont_mod24_horas PORT MAP(MinutosDezena(2), Horas);
	
	BcdSegundos : BCD_Segundos PORT MAP (SegundosUnidade, SegundosDezena, BcdSegUni, BcdSegDez);
	BcdMinutos : BCD_Minutos PORT MAP (MinutosUnidade, MinutosDezena, BcdMinUni, BcdMinDez);
	BcdHoras : BCD_Horas PORT MAP (Horas, BcdHrsUni, BcdHrsDez);
 
	BCD_SEG_UNI <= BcdSegUni;
	BCD_SEG_DEZ  <= BcdSegDez;
	BCD_MIN_UNI <= BcdMinUni;
	BCD_MIN_DEZ  <= BcdMinDez;
	BCD_HR_UNI  <= BcdHrsUni;
	BCD_HR_DEZ <= BcdHrsDez;
END logic;

