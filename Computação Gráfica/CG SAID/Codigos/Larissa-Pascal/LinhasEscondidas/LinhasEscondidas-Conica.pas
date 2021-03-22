Program Wire;
uses CRT, GRAPH;


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

   obH      : objetos;
   veH      : vertices;
   suH      : superficies;
   faH      : faces;

   arqobj   : file of objetos;
   arqver   : file of vertices;
   arqsup   : file of superficies;
   arqfac   : file of faces;


var
I, J, K, NV, NS, R, VI, SAIDA: integer;
A, B, C,P1X, P1Y, P1Z, P2X, P2Y, P2Z, P3X, P3Y, P3Z, X1X2, Y1Y2, Z1Z2, X3X2, Y3Y2, Z3Z2, NX, NY, NZ, X0, Y0, Z0:real;
D0, D1, D : real;

XMAX, XMIN, YMAX, YMIN, SX, SY, UMAX, UMIN, VMAX, VMIN, AUX: real;
UX, UY, UZ, VX, VY, VZ : real;

OB, PLH, PLC, PLP,VNS: array [1..4, 1..100] of real;
NVS: array [1..100] of integer;
VERT, PLS: array [1..100,1..100] of integer;
M : array [1..4,1..4] of real;

VBS, LSX,LSY, LSZ : array [1..100] of real;


arquivo   : string[30];
arquivo1  : string[30];
arquivo2  : string[30];
arquivo3  : string[30];
arquivo4  : string[30];


DG,MG : smallint;


Begin
    clrscr;  saida:=1;
    writeln('-------------------------  VISUALIZAÇÃO 3D  --------------------------');
    writeln;
    writeln(' Forneca os Dados do Objeto  '); writeln;
    write  (' Forneca o nome do arquivo   '); readln(arquivo);


    arquivo1:= 'D:\dados\' + arquivo + 'objetos.dat';
    arquivo2:= 'D:\dados\' + arquivo + 'vertices.dat';
    arquivo3:= 'D:\dados\' + arquivo + 'superficies.dat';
    arquivo4:= 'D:\dados\' + arquivo + 'faces';


    writeln;

    assign (arqobj,arquivo1);
    reset  (arqobj);
    read(arqobj,obH);
            NV:=obH.NV;
            NS:=obH.NS;
    close  (arqobj);

    assign(arqver,arquivo2);
    reset(arqver);

    for I:= 1 to NV do
             begin
                 read(arqver,veH);

                 OB[1,I]  := veH.X;
                 OB[2,I]  := veH.Y;
                 OB[3,I]  := veH.Z;
                 OB[4,I]  := 1;
             end;
     close(arqver);


    assign (arqsup,arquivo3);
    reset (arqsup);
    for I:=1 to NS do
        begin
             read(arqsup, suH);
             NVS[I] := suH.nvps;
        end;
   close(arqsup);


  assign (arqfac,arquivo4);
  reset(arqfac);
  for I:= 1  to NS do
      begin
           for J:= 1 to NVS[I] do
              begin
                   read(arqfac,faH);
                   VERT[I,J] := faH.V;
              end;
       end;
  close(arqfac);


    clrscr;
    Writeln(' Forneca os Dados do Plano de Projecao ');
    writeln;
    Writeln(' Forneca as Coordenadas do Primeiro ponto do Plano ');writeln;
    Write(' Entre com o Valor de X do ponto P1 '); readln(P1X);
    Write(' Entre com o Valor de Y do ponto P1 '); readln(P1Y);
    Write(' Entre com o Valor de Z do ponto P1 '); readln(P1Z);
    writeln; writeln;
    Writeln(' Forneca as Coordenadas do Segundo  ponto do Plano '); writeln;
    Write(' Entre com o Valor de X do ponto P2 '); readln(P2X);
    Write(' Entre com o Valor de Y do ponto P2 '); readln(P2Y);
    Write(' Entre com o Valor de Z do ponto P2 '); readln(P2Z);
    writeln;

    writeln(' Forneca as Coordenadas do Terceiro ponto do Plano '); writeln;
    write(' Entre com o Valor de X do ponto P3 '); readln(P3X);
    write(' Entre com o Valor de Y do ponto P3 '); readln(P3Y);
    write(' Entre com o Valor de Z do ponto P3 '); readln(P3Z);

    X1X2:= P1X-P2X;
    Y1Y2:= P1Y-P2Y;
    Z1Z2:= P1Z-P2Z;

    X3X2:= P3X-P2X;
    Y3Y2:= P3Y-P2Y;
    Z3Z2:= P3Z-P2Z;

    writeln; writeln; writeln;

    writeln('Entre com X0,Y0,Z0 um ponto do Plano');
    writeln;
            write('X0 : ');
            readln(X0);
            write('Y0 : ');
            readln(Y0);
            write('Z0 : ');
            readln(Z0);
    writeln;

    NX :=   Y1Y2*Z3Z2  -  Z1Z2*Y3Y2;
    NY := -(X1X2*Z3Z2  -  X3X2*Z1Z2);
    NZ :=   X1X2*Y3Y2  -  Y1Y2*X3X2;

    repeat

          clrscr;

                 writeln(' Forneca o Ponto de Vista em Coordenadas Cartesianas ');
                 writeln;
                 write(' Forneca o Valor de A : '); readln(A); writeln;
                 write(' Forneca o Valor de B : '); readln(B); writeln;
                 write(' Forneca o Valor de C : '); readln(C); writeln;
                 writeln;


                 D0:= X0*NX  + Y0*NY  + Z0*NZ;
                 D1:= A*NX  + B*NY  + C*NZ;
                 D:= D0-D1;

                 M[1,1]:= D + A*NX;
                 M[1,2]:= A*NY;
                 M[1,3]:= A*NZ;
                 M[1,4]:= -A*D0;

                 M[2,1]:= B*NX;
                 M[2,2]:= D + B*NY;
                 M[2,3]:= B*NZ;
                 M[2,4]:= -B*D0;

                 M[3,1]:=  C*NX;
                 M[3,2]:=  C*NY;
                 M[3,3]:=  D + C*NZ;
                 M[3,4]:=  -C*D0;

                 M[4,1]:=  NX;
                 M[4,2]:=  NY;
                 M[4,3]:=  NZ;
                 M[4,4]:=  -D1;



                 for I:=1 to 4 do
                     begin
                          for J:=1 to NV do
                              begin
                                   PLH[I,J]:=0;
                                   for K:=1 to 4 do
                                       PLH[I,J]:= PLH[I,J]+ M[I,K]*OB[K,J];
                              end;
                     end;


