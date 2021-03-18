<?php

class Vertice {
 	public $numero;
 	public $nome;
 	public $cor;
	public $predecessor;
 	public $descoberta;
 	public $termino;
	
	function getNumero()					{ return $this->numero;					}
	function setNumero($numero)				{ $this->numero = $numero;				}
	
	function getNome()						{ return $this->nome;					}
	function setNome($nome)					{ $this->nome = $nome;					}
		
	function getCor()						{ return $this->cor;				}
	function setCor($cor)					{ $this->cor = $cor;				}

	function getPredecessor()				{ return $this->predecessor;			}
	function setPredecessor($predecessor)	{ $this->predecessor = $predecessor;	}
	
	function getDescoberta()				{ return $this->descoberta;			}
	function setDescoberta($descoberta)		{ $this->descoberta = $descoberta;		}
		
	function getTermino()					{ return $this->termino;				}
	function setTermino($termino)			{ $this->termino = $termino;			}
}

function exibirMatriz($matriz){
	foreach($matriz as $linha){
		foreach($linha as $coluna){
			print($coluna);
		}
		print('<br>');
	}
}

function dfs($matriz){
	
	global $vertice;
		
	foreach($matriz as $linha => $arrayColuna){
		$vertice[$linha+1]->setCor('branco');
		$vertice[$linha+1]->setPredecessor(NULL);
	}
	$tempo   = 0;
	foreach($matriz as $linha => $arrayColuna){
		if($vertice[$linha+1]->getCor() == "branco"){
			dfs_visit($vertice[$linha+1]);	
		}
	}
}

function dfs_visit($verticeU){
	global $vertice, $tempo, $matriz;
	$tempo++;
	$verticeU->setCor('cinza');
	$verticeU->setDescoberta($tempo);
	
	$i = $verticeU->getNumero() - 1;
	foreach($matriz[$i] as $coluna => $campoMatriz){
		if($campoMatriz==1){
			if($vertice[$coluna+1]->getCor()=='branco'){
				$vertice[$coluna+1]->setPredecessor( $verticeU->getNome() );
				dfs_visit($vertice[$coluna+1]);
			}
		}
	}
	$verticeU->setCor('preto');
	$tempo++;
	$verticeU->setTermino($tempo);

}	

	//faz a leitura do arquivo e joga em um array
	$arquivo = file('grafo.tgf');

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
	dfs($matriz);



	//exibindo as informações na tela
	foreach($vertice as $verticeUnid){
		//echo 'Numero: '.$verticeUnid->getNumero().'<br />';
		echo 'Vertice: '.$verticeUnid->getNome().'<br />';
		echo 'Tempo de Descoberta: '.$verticeUnid->getDescoberta().'<br />';
		echo 'Tempo de Termino: '.$verticeUnid->getTermino().'<br />';
		echo 'Predecessor: '.$verticeUnid->getPredecessor().'<br />';
		echo 'Cor: '.$verticeUnid->getCor().'<br /><br />';
	}

	//exibirMatriz($matriz);
?>