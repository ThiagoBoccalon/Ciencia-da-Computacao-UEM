program Jogo;

const
     MAX = 1000;

type regProdutos = record
      nome: string[20];
      quantidade: integer;
      preco: real;
    end;




var
   n, i, j: integer;
   produtos: array[1..MAX] of regProdutos;

begin
      write('Quantidade de produtos armazenados: ');
      readln(n);
      n:= n+1;
      i:= 0;

      for i:=1 to n+1 do
      begin
                  write('Nome do produto:' );
                  readln(produtos[i].nome);
                  write('Quantidade: ');
                  readln(produtos[i].quantidade);
                  write('Valor do produto ');
                  readln(produtos[i].preco);
      		   i:=i+1;
      		  // clrscr;
      end;
     // clrscr;
      write('PRODUTOS CADASTRADOS: ');
      writeln;
      writeln;
	 j:=1;	      
      while j<=n do
      begin
			write('Produto: ',j,':');
          	writeln(produtos[j].nome);
          	j:= j+1;
	 end;
	 {
      for j:=1 to n do
      begin
          	write(j);
          	write(' :');
          	writeln(produtos[j].nome);
      end;
      }
     // delay(1000);

end.
