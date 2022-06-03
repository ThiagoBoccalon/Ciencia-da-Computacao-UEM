import sys
sys.path.append("Structures/")
sys.path.append("Algorithms/")
from sys import argv
from bf import Bf
from fw import Fw
from dk import Dk
from graph import Graph

def main():
    G = Graph() 
    
    print('1 - BF')
    print('2 - DK')
    print('3 - FW')
    num = input('Escolha o algoritmo:')   

        
    if num == 1:
        G.buildGraph('c:/bf.tgf')
        s = G.getInitVertex()
        bf = Bf()
        bf.execute(G, s)  
    
    
    elif num == 2:
        G.buildGraph('c:/dk.tgf')
        s = G.getInitVertex()
        dk = Dk()
        dk.execute(G, s)
    
        
    elif num == 3:
        G.buildGraph('c:/fw.tgf')
        W = G.getAdjMatrix()
        fw = Fw()
        fw.execute(G, W)

if __name__ == "__main__":
    main()
