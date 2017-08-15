Program Pzim ;
uses crt; 
{Pendencias : arrumar questao niveis ;   

comentar todo o codigo e tirar excessos }


const  MAX_BLOCO = 9; // numero maximo de blocos possiveis de kda lado (direito e esquerdo)
 	  MAX_VALOR_BLOCO = 51; // kda bloco podera ter valores de 0 a 50 (o 51 eh para o random) 
       BLOCO_INICIAL = -1; // valor do meio do conjunto de blocos 
       

type tPonteiro = ^Lista_Encadeada;  // ponteiro para a lista encadeada
 
 	Lista_Encadeada = record
   	info: integer;
   	predecessor: tPonteiro;
   	sucessor: tPonteiro;
      
 	end;

var I,F,T,P: tPonteiro;  // ponteiros JOGADOR 1
    I2,F2,T2,P2: tPonteiro; // ponteiros JOGADOR 2

	  	   
 procedure Inicia_Lista(var P:tPonteiro; var I:tPonteiro; var F:tPonteiro; var T:tPonteiro);
 begin
 	
	P := nil;
	I := nil;
 	F := nil;
 	T := nil;
 	
 end;
 
 function Lista_Encadeada_Vazia( var I: tPonteiro; var F: tPonteiro): boolean;
 begin
 	Lista_Encadeada_Vazia := ((I = nil ) and (F = nil)); 
 end;
 

 
procedure Insere_Direita_Lista_Encadeada (x:integer; var P:tPonteiro; var I:tPonteiro; var F:tPonteiro; var T:tPonteiro);
  
 begin
 	if (Lista_Encadeada_Vazia(I,F))
		then begin
			new(P);
			P^.info := x;
			P^.predecessor := nil;
			P^.sucessor := nil;
			I := P;
			T := P;
			F := P; 		
		end
		else begin
			new(P);
			P^.info := x;
			P^.predecessor := T;
			T^.sucessor := P;
			P^.sucessor := nil;
			T := P;
			F := P;
		end;
 end;                                      
 
