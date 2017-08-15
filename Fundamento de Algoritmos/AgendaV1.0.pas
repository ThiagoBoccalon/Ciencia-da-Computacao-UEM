Program Exercicio ; 
 uses crt;

 type
 ponteiro_campo=^campo;
 campo=record
 	 codigo: integer;
 	 nome: string;
 	 celular: integer;
 	 fixo: integer;
 	 email: string;
 	 data_an: string;
     data_mes: string;
     prox: ponteiro_campo;
 end;
 
 var
 Inicio, Fim, Aux: ponteiro_campo;
 cond_menu: boolean;
 op: integer;
 
 procedure Inicia_Lista(var Inicio, Fim: ponteiro_campo);
 begin
 	Inicio := nil;
 	Fim := nil; 	
 end;
 
 function Lista_Vazia( var Inicio, Fim: Ponteiro_campo): boolean;
 begin
 	Lista_Vazia := ((Inicio = nil ) and (Fim = nil)); 
 end;

 procedure inserir_inicio(var Inicio, fim: ponteiro_campo);
 var aux: ponteiro_campo;
 begin
     textcolor(15);
	if (Lista_Vazia(Inicio,Fim)) then
	begin		
     	new(fim); 		
 		gotoxy(9,15);
		write('digitar codigo: ');
 		readln(fim^.codigo);
 		gotoxy(9,16);
     	write('digitar nome: ');
 		readln(fim^.nome);
 		gotoxy(9,17);
 		write('digitar celular: '); 		
 		readln(fim^.celular);
 		gotoxy(9,18);
 		write('digitar fixo: ');
 		readln(fim^.fixo);
 		gotoxy(9,19);
 		write('digitar e-mail: '); 
 		readln(fim^.email);
 		gotoxy(9,20);
 		write('Data de aniversaio (ex. dd/mm): ');
 		readln(fim^.data_an);
 		fim^.prox:= nil;
 		Inicio:= fim;
 	end
 	else
 	begin
 		new(aux);
 		gotoxy(9,15);
		write('digitar codigo: ');
 		readln(aux^.codigo);
 		gotoxy(9,16);
     	write('digitar nome: ');
 		readln(aux^.nome);
 		gotoxy(9,17);
 		write('digitar celular: ');
 		readln(aux^.celular);
 		gotoxy(9,18);
 		write('digitar fixo: ');
 		readln(aux^.fixo);
 		gotoxy(9,19);
 		write('digitar e-mail: ');
 		readln(aux^.email);
 		gotoxy(9,20);
 		write('Data de aniversaio (ex. dd/mm): ');
 		readln(fim^.data_an);
 		
 		aux^.prox:= inicio;
 		//fim^.prox:= ;
		inicio:= aux;
 	end;
 end;
 
 
  
 procedure inserir_final(var Inicio, fim: ponteiro_campo);
 var aux: ponteiro_campo;
 begin
     textcolor(15);
	if (Lista_Vazia(Inicio,Fim)) then
	begin		
     	new(fim); 		
 		gotoxy(9,15);
		write('digitar codigo: ');
 		readln(fim^.codigo);
 		gotoxy(9,16);
     	write('digitar nome: ');
 		readln(fim^.nome);
 		gotoxy(9,17);
 		write('digitar celular: '); 		
 		readln(fim^.celular);
 		gotoxy(9,18);
 		write('digitar fixo: ');
 		readln(fim^.fixo);
 		gotoxy(9,19);
 		write('digitar e-mail: '); 
 		readln(fim^.email);
 		gotoxy(9,20);
 		write('Data de aniversaio (ex. dd/mm): ');
 		readln(fim^.data_an);
 		fim^.prox:= nil;
 		Inicio:= fim;
 	end
 	else
 	begin
 		new(aux);
 		gotoxy(9,15);
		write('digitar codigo: ');
 		readln(aux^.codigo);
 		gotoxy(9,16);
     	write('digitar nome: ');
 		readln(aux^.nome);
 		gotoxy(9,17);
 		write('digitar celular: ');
 		readln(aux^.celular);
 		gotoxy(9,18);
 		write('digitar fixo: ');
 		readln(aux^.fixo);
 		gotoxy(9,19);
 		write('digitar e-mail: ');
 		readln(aux^.email);
 		gotoxy(9,20);
 		write('Data de aniversaio (ex. dd/mm): ');
 		readln(fim^.data_an);
 		
 		aux^.prox:= nil;
 		fim^.prox:= aux;		
		fim:= aux;		
 	end;
 end;
 
 procedure alterar(var  Inicio, fim: ponteiro_campo);
 var
     codigo,opcao:integer;
     aux:ponteiro_campo;
     nome,email,data_an:string;
     fixo,cel: integer; 
 begin
 	textcolor(9);
	gotoxy(9,12);
	write('digite o codigo: ');
 	readln(codigo);
 	if (Lista_vazia(Inicio, Fim)) then
 	begin
 		 gotoxy(9,13);
		 writeln('Não exite Contatos Cadastrados');
 	end
 	else 
	begin
	   new(aux);
	   aux:=Inicio;
	   while(aux^.prox<>nil) and (aux^.codigo<>codigo)do
	       aux:=aux^.prox;
	   if(aux^.codigo=codigo)then
	   begin
	   	 gotoxy(9,14);	
	      writeln('Escolha a opção a ser alterada:');
           writeln;
           gotoxy(9,15);
	      writeln('<1> Nome');
	      gotoxy(9,16);
	      writeln('<2> Telefone celular');
	      gotoxy(9,17);
	      writeln('<3> Telefone fixo');
	      gotoxy(9,18);
	      writeln('<4> e-mail');
	      gotoxy(9,19);
	      writeln('<5> Data aniversario');
           writeln;
           gotoxy(9,21);
		 write('Sua escolha: ');
	      readln(opcao);
	      case(opcao)of
	        1:begin
	           	 gotoxy(9,22);
				 write('Digite novo nome: ');
	           	readln(nome);
	           	aux^.nome:=nome;
	          end;
	        2:begin
	        	    gotoxy(9,22);
			    write('Digite novo numero cel: ');
	              readln(cel);
	           	aux^.celular:=cel;
	          end;
	        3:begin
	           	gotoxy(9,22);
				write('Digite novo numero fixo: ');
	           	readln(fixo);
	           	aux^.fixo:=fixo;
	          end;
	        4:begin
	           gotoxy(9,22);
			 write('digite novo e-mail: ');
	           readln(email);
	           aux^.email:=email;
	          end;
	        5: begin
	        	 	gotoxy(9,22);
	        	 	write('Digite nova da de aniversario: ');
	        	 	readln(data_an);
	        	 	aux^.data_an:= data_an;
		  	 end; 	      
	      end;
	   end
	   else
	   begin
	   	write('não encontrado o código');	   
	   end;	
 	end;
 end;

 procedure Busca_contato (Var aux: ponteiro_campo; Var Inicio, Fim: ponteiro_campo);
 var 
 cod: integer;
 
 begin
 	textcolor(15);
	gotoxy(9,12);
	write('digite o codigo: ');
 	readln(cod);
 	if (Lista_vazia(Inicio, Fim)) then
 	begin
 		 gotoxy(9,13);
		 writeln('Não exite Contatos Cadastrados');
 	end
 	else 
	begin
	   new(aux);
	   aux:=Inicio;
	   while(aux^.prox<>nil) and (aux^.prox^.codigo<>cod)do
	   	aux:=aux^.prox;	   
 	end;
 end;

 procedure Exclui (var Inicio,Fim: ponteiro_campo);
 	var
 	p: ponteiro_campo;
	t: ponteiro_campo;
	aux1: ponteiro_campo;
 begin	
 	Busca_contato (aux1,Inicio,Fim); 	
 	 	 if (aux1 = inicio) then
 	 	 begin
 	 	 	Inicio:= aux1^.prox;
 	 	 	dispose(aux1);
		 end
		 else
 	 	 begin	
			if (aux1^.prox^.prox = nil) then
			begin
				P := aux1^.prox;
	 			aux1^.prox:= nil;
	 			dispose(P);	
			end
			else
			begin	
				P := aux1^.prox;
	 			T:= P^.prox;
	 			aux1^.prox:= T;
	 			dispose(P);
	 		end;
 	 	 end; 		
 end;
 
 procedure Busca_contato_tel (Var Inicio, Fim: ponteiro_campo);
 var 
 tel: integer; 
 aux_tel: ponteiro_campo; 
 
 begin
 	textcolor(9);
	gotoxy(9,16);
	write('digite o numero do telefone (fixo ou celular): ');
 	readln(tel);
 	if (Lista_vazia(Inicio, Fim)) then
 	begin
 		gotoxy(9,17);
 		writeln('Não exite Contatos Cadastrados');
 	end
 	else 
	begin
	   new(aux_tel);
	   aux_tel:=Inicio;
	
	   while((aux_tel^.prox<>nil) and ((aux_tel^.celular<>tel) or (aux_tel^.fixo<>tel))) do
	   begin
	   	aux_tel:=aux_tel^.prox;
	   end;			
	   if ((aux_tel^.prox = nil) and (Inicio<>Fim)) and (((aux_tel^.prox = nil) and (Inicio=Fim)) and ((aux_tel^.celular<>tel) or (aux_tel^.fixo<>tel)))then
	   begin
	   	 gotoxy(9,18);  
		 writeln('Contato não encontrado');
	   end	   
	   else
	   begin
	   	gotoxy(9,19);
		writeln('Codigo: ',aux_tel^.codigo);
		gotoxy(9,20);
	   	writeln('Nome: ',aux_tel^.nome);
	   	gotoxy(9,21);
	   	writeln('Num do celular: ', aux_tel^.celular);
	   	gotoxy(9,22);
	   	writeln('Num do fixo: ', aux_tel^.fixo);
	   	gotoxy(9,23);
	   	writeln('Endereco de email: ',aux_tel^.email);	   	
	   end;
 	end;
 end;
 
 procedure Busca_contato_nome (Var Inicio, Fim: ponteiro_campo);
 var 
 nome1: string;  
 aux_nome: ponteiro_campo; 
 //A: integer;
 
 begin
 	textcolor(15);
	gotoxy(9,16);
	write('digite o nome da pessoa: ');
 	readln(nome1);
 	if (Lista_vazia(Inicio, Fim)) then
 	begin
 		 gotoxy(9,17);
		 writeln('Não Exite Nenhum Contatos Cadastrados');
 	end
 	else 
	begin
	   new(aux_nome);
	   aux_nome:=Inicio;	   
	   while((aux_nome <> nil)) do
	   begin		
		if (pos(nome1,aux_nome^.nome) <> 0) then	   	
	   	begin	   		
			//gotoxy(9,18);
			writeln('Codigo: ',aux_nome^.codigo);
			//gotoxy(9,19);
	   		writeln('Nome: ',aux_nome^.nome);
	   		//gotoxy(9,20);
	   		writeln('Num do celular: ', aux_nome^.celular);
	   		//gotoxy(9,21);
	   		writeln('Num do fixo: ', aux_nome^.fixo);
	   		//gotoxy(9,22);
	   		writeln('Endereco de email: ',aux_nome^.email);
	   		writeln;
	   	end;
	     aux_nome:=aux_nome^.prox;
	   end;	
 	end;
 end;

 procedure Lista_Aniversario (Var Inicio, Fim: ponteiro_campo);
 var
    data_inf: string;
    aux_data: ponteiro_campo;
 //A: integer;

 begin
      write('Informe o mes de aniversario: ');
      readln(data_inf);
      if (Lista_vazia(Inicio, Fim)) then
 	begin
 		 gotoxy(9,17);
		 writeln('Não Exite Nenhum Contato Cadastrado');
 	end
 	else 
	begin
	   new(aux_data);
	   aux_data:=Inicio;
	   while((aux_data <> nil)) do
	   begin		
		if ((pos(data_inf[1],aux_data^.data_an[4]) <> 0) and (pos(data_inf[2],aux_data^.data_an[5]) <> 0)) then
	   	begin	   		
			//gotoxy(9,18);
			writeln('Nome: ',aux_data^.nome);
			//gotoxy(9,19);
	   		writeln('Data de Aniversario: ',aux_data^.data_an);
	   		//gotoxy(9,20);
	   		writeln('endereco de email: ', aux_data^.email);
	   		//gotoxy(9,21);
	   		writeln('Num do celular: ', aux_data^.celular);
	   	end;
	     aux_data:=aux_data^.prox;
	   end;	
 	end;
 end;

 procedure Lista_todos (Var Inicio, Fim: ponteiro_campo);
 var
    aux_point: ponteiro_campo;
 begin
       aux_point:= inicio;
       while(aux_point <> nil) do
	   begin
			writeln('Nome: ',aux_point^.nome);
	   		//gotoxy(9,20);
       		writeln('Endereco de email: ',aux_point^.email);
	   		writeln;
            aux_point:=aux_point^.prox;
	   	end;
	     //aux_point:=aux_nome^.prox;
	   //end;
 	//end;
 end;
 
 
 Begin
  	cond_menu:= false;
  	Inicia_Lista(Inicio,Fim);
	repeat
		textcolor(15);
		gotoxy(1,2);
		textbackground(3);
		write('==================MENU===================');
		writeln;
		textbackground(0);
		textcolor(12);
  		gotoxy(9,4);
		writeln('<1> Inserir Contato');
		gotoxy(9,5);
  		writeln('<2> Alterar Contato');
  		gotoxy(9,6);
  		writeln('<3> Excluir Contato');
  		gotoxy(9,7);
  		writeln('<4> Consultar Contato');
  		gotoxy(9,8);
        writeln('<5> Listar Aniversariante');
        gotoxy(9,9);
        writeln('<6> Listar Todos');
        gotoxy(9,10);
  		writeln('<7> Sair');
		writeln;
        gotoxy(9,12);
		write('Sua escolha: ');		
	     readln(op);
	     writeln;
		case op of
			1: begin
                gotoxy(9,13);
                writeln('<1> Inseriri contato no inicio');
                gotoxy(9,14);
                write('<2> Inserir contato no final: ');
                readln(op);
                if (op=1) then
		   		         inserir_final(Inicio,fim)
                else
                    inserir_final(Inicio,fim);
		   	  	writeln;
		   	  end;
		   	2: begin
		        	  alterar(Inicio,fim);		        	  
			   end;
			3: begin
			   	 	 Exclui (Inicio,Fim);
			   end;
			4: begin
			   		textcolor(15);
					gotoxy(9,13);
					writeln('<1> Consultar por Nome');
					gotoxy(9,14);
					writeln('<2> Consultar por Numero do Telefone');
					gotoxy(9,15);
					write('Sua escolha: ');
					readln(op);
					
					case op of
						1: begin
						     //clrscr;
							Busca_contato_nome (Inicio,Fim);
						   end;
						2: begin
						   	//clrscr;
							Busca_contato_tel (Inicio,Fim);
						   end;   
					end;					
			   end;   
			5: begin
                   Lista_Aniversario (Inicio,Fim);
			   end;
            6: begin
                    Lista_todos(Inicio,Fim);
               end;
            7: begin
                    cond_menu:= true;		
               end;
		end;  
 	         readln;
          clrscr;
	until(cond_menu);
 End.
