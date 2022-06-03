## Trabalhos da Disciplina de Algoritmos em Grafos


#### Solu��o do Problema: Estradas Escuras - URI 1152

O problema escolhido para se resolver foi o das �Estradas Escuras � URI 1152�, consiste em otimizar o gasto de energia atrav�s do desligamento de algumas rodovias que ligam as cidades, entretanto deve haver um caminho seguro que liguem as �n� cidades. Ao final deve se dizer qual foi o valor que pode ser economizado.

#### Algoritmo Utilizado Para a Solu��o

Para se resolver este problema a t�cnica utilizada � encontrar uma �rvore Geradora M�nima (MST), ao qual � poss�vel encontrar o menor caminho poss�vel em um grafo saindo de um v�rtice k qualquer e acessar a qualquer outro v�rtice do grafo.

#### Algoritmos Dijkstra, Bellman Ford e Floyd Warshall - Python

Esses algoritmos foram desenvolvidos na linguagem Python. Para compilar � necess�rio a IDLE Python 2.7.10. O grafo utilizado como teste est� dentro da pasta do projeto e deve ser colocado no diret�rio c:/.