procedure Insere_Esquerda_Lista_Encadeada (x:integer; var T:tPonteiro; var I:tPonteiro; var P:tPonteiro; var F:tPonteiro);
 
 begin
 	if (Lista_Encadeada_Vazia(I,F))
 		then begin
 			Insere_Direita_Lista_Encadeada (x, P, I, F, T);	
		end
		else begin
			new(P);
			P^.info := x;
			P^.sucessor := I;
			I^.predecessor := P;
			P^.predecessor := nil;
			I := P;
			
		end;
 end;
 
 procedure Remove_Direita_Lista_Encadeada (x:integer; var P:tPonteiro; var I:tPonteiro; var T:tPonteiro; var F:tPonteiro);
 begin
 	 if (not(Lista_Encadeada_Vazia(I,F))) 
 	 	then begin
 	 		P := T;
	 		x := P^.info;
	 		T := T^.predecessor;
	 		F:= F^.predecessor;
	 		F^.sucessor := nil;
			T^.sucessor := nil;
	 		P^.predecessor := nil;
	 		dispose(P);
	 		if (Lista_Encadeada_Vazia(I,F))
	 			then begin
	 				Inicia_Lista(P, I, F, T); 	
				end; 
 	 	end;
 	
 end;
    
 procedure Remove_Esquerda_Lista_Encadeada (x:integer; var P:tPonteiro; var I:tPonteiro; var T:tPonteiro; var F:tPonteiro);  
 begin
 	if (not(Lista_Encadeada_Vazia(I,F)))
 		then begin
 			P := I;
 			x := P^. info;
 			I := I^.sucessor;
 			I^.predecessor := nil;
 			P^.sucessor := nil;
 			dispose(P);
 			
 			if (Lista_Encadeada_Vazia(I,F))
	 			then begin
	 				Inicia_Lista(P, I, F, T); 	
				end;
		end; 
 end;
 procedure lista_Elementos (l: tPonteiro);
 
 var p: tPonteiro;
 begin
      p := l;
      //writeln ('Iniciando leitura elementos ');
      while (p^.sucessor <> nil) do
	 begin
	 	//writeln('Um elemento da lista eh: ' , p^.info);
	 	 write(p^.info);
	 	 write(' ');
		 p := p^.sucessor;
	 end;
	 //writeln('Um elemento da lista eh: ' , p^.info);
	 write(p^.info);
	 writeln;
	 writeln;
	 
 end;  
 
 
 procedure Seleciona_Elemento_Esquerda (x:integer; var P:tPonteiro; var I:tPonteiro; var T:tPonteiro; var F:tPonteiro);
 
 var valor_resultante: integer;
 
 begin
 	valor_resultante := I^.info;
 	
 	valor_resultante := (valor_resultante - x);
 	
 	if (valor_resultante <= 0)
 		then begin
 			Remove_Esquerda_Lista_Encadeada (x, P, I, T, F);
		end
		else begin
			I^.info := valor_resultante;
		end;
 end;

 procedure Seleciona_Elemento_Direita (x:integer; var P:tPonteiro; var I:tPonteiro; var T:tPonteiro; var F:tPonteiro);
 var valor_resultante: integer;
 
 begin
 	valor_resultante := F^.info;
 	
 	valor_resultante := (valor_resultante - x);
 	
 	if (valor_resultante <= 0)
 		then begin
 			Remove_Direita_Lista_Encadeada(x, P, I, T, F);
		end
		else begin
			F^.info := valor_resultante;                                                                       
		end;
 end; 
       
 procedure Desloca_Bloco (var s1: integer; var s2: integer; var P:tPonteiro; var I:tPonteiro; var T:tPonteiro; var F:tPonteiro);
 var 
 	valor_auxiliar: integer;
 begin
 	 valor_auxiliar := 0;
	 if (s1 = (s2 * 0.2))
 		then begin
 		   valor_auxiliar := F^.info;
		   Insere_Esquerda_Lista_Encadeada (valor_auxiliar, T, I, P, F);
 		   valor_auxiliar := 0;
		   Remove_Direita_Lista_Encadeada (valor_auxiliar, P, I, T, F);
		end
		else begin 
			
			if(s2 = (s1 * 0.2)) 
			 then begin  
		      	valor_auxiliar := F^.info;
		   		Insere_Direita_Lista_Encadeada (valor_auxiliar, T, I, P, F);
 		   		valor_auxiliar := 0;
		   		Remove_Esquerda_Lista_Encadeada (valor_auxiliar, P, I, T, F);  	
			 end;
 		   
		end;
 end; 
 
 var 
 	numero_bloco, valor_bloco :integer;
	soma_esquerda_jogador1, soma_direita_jogador1:integer;
	soma_esquerda_jogador2, soma_direita_jogador2:integer;
	contador: integer;
	posicao, posicao_anterior_jogador1, posicao_anterior_jogador2: integer; 	
 	valor_soco: integer;
	escolhe_jogador, jogador_anterior :integer;
	
 Begin
 	clrscr;
   	randomize;

	Inicia_Lista(P, I, F, T); // inicia ponteiros jogador 1
	
	Inicia_Lista(P2, I2, F2, T2); // inicia ponteiros jogador 2
	
	numero_bloco:= (1 + (random(MAX_BLOCO))); // numero entre 3 e 9 blocos
   	
   	Insere_Direita_Lista_Encadeada (BLOCO_INICIAL, P, I, F, T); // insere o -1 como meio do conjunto de blocos para o jogador 1
	writeln;
	writeln;
	Insere_Direita_Lista_Encadeada (BLOCO_INICIAL, P2, I2, F2, T2);// insere o -1 como meio do conjunto de blocos para o jogador 2
	   
	for contador:=1 to numero_bloco do
   	  begin
   			//  inicio criacao blocos jogador 1
			  
			valor_bloco:= (50 + (random(MAX_VALOR_BLOCO))); // valor_bloco recebe no maximo o valor 100
   	          Insere_Direita_Lista_Encadeada (valor_bloco, P, I, F, T);  // uma insercao a direita onde o bloco recebe o valor de valor_bloco
   	          soma_direita_jogador1 := (soma_direita_jogador1 + valor_bloco); 
   	          
   	          valor_bloco:= (50 + (random(MAX_VALOR_BLOCO)));
   	          Insere_Esquerda_Lista_Encadeada (valor_bloco, T, I, P, F); // uma insercao a esquerda onde o bloco recebe o valor de valor_bloco
   	          soma_esquerda_jogador1 := (soma_esquerda_jogador1 + valor_bloco);
   	          
   	          // fim criacao blocos jogador 1
   	          
   	          // inicio criacao blocs jogador 2
   	          
   	             valor_bloco:= (50 + (random(MAX_VALOR_BLOCO))); // valor_bloco recebe no maximo o valor 100
   	          Insere_Direita_Lista_Encadeada (valor_bloco, P2, I2, F2, T2);  // uma insercao a direita onde o bloco recebe o valor de valor_bloco
   	          soma_direita_jogador2 := (soma_direita_jogador2 + valor_bloco); 
   	          
   	          valor_bloco:= (50 + (random(MAX_VALOR_BLOCO)));
   	          Insere_Esquerda_Lista_Encadeada (valor_bloco, T2, I2, P2, F2); // uma insercao a esquerda onde o bloco recebe o valor de valor_bloco
   	          soma_esquerda_jogador2 := (soma_esquerda_jogador2 + valor_bloco);
   	          
			// fim criacao blocos jogador 2
	  end;
	  
	 writeln;
      writeln;
      
	 writeln('Soma esquerda jogador1 ', soma_esquerda_jogador1); 
      writeln('Soma direita jogador1 ', soma_direita_jogador1);
      
      writeln('Soma esquerda jogador2 ', soma_esquerda_jogador2);
      writeln('Soma direita jogador2 ', soma_direita_jogador2);
      
	 posicao_anterior_jogador1 := -1;
	 posicao_anterior_jogador2 := -1;
      jogador_anterior := -1;
      
      writeln;
      writeln;
      writeln(' Iniciando aplicacao... ');
      writeln;
      writeln(' Jogador 1: ');
	 Lista_elementos(I);
	 //writeln;
	 writeln(' Jogador 2: ');
	 Lista_elementos(I2);
      writeln;
      writeln;
      
	 repeat

        delay(1000);
	   
	   escolhe_jogador := random(2);
	   
	   while (escolhe_jogador = jogador_anterior) do // loop para garantir a alternancia de jogadores 
	   begin
	   	escolhe_jogador := random(2);
	   	
	   end;
	   case (escolhe_jogador)  of
	   
	   		0: begin
	   			//writeln(' Foi selecionado o jogador 1 ');
	   			valor_soco := (random(MAX_VALOR_BLOCO)); // valor_soco recebe no maximo 50
	          	//writeln(' O valor do soco eh: ', valor_soco);
						
				if ((valor_soco > 45)and (valor_soco < 51))and (posicao_anterior_jogador1 <> -1)
				then begin
					posicao := posicao_anterior_jogador1;
				end
				else begin
					posicao := random(2);
					// while para garantir q seja escolhido sempre 1 elemento da direita e outro da esquerda
					while(posicao = posicao_anterior_jogador1) do
					begin
							posicao := random(2);
					end;
				end;
				
				case (posicao) of
		     			
						0: begin
					   		//posicao := POSICAO_ESQUERDA;
					   		Seleciona_Elemento_Esquerda (valor_soco, P, I, T, F);
					   		soma_esquerda_jogador1 := (soma_esquerda_jogador1 - valor_soco);
					   		//writeln(' A soma atual do jogador 1 esquerda eh: ',soma_esquerda_jogador1);
						   end; 
		     	
		     			1: begin
		     		   		//posicao := POSICAO_DIREITA;
							Seleciona_Elemento_Direita (valor_soco, P, I, T, F);
							soma_direita_jogador1 := (soma_direita_jogador1 - valor_soco);
							//writeln(' A soma atual do jogador 1 direita eh: ',soma_direita_jogador1);
					   	   end;
				end;
				posicao_anterior_jogador1 := posicao;
				
				Desloca_Bloco (soma_esquerda_jogador1, soma_direita_jogador1, P, I, T, F);   // Desloca um bloco para o jogador 1
				writeln(' Jogador 1 ');
				writeln;
				lista_Elementos(I);
	   			
	   		   end;
	   		   
	   		1: begin
	   			//writeln(' Foi selecionado o jogador 2 ');
	   			
	   			valor_soco := (random(MAX_VALOR_BLOCO)); // valor_soco recebe no maximo 50
	          	//writeln(' O valor do soco eh: ', valor_soco);
						
				if ((valor_soco > 45)and (valor_soco < 51))and (posicao_anterior_jogador2 <> -1)
				then begin
					posicao := posicao_anterior_jogador2;
				end
				else begin
					posicao := random(2);
					// while para garantir q seja escolhido sempre 1 elemento da direita e outro da esquerda
					while(posicao = posicao_anterior_jogador2) do
					begin
							posicao := random(2);
					end;
					
				end;
				
				case (posicao) of
		     			
						0: begin
					   		//posicao := POSICAO_ESQUERDA;
					   		Seleciona_Elemento_Esquerda (valor_soco, P2, I2, T2, F2);
					   		soma_esquerda_jogador2 := (soma_esquerda_jogador2 - valor_soco);
					   		//writeln(' A soma atual do jogador 2 esquerda eh: ',soma_esquerda_jogador2);
						   end; 
		     	
		     			1: begin
		     		   		//posicao := POSICAO_DIREITA;
							Seleciona_Elemento_Direita (valor_soco, P2, I2, T2, F2);
							soma_direita_jogador2 := (soma_direita_jogador2 - valor_soco);
							//writeln(' A soma atual do jogador 2 direita eh: ',soma_direita_jogador2);
					   	   end;
				end;
				posicao_anterior_jogador2 := posicao;
				
				Desloca_Bloco (soma_esquerda_jogador2, soma_direita_jogador2, P2, I2, T2, F2);   // Desloca um bloco para o jogador 2
				
				writeln(' Jogador 2 ');
				writeln;
				
				lista_Elementos(I2);
	   		   end;
	   	
	   end;
	  jogador_anterior := escolhe_jogador;
	  
	until ((I^.info = BLOCO_INICIAL) or (F^.info = BLOCO_INICIAL) or (I2^.info = BLOCO_INICIAL) or (F2^.info = BLOCO_INICIAL));
	 
	if ((I^.info = BLOCO_INICIAL) or (F^.info = BLOCO_INICIAL))
		then begin
			writeln;
			writeln;
			lista_Elementos(I);
			writeln(' O perdedor foi o jogador 1 ');
			
		end
		else begin
		     writeln;
			writeln;
			lista_Elementos(I2);
			writeln(' O perdedor foi o jogador 2 ');
			
		end;
	
	 
	 readkey;

  
  
 End.
