#ifndef MAIN_
#define MAIN_

extern int **memoria;
extern char codigo[300][30];
extern int clk;
extern int SD[5];
extern int LD[5];
extern int LI[5];
extern int BEQ[5];
extern int BNE[5];
extern int BG[5];
extern int BGE[5];
extern int BL[5];
extern int BLE[5];
extern int JUMP[5];
extern int EXIT[5];
extern int ADD[5];
extern int ADDI[5];
extern int SUB[5];
extern int SUBI[5];
extern int MULT[5];
extern int MULTI[5];
extern int DIV[5];
extern int DIVI[5];
extern int NOP[5];

extern int R0[5];
extern int R1[5];
extern int R2[5];
extern int R3[5];
extern int R4[5];
extern int R5[5];
extern int R6[5];
extern int R7[5];
extern int R8[5];
extern int R9[5];
extern int R10[5];
extern int R11[5];
extern int R12[5];
extern int R13[5];
extern int R14[5];
extern int R15[5];
extern int R16[5];
extern int R17[5];
extern int R18[5];
extern int R19[5];
extern int R20[5];
extern int R21[5];
extern int R22[5];
extern int R23[5];
extern int R24[5];
extern int R25[5];
extern int R26[5];
extern int R27[5];
extern int R28[5];
extern int R29[5];
extern int R30[5];
extern int R31[5];

extern int ldx;
extern int sdx;
extern int addx;
extern int addix;
extern int subx;
extern int subix;
extern int divx;
extern int divix;
extern int multx;
extern int multix;
extern int lix;
extern int beqx;
extern int bnex;
extern int blex;
extern int blx;
extern int bgex;
extern int bgx;
extern int nopx;
extern int jumpx;
extern int exitx;

extern int **TAGS;

extern int ***ERS;
extern int ***ERL;
extern int ***ERA;
extern int ***ERM;
extern int **janelaI;

extern int ***FP_Adders;
extern int ***FP_Multipliers;
extern int *AddressUnit;
extern int **MemoryUnit;
extern int **bancoreg;

extern int somador;
extern int multiplicador;
extern int busca;		
extern int janela;
extern int porta_registradores;
extern int bufferLoad;
extern int iMemoria;
extern int bufferStore;
extern int memoriax;
extern int emissao;
extern int calc_endereco;
extern int **memoriaIM;

extern char*** dependencias;
extern int ultimaLinha;
extern int qtdeInstrucoes;

extern int **IF;
extern int **EX;
extern int **IS;
extern int **IW;
extern int **WB;

void *malloc_(size_t size);
int main();
void criarMemoria(int linhas);
void converterDectoBin(int decimalNumber, int *binaryNumber, int size); 
int converterBintoDec(int *binaryNumber, int size);

#endif // MAIN_
