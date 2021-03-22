Program GravaObjeto;
uses CRT;

Type objetos       =  record
                         objeto : integer;
                         NV     : integer;
                         NS     : integer;
                      end;

Type vertices      =  record
                         v  : integer;
                         x  : real;
                         y  : real;
                         z  : real;
                      end;

Type superficies   =  record
                         nds  : integer;
                         nvps : integer;
                      end;

Type faces         =  record
                         nds  : integer;
                         v  : integer;
                      end;
var

   I,J,NVW,NSW : integer;
   NVPS: array[1..20] of integer;
   arquivo   : string[30];
   arquivo1  : string[30];
   arquivo2  : string[30];
   arquivo3  : string[30];
   arquivo4  : string[30];

   obH      : objetos;
   veH      : vertices;
   suH      : superficies;
   faH      : faces;

   arqobj   : file of objetos;
   arqver   : file of vertices;
   arqsup   : file of superficies;
   arqfac   : file of faces;

begin



  clrscr; writeln; writeln; writeln;
  Writeln('Programa para Ler um Objeto 3D e Gravar em um Arquivo ');
  Writeln;
  Write('Entre com o Nome do Objeto : ');
  readln(arquivo);

  writeln;
  writeln('Foram criados os seguintes arquivos  ');
  writeln;

  arquivo1:= 'D:\dados\' + arquivo + 'objetos.dat';      writeln('Arquivo1  ........',arquivo1);
  arquivo2:= 'D:\dados\' + arquivo + 'vertices.dat';     writeln('Arquivo2  ........',arquivo2);
  arquivo3:= 'D:\dados\' + arquivo + 'superficies.dat';  writeln('Arquivo3  ........',arquivo3);
  arquivo4:= 'D:\dados\' + arquivo + 'faces';            writeln('Arquivo4  ........',arquivo4);




  writeln;
  Write('Entre com o Numero de Vertices    : ');
  readln(obH.NV);   NVW := obH.NV;
  Writeln;
  Write('Entre com o Numero de Superficies : ');
  readln(obH.NS);   NSW := obH.NS;
  obH.objeto:=1;

  assign  (arqobj,arquivo1);
  rewrite (arqobj);
  write   (arqobj,obH);
  close   (arqobj);

  writeln; writeln; writeln;
  assign (arqver,arquivo2);
  rewrite(arqver); writeln;
  for I:=1 to NVW do
		begin
            writeln(' Vertice ... ',I);
            veH.V := I; writeln;
			write(' Entre com o valor de X  ');
            readln(veH.X);
            write(' Entre com o valor de Y  ');
            readln(veH.Y);
            write(' Entre com o valor de Z  ');
            readln(veH.Z);
            write (arqver,veH);   writeln;
        end;
  close (arqver);


  clrscr;
  writeln; writeln; writeln;
  assign (arqsup,arquivo3);
  rewrite(arqsup);
  writeln ('Informe O Numero de vertices em cada Superficies ou Face ');
  for I:= 1 to NSW do
      begin
           writeln;
           write('Entre com o numero de vertices da Superfice ',I,' : ');
           suH.nds := I;
           readln(suH.nvps);
           NVPS[I] :=  suH.nvps;
           write(arqsup,suH);
      end;
  close (arqsup);


  clrscr;
  writeln; writeln;
  assign (arqfac,arquivo4);
  rewrite(arqfac);
  writeln ('Informe os Vertices de cada Superficies ou Face '); writeln;
  for I:= 1 to NSW do
      begin
           writeln;
           writeln; writeln('Informe os ',NVPS[I],' Vertices da Superficie ',I);
           for J:= 1 to NVPS[I] do
               begin
                    write('Vertice ',J,'/',NVPS[I], ' : ' );
                    faH.nds :=  I;
                    readln(faH.v);
                    write(arqfac,faH);
               end;
      end;
  close (arqfac);




 writeln(' Acabou ..............................Fim ');

 readkey;

end.
