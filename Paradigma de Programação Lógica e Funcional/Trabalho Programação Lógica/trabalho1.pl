%Aluno: Thiago Rodrigo Bucalao
%RA: 68962

minimo(arad, 366).
minimo(bucharest, 0).
minimo(craiova, 160).
minimo(dobreta, 242).
minimo(eforie, 161).
minimo(fagaras, 178).
minimo(giurgiu, 77).
minimo(hirsova, 151).
minimo(iasi, 226).
minimo(lugoj, 244).
minimo(mehadia, 241).
minimo(neamt, 234).
minimo(oradea, 380).
minimo(pitesti, 98).
minimo(vilcea, 193).
minimo(sibiu, 253).
minimo(timisoara, 329).
minimo(urziceni, 80).
minimo(vaslui, 199).
minimo(zerind, 374).


cidadesvizinhas(zerind, [arad, oradea]).
cidadesvizinhas(oradea, [zerind, sibiu]).
cidadesvizinhas(timisoara, [arad, lugoj]).
cidadesvizinhas(lugoj, [timisoara, mehadia]).
cidadesvizinhas(mehadia, [dobreta, lugoj]).
cidadesvizinhas(dobreta, [mehadia, craiova]).
cidadesvizinhas(craiova, [vilcea, pitesti]).
cidadesvizinhas(vilcea, [sibiu, pitesti, craiova]).
cidadesvizinhas(pitesti, [bucharest, vilcea, craiova]).
cidadesvizinhas(sibiu, [arad, oradea, vilcea, fagaras]).
cidadesvizinhas(fagaras, [bucharest, sibiu]).
cidadesvizinhas(bucharest, [pitesti, fagaras, giurgiu, urziceni]).
cidadesvizinhas(giurgiu, [bucharest]).
cidadesvizinhas(urziceni, [bucharest, hirsova, vaslui]).
cidadesvizinhas(hirsova, [eforie, urziceni]).
cidadesvizinhas(eforie, [hirsova]).
cidadesvizinhas(vaslui, [urziceni, iasi]).
cidadesvizinhas(iasi, [vaslui, neamt]).
cidadesvizinhas(neamt, [iasi]).
cidadesvizinhas(arad, [sibiu, timisoara, zerind]).


listadistancia([],[]).

listadistancia([X|Xs],[Y|Ys]):-         % X = Nome da Cidade & Y = Distancia dessa cidade at� Bucharest
	minimo(X,Y),
	listadistancia(Xs,Ys).

melhorvizinho(CidadeAtual, ProximaCidade) :-
	cidadesvizinhas(CidadeAtual, ListaVizinhos),
	listadistancia(ListaVizinhos, ListaDeDistancias),
	min_list(ListaDeDistancias, MelhorDistancia),
	minimo(ProximaCidade, MelhorDistancia).


continuacao(s).
continuacao(n).
continuacao(sim).
continuacao(nao).

pesquisa(bucharest):-
	write('O Destino j� foi alcan�ado. Inicie uma nova Pesquisa'),
	!.


pesquisa(CidadeAtual):-
	write('Esta em: '),
	write(CidadeAtual),
	write('\n'),
	melhorvizinho(CidadeAtual, ProximaCidade2),
	write('Vai para: '),
	write(ProximaCidade2),
	write('\n'),
	write('Continuar? (s/sim | n/nao)  '),

	read(Condicao),
	continuacao(Condicao),
	write('\n'),

	pesquisa(ProximaCidade2).











