{coordenadas cartesianas}

                for J:= 1 to NV do
                    begin
                         for I:= 1 to 4 do
                             begin
                                  PLC[I,J]:= PLH[I,J]/PLH[4,J];
                             end;
                         end;


{Coordenadas do Plano pegamos PLC indice PLC[1,...] e PLC[2,...]}


                for I:= 1 to NV do
                    begin
                         PLP[1,I]:=  PLC[1,I];
                         PLP[2,I]:=  PLC[2,I];
                    end;


{achando xmin, xmax, ymin,ymax }


                 XMAX:= PLP[1,1];
                 XMIN:= PLP[1,1];
                 YMAX:= PLP[1,1];
                 YMIN:= PLP[1,1];


                 for J:=1 to NV do
                     begin
                          if PLP[1,J] > XMAX then XMAX:= PLP[1,J];
                          if PLP[1,J] < XMIN then XMIN:= PLP[1,J];
                          if PLP[2,J] > YMAX then YMAX:= PLP[2,J];
                          if PLP[2,J] < YMIN then YMIN:= PLP[2,J];
                     end;

                 XMAX:= XMAX + 0.2 * ABS(XMAX-XMIN);
                 XMIN:= XMIN - 0.2 * ABS(XMAX-XMIN);
                 YMAX:= YMAX + 0.2 * ABS(YMAX-YMIN);
                 YMIN:= YMIN - 0.2 * ABS(YMAX-YMIN);

                 UMAX:= 640;
                 UMIN:= 0;
                 VMAX:= 480;
                 VMIN:= 0;


                 SX:=(UMAX-UMIN)/(XMAX-XMIN);   SY:= (VMAX-VMIN)/(YMAX-YMIN);


{Reflexão - translação - mudanca de escala}

                AUX :=  YMAX;
                YMAX:= -YMIN;
                YMIN:= -AUX;


                for J:=1 to NV do
                    begin
                         PLS[1,J]:= round(  PLP[1,J]*SX -SX*XMIN);
                         PLS[2,J]:= round( -PLP[2,J]*SY -SY*YMIN);
                    end;


                 DG:=vga;
                 MG:=vgahi;
                 InitGraph(DG,MG,'');
                 if GraphResult <> grOk then
                    begin
     	              Writeln('Graph Driver ',DG,'Graph Mode ',MG,' not supported');
     	              Halt(1);
                    end;


                 for K:= 1 to NS do
                     begin
                          VI:=VERT[K,1];
                          moveto(PLS[1,VI],PLS[2,VI]);
                          for I:= 1 to NVS[K] do
                               begin
                                    R := VERT[K,I];
                                    lineto( PLS[1,R], PLS[2,R]);

                               end;
                          end;

   writeln('Final WireFrame .................');
   readkey;
   closeGraph;

   {linhas esondidas}

    clrscr;


    DG:=vga;
        MG:=vgahi;
        InitGraph(DG,MG,'');
        if GraphResult <> grOk then
    	   begin
     	       Writeln('Graph Driver ',DG,'Graph Mode ',MG,' not supported');
     	       Halt(1);
    	   end;




    for I:= 1  to NS do
        begin

                       LSX[I]:= A - OB[1,VERT[I,1]];
                       LSY[I]:= B - OB[2,VERT[I,1]];
                       LSZ[I]:= C - OB[3,VERT[I,1]];


                       UX:= OB[1,VERT[I,2]] - OB[1,VERT[I,1]];
                       UY:= OB[2,VERT[I,2]] - OB[2,VERT[I,1]];
                       UZ:= OB[3,VERT[I,2]] - OB[3,VERT[I,1]];


                       VX:= OB[1,VERT[I,3]] - OB[1,VERT[I,1]];
                       VY:= OB[2,VERT[I,3]] - OB[2,VERT[I,1]];
                       VZ:= OB[3,VERT[I,3]] - OB[3,VERT[I,1]];


                       VNS[1,I] :=   UY*VZ - UZ*VY;
                       VNS[2,I] := -(UX*VZ - UZ*VX);
                       VNS[3,I] :=   UX*VY - UY*VX;


                       VBS[I]   := VNS[1,I]*LSX[I] + VNS[2,I]*LSY[I] + VNS[3,I]*LSZ[I];

        end;

       for K:= 1 to NS do
         begin

             VI:=VERT[K,1];
             moveto(PLS[1,VI],PLS[2,VI]);
             IF VBS[K] >0 then begin
                                     for I:= 1 to NVS[K] do
                                           begin

                                              R := VERT[K,I]; Writeln('R -----=   ',R);
                                              lineto( PLS[1,R], PLS[2,R]); writeln;
                                              readkey;
                                            end;
                               end;
          end;





    Write  ('Deseja sair digite 0 ....  ');

    readln (saida);
    {closeGraph; }

 until  saida = 0;    closeGraph;
end.
