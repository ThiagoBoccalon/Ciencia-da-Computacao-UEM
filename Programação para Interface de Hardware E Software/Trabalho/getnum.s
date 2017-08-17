.section .data
	pedenum:	.asciz "Digite a expressao: "
	retorno:	.asciz "O valor de %d%c%d eh %d "
	retorno_resto:  .asciz "resto: %c"
	printchar:	.asciz "%d\n"
	num_invalido:	.asciz "Erro: numero invalido\n"
	teste:	.asciz "teste\n"


	SOMA:	.int 43
	SUBT:	.int 45
	MULT:	.int 42
	DIVS:	.int 47
	IGUAL:	.int 61

	#numeros == 48 -> 57

	#espacos
	espacos:	.int 0, 9, 10, 32


	esq:		.int 0
	negativo:	.int 0
	lern:		.int 0
	novon:		.int 0


	num1:	.int 0
	num2:	.int 0
	oper:	.int 0
	charnow:	.int 0

	limpa:		.asciz "clear"


.section .text
	.globl _start


##funcao getnumero
##usa a funcao getchar para ler o numero no buffer ate encontrar um sinal invalido
##ex 2, 34, -20, --10, +2, -+3
getnumeronegativo:
	incl negativo

getnumero:

	call getchar
	movl %eax, charnow

	#se achar sinal(+ ou -) ler o resto como se fosse um numero
	cmpl $'-', %eax
	je getnumeronegativo

	cmpl $'+', %eax
	je getnumero

	cmpl $'0', %eax
	jl numinvalido

	cmpl $'9', %eax
	jg numinvalido


	###entre '0' e '9'
	jmp getnumlit

	getnumneg:
		movl $1, negativo
		call getchar
		jmp getnumlit

	#########
	getnumpos:
		call getchar
		jmp getnumlit
	#########


	############
	getnumlit:
		
		cmpl $'0', %eax
		jl sainumlit

		cmpl $'9', %eax
		jg sainumlit

		subl $48, %eax
		movl %eax, novon

		movl $10, %eax
		imull lern
		jo numinvalido #se der overflow, numero eh invalido

		addl novon, %eax
		movl %eax, lern

		#se lern for negativo neste ponto, ocorreu outro overflow(situacao [2^31 -> 2^32])
		movl $0, %eax
		cmp lern, %eax
		jg numinvalido

		call getchar
		jmp getnumlit
	############



	sainumlit:
		##colocar sinal no numero
		movl $1, %ebx
		testl negativo, %ebx #testa se negativo possui o bit 1 na ultima casa aka. "negativo" é par ou impar

		je numpositivo #zero = numero positivo
		negl lern #troca o sinal do numero

		numpositivo:
		movl lern, %eax
		movl $0, %ebx
		movl $0, negativo
		ret

	numinvalido:
		movl $100, %eax
		movl $-1, %ebx
		movl $0, negativo
		ret


_start:
	movl	$limpa, (%esp)
	call	system

	movl	$pedenum, (%esp)
	call	printf

	#resultado em %eax, erro em %ebx
	call	getnumero

	and	$0x10000000, %ebx #testa o bit de %ebx
	jz	num_valido #JZ = se o AND deu 0, entao o numero eh valido
	
	#CF=1: numero invalido
	movl	$num_invalido, (%esp)
	call	printf
	jmp	end


	num_valido:
		##############
		###verficiar oper
		#####se 0, soh coloca %eax na esq
		#####senao, se SOMA, SUBT, MULT, DIVS, executar esq <oper> %eax
		#####senao, ???(situacao impossivel: oper sera sempre 0 ou SOMA/SUBT/MULT/DIVS
		###chamar getchar
		#####se %eax for um caracter de operacao, guardar em oper e comecar ler o proximo numero
		#####senao, se %eax for IGUAL, terminar
		#####senao, ignorar e chamar getchar de novo
		###termino: mostrar o numero, resetar variaveis


printa_num:
	pushl	%eax
	pushl	$printchar
	call printf
	addl	$8,	%esp

end:

	movl	$0,	(%esp)
	call	exit

