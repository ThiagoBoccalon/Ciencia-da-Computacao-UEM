.section .data
	pedenum:	.asciz "Digite a expressao (x para sair): "
	retorno:	.asciz "O valor de %d%c%d eh %d "
	retorno_resto:  .asciz "Divisao %d / %d => resto: %d\n"
	printchar:	.asciz "Resultado: %d\n"
	pulalin:	.asciz "\n"
	num_invalido:	.asciz "Erro: numero invalido\n"
	bignum:		.asciz "Erro: numero muito grande\n"


	SOMA:	.int 43
	SUBT:	.int 45
	MULT:	.int 42
	DIVS:	.int 47
	IGUAL:	.int 61

	#numeros == 48 -> 57

	#espacos
	espacos:	.int 9, 10, 32


	esq:		.int 0
	negativo:	.int 0
	lern:		.int 0
	novon:		.int 0


	num1:	.int 0
	num2:	.int 0
	oper:	.int 0
	buffchar:	.int 0

	limpa:		.asciz "clear"


.section .text
	.globl _start


##funcao verspace
##remove espacos entre caracteres
##deve ser chamado apos getchar
verspace:
	cmpl %eax, espacos
	je pulach
	cmpl %eax, espacos+4
	je pulach
	cmpl %eax, espacos+8
	je pulach

	ret
	pulach:
		call getchar
		call verspace
		ret


##funcao getnumero
##usa a funcao getchar para ler o numero no buffer ate encontrar um sinal invalido
##ex 2, 34, -20, --10, +2, -+3

compoper:
	cmpl $'+', %eax
	je salva_op
	cmpl $'-', %eax
	je salva_op
	cmpl $'*', %eax
	je salva_op
	cmpl $                                                                                                        '/', %eax
	je salva_op

	##se o char nao eh operacao, voltar a ler numero com esq e oper zerados
	movl $0, esq
	movl $0, oper
	jmp getnumlit

	salva_op:
	movl %eax, oper
	jmp getnumero


getnumeronegativo:
	incl negativo

getnumero:
	call getchar
	call verspace

	cmpl $'x', %eax ##finalizar
	je end

	cmpl $'=', oper ##se o operador salvo eh igual, este char pode ser uma operacao
	je compoper

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
		call verspace
		jmp getnumlit
	############



	sainumlit:
		##guardar o ultimo caracter
		movl %eax, buffchar

		##colocar sinal no numero
		movl $1, %ebx
		testl negativo, %ebx #testa se negativo possui o bit 1 na ultima casa aka. "negativo" é par ou impar

		je numpositivo #zero = numero positivo
		negl lern #troca o sinal do numero

		numpositivo:
		movl lern, %eax
		movl $0, %ebx
		movl $0, negativo
		movl $0, lern ##resetando a variavel lern
		movl $0, novon
		ret

	numinvalido:
		movl $100, %eax
		movl $-1, %ebx
		movl $0, negativo
		movl $0, lern
		movl $0, novon
		ret


_start:
	movl	$limpa, (%esp)
	call	system

pedenumero:

	movl	$pedenum, (%esp)
	call	printf

	lernum:
	#resultado em %eax, erro em %ebx, primeiro caracter apos o numero em buffchar
	call	getnumero

	and	$0x10000000, %ebx #testa o bit de %ebx
	jz	num_valido #JZ = se o AND deu 0, entao o numero eh valido
	
	movl	$num_invalido, (%esp)
	call	printf
	jmp	pedenumero


	num_valido:

		#STATUS:
		#%eax = ultimo numero lido
		#%ebx = supostamente 0
		#buffchar = primeiro caracter apos o numero
		#oper = ultima operacao lida
		#esq = ultima expressao computada

		#verificar operacao
		cmpl $0, oper #sem operacao
		je noop

		#operacao nao eh 0, realiza-la
		jmp yesop


		noop:
			movl %eax, esq ##primeiro numero lido
		lerop: ##le a proxima operacao
			movl buffchar, %eax ##move o caracter ao %eax como se getchar tivesse sido chamado
			call verspace
			cmpl %eax, IGUAL
			je op_igual

			cmpl %eax, SOMA
			je newop
			cmpl %eax, SUBT
			je newop
			cmpl %eax, MULT
			je newop
			cmpl %eax, DIVS
			je newop

			jmp printa_num ##primeira operacao é invalida, conta como saida
		newop:
			movl %eax, oper ##guardou a operacao
			##ler o proximo numero
			jmp lernum


		yesop:
			movl oper, %ecx
			cmpl %ecx, SOMA
			je somar
			cmpl %ecx, SUBT
			je subtrair
			cmpl %ecx, MULT
			je multiplicar
			cmpl %ecx, DIVS
			je dividir

			somar:
				addl esq, %eax
				movl %eax, esq
				jmp lerop
			subtrair:
				movl esq, %ebx
				subl %eax, %ebx
				movl %ebx, esq
				jmp lerop
			multiplicar:
				cdq ##%edx:%eax <- %eax com sinal extendido
				imull esq ##%edx:eax <- esq * %eax
				jo num_muito_grande
				movl %eax, esq
				jmp lerop
			dividir:
				pushl esq
				pushl %eax
				xchgl %eax, esq #trocar esq e %eax de posicao para a divisao
				CDQ
				idivl esq #%eax <- %edx:eax / esq; %edx <- resto
				movl %eax, esq

				#reorganizar a pilha
				popl %eax
				popl %ecx
				pushl %edx
				pushl %eax
				pushl %ecx
				pushl $retorno_resto
				call printf
				addl $16, (%esp)

				jmp lerop
				
			
			op_igual:
				##oper = ultima operacao realizada
				##esq = resultado desta operacao
				##%eax = $'='
				movl %eax, oper

			jmp printa_num

		##############
		###verficar oper
		#####se 0, soh coloca %eax na esq
		#####senao, se SOMA, SUBT, MULT, DIVS, executar esq <oper> %eax
		#####senao, ???(situacao impossivel: oper sera sempre 0 ou SOMA/SUBT/MULT/DIVS
		###chamar getchar
		#####se %eax for um caracter de operacao, guardar em oper e comecar ler o proximo numero
		#####senao, se %eax for IGUAL, terminar
		#####senao, ignorar e chamar getchar de novo
		###termino: mostrar o numero, resetar variaveis


num_muito_grande:
	movl $bignum, (%esp)
	call printf
	jmp end

printa_num:
	pushl	esq
	pushl	$printchar
	call printf
	addl	$8,	%esp


	movl $pulalin, (%esp)
	call printf
	jmp pedenumero

end:

	movl	$0,	(%esp)
	call	exit

