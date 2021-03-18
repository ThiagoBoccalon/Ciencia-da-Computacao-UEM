<?php

class Vertice {
 	public $numero;
 	public $nome;
 	public $cor;
	public $predecessor;
 	public $distancia;
	
	function getNumero()					{ return $this->numero;				}
	function setNumero($numero)				{ $this->numero = $numero;			}
	
	function getNome()						{ return $this->nome;				}
	function setNome($nome)					{ $this->nome = $nome;				}
		
	function getCor()						{ return $this->cor;				}
	function setCor($cor)					{ $this->cor = $cor;				}
		
	function getPredecessor()				{ return $this->predecessor;			}
	function setPredecessor($predecessor)	{ $this->predecessor = $predecessor;	}
	
	function getDistancia()					{ return $this->distancia;			}
	function setDistancia($distancia)		{ $this->distancia = $distancia;	}
}

function exibirMatriz($matriz){
	foreach($matriz as $linha){
		foreach($linha as $coluna){
			print($coluna);
		}
		print('<br>');
	}
}


function inicializa($grafo, $verticeInicial){
	global $vertice;	
	foreach($grafo as $linha => $listaVertice){
			$vertice[$linha+1]->setCor('branco');
			$vertice[$linha+1]->setDistancia(NULL);
			$vertice[$linha+1]->setPredecessor(NULL);
	}
	$vertice[$verticeInicial]->setCor('cinza');
	$vertice[$verticeInicial]->setDistancia(0);
	$vertice[$verticeInicial]->setPredecessor(NULL);
}

function bfs($grafo, $verticeInicial){
	inicializa($grafo, $verticeInicial);
	global $vertice;	

	$filaQ = array();
	$filaQ[] = $verticeInicial;
	while(!empty($filaQ)){
		$valorPosicao = array_shift($filaQ);
		
		foreach($grafo[$valorPosicao-1] as $coluna => $campoMatriz){
			if($campoMatriz==1){
				if($vertice[$coluna+1]->getCor()=='branco'){
					$vertice[$coluna+1]->setCor('cinza');
					$vertice[$coluna+1]->setDistancia($vertice[$valorPosicao]->getDistancia()+1);
					$vertice[$coluna+1]->setPredecessor($vertice[$valorPosicao]->getNumero()); 
					$filaQ[] =  $vertice[$coluna+1]->getNumero();
				}
			}

		}
		$vertice[$valorPosicao]->setCor('preto');
	}
	
}


//faz a leitura do arquivo e joga em um array
$arquivo = file('grafo.tgf');
$posicaoInicial = $arquivo[0][0];

	//Percorre o array gerando os vertices
	$quantidadeVertices = NULL;
	foreach ($arquivo as $numeroLinha => $linha) {
		
		if($linha[0]=='#'){  
			$quantidadeVertices = $numeroLinha;     
			unset($arquivo[$numeroLinha]);
			break;
		}
		$linha = explode(' ', $linha);
		
		$numeroVertice 	= trim($linha[0]);
		$nomeVertice 	= trim($linha[1]);
		$vertice[$numeroVertice] = new Vertice;
		$vertice[$numeroVertice]->setNumero($numeroVertice);
		$vertice[$numeroVertice]->setNome($nomeVertice);
			
		unset($arquivo[$numeroLinha]);
	}
	
	//inicializa matriz
	$matriz = array();
	for($i=0; $i<$quantidadeVertices; $i++){
		for($j=0; $j<$quantidadeVertices; $j++){
			$matriz[$i][$j] = 0;
		}
	}

	//gera a matriz do grafo
	$listaVertices = array();
	foreach ($arquivo as $linha) {
		$linha = explode(' ', $linha);
		$matriz[ trim($linha[0])-1 ][ trim($linha[1])-1 ] = 1;
	}
		

// #### busca em largura #### 
bfs($matriz, $posicaoInicial);

//exibindo as informações na tela
foreach($vertice as $verticeUnid){
	//echo 'Numero: '.$verticeUnid->getNumero().'<br />';
	echo 'Vertice: '.$verticeUnid->getNome().'<br />';
	//echo 'Cor: '.$verticeUnid->getCor().'<br />';
	echo 'Predecessor: '.$verticeUnid->getPredecessor().'<br />';
	echo 'Distancia: '.$verticeUnid->getDistancia().'<br /><br />';
}


//exibirMatriz($matriz);

?>