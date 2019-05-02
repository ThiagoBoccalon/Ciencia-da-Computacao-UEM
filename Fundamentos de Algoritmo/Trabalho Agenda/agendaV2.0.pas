Program Exercicio ; 
 uses crt;

 type
 campo=record
 	 codigo: integer;
 	 nome: string;
 	 celular: integer;
 	 fixo: integer;
 	 email: string;
 	 data_an: string;
 end;
    arq_agenda=file of campo;
 var
    reg_ag: campo;
    arq_ag: arq_agenda;
    cond_menu: boolean;
    op: integer;
    existe: boolean;
    pos: longint;

 procedure Inserir ();
 var
 opcao: char;
 begin
      textcolor(15);
      opcao:='s';
      while opcao='s' do
      begin
          with reg_ag do
          begin
               gotoxy(9,10);
               write('Codigo: ');
               readln(reg_ag.codigo);
               gotoxy(9,11);
               write('Nome: ');
               readln(reg_ag.nome);
               gotoxy(9,12);
               write('Numero Cel: ');
               readln(reg_ag.celular);
               gotoxy(9,13);
               write('Numero Fixo: ');
               readln(reg_ag.fixo);
               gotoxy(9,14);
               write('E-mail: ');
               readln(reg_ag.email);
               gotoxy(9,15);
               write('Data aniversaio: ');
               readln(reg_ag.data_an);
          end;
          seek (arq_ag,filesize(arq_ag));
          write(arq_ag,reg_ag);
          writeln;
          gotoxy(9,17);
          write('continua cadastro s/n: ');
          readln(opcao);
      end;
 end;

 procedure localizar_nome (N: string; var achou: boolean; var posicao: longint);
 begin
      achou:= false;
      posicao:= -1;
      seek(arq_ag,0);
      while not eof(arq_ag) do
      begin
           read(arq_ag,reg_ag);
           if (reg_ag.nome = N) then
           begin
                achou:= true;
                posicao:= filepos(arq_ag) -1;
           end;
      end;
 end;

 procedure localizar_numero (N: integer; var achou: boolean; var posicao: longint);
 begin
      textcolor(15);
      achou:= false;
      posicao:= -1;
      seek(arq_ag,0);
      while not eof(arq_ag) do
      begin
           read(arq_ag,reg_ag);
           if (reg_ag.codigo = N) then
           begin
                achou:= true;
                posicao:= filepos(arq_ag) -1;
           end;
      end;
 end;

 procedure alterar ();
 var
    num_contato: integer;

    R: char;
    opcao: integer;
 begin
     textcolor(15);
     R:= 's';
     clrscr;
     gotoxy(9,10);
     writeln('*** ALTERAR ***');
     writeln;
     gotoxy(9,11);
     write('Codigo do Contato: ');
     readln(num_contato);
     localizar_numero(num_contato,Existe,Pos);
     if existe then
     begin
          with reg_ag do
                begin
                     while R='s' do
                     begin
                           gotoxy(9,12);
                           writeln('Escolha a opção a ser alterada:');
                           writeln;
                           gotoxy(9,13);
                           writeln('<1> Nome');
                           gotoxy(9,14);
                           writeln('<2> Telefone celular');
                           gotoxy(9,15);
                           writeln('<3> Telefone fixo');
                           gotoxy(9,16);
                           writeln('<4> e-mail');
                           gotoxy(9,17);
                           write('Sua escolha: ');
                           readln(opcao);
                     case(opcao)of
                           1:begin
                                  gotoxy(9,19);
                                  write('digite o nome: ');
                                  readln(reg_ag.nome);
                           end;
                           2:begin
                                  gotoxy(9,19);
                                  write('digite o Inicio cel: ');
                                  readln(reg_ag.celular);
                           end;
                           3:begin
                                  gotoxy(9,19);
                                  write('digite o Inicio fixo: ');
                                  readln(reg_ag.fixo);
                           end;
                           4:begin
                                  gotoxy(9,19);
                                  write('digite o Inicio email: ');
                                  readln(reg_ag.email);
                           end;
                     end;
                               writeln;
                               gotoxy(9,19);
                               write('continua cadastro s/n: ');
                               readln(R);
                     end;
                     readln;
                end;
     end
     else
         gotoxy(9,12);
         writeln('Contato nao existe');
         writeln;
 end;



 procedure consultar ();
 var
    nome_contato: string;
    //R: char;
 begin
     //repeat
     textcolor(15);
     clrscr;
     gotoxy(9,9);
     writeln('*** CONSULTA ***');
     writeln;
     gotoxy(9,10);
     write('Nome: ');
     readln(nome_contato);
     localizar_nome(nome_contato,Existe,Pos);
     if existe then
     begin
          with reg_ag do
                begin
                     gotoxy(9,11);
                     writeln('Codigo: ',reg_ag.codigo);
                     gotoxy(9,12);
                     writeln('Nome: ',reg_ag.nome);
                     gotoxy(9,13);
                     writeln('Num Celular: ',reg_ag.celular);
                     gotoxy(9,14);
                     writeln('Num Fixo: ',reg_ag.fixo);
                     gotoxy(9,15);
                     writeln('E-mail: ',reg_ag.email);
                     gotoxy(9,16);
                     writeln('Data de Aniversario: ',reg_ag.data_an);
                     readln;
                     readln;
                end;
     end
     else
         gotoxy(9,11);
         writeln('Contato nao existe');
         writeln;
 end;

 Begin
      cond_menu:= false;
      assign(arq_ag,'Minha_Agenda.txt');
      reset(arq_ag);
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
            gotoxy(9,9);
            write('escolha: ');
            readln(op);

            case op of
                 1: begin
                      inserir();
                    end;

                 2: begin
                         alterar();
                         writeln;
                    end;
                 3: begin

                    end;
                 4: begin
                         consultar();
                    end;
            end;
      clrscr;
      until(cond_menu);
      close(arq_ag);
 End.

