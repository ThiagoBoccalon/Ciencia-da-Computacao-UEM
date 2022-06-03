## Trabalhos da Disciplina de Algoritmos em Grafos


#### Solução do Problema: Estradas Escuras - URI 1152

O problema escolhido para se resolver foi o das “Estradas Escuras – URI 1152”, consiste em otimizar o gasto de energia através do desligamento de algumas rodovias que ligam as cidades, entretanto deve haver um caminho seguro que liguem as “n” cidades. Ao final deve se dizer qual foi o valor que pode ser economizado.

#### Algoritmo Utilizado Para a Solução

Para se resolver este problema a técnica utilizada é encontrar uma Árvore Geradora Mínima (MST), ao qual é possível encontrar o menor caminho possível em um grafo saindo de um vértice k qualquer e acessar a qualquer outro vértice do grafo.

#### Algoritmos Dijkstra, Bellman Ford e Floyd Warshall - Python

Esses algoritmos foram desenvolvidos na linguagem Python. Para compilar é necessário a IDLE Python 2.7.10. O grafo utilizado como teste está dentro da pasta do projeto e deve ser colocado no diretório c:/.