import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class Knight {

    public static String[][] grafoCavalo = {{"a1", "b3" ,"c2"},
                                            {"a2", "b4", "c3", "c1"},
                                            {"a3", "b5", "c4", "c2", "b1"},
                                            {"a4", "b6", "c5", "c3", "b2"},
                                            {"a5", "b7", "c6", "c4", "b3"},
                                            {"a6", "b8", "c7", "c5", "b4"},
                                            {"a7", "c6", "b5", "c8"},
                                            {"a8", "c7", "b6"},
                                            {"b1", "a3", "c3", "d2"},
                                            {"b2", "a4", "c4", "d3", "d1"},
                                            {"b3", "a5", "c5", "d4", "d2", "c1", "a1"},
                                            {"b4", "a6", "c6", "d5", "d3", "c2", "a2"},
                                            {"b5", "a7", "c7", "d6", "d4", "c3", "a3"},
                                            {"b6", "a8", "c8", "d7", "d5", "c4", "a4"},
                                            {"b7", "d8", "d6", "c5", "a5"},
                                            {"b8", "d7", "c6", "a6"},
                                            {"c1", "a2", "b3", "d3", "e2"},
                                            {"c2", "a1", "a3", "b4", "d4", "e3", "e1"},
                                            {"c3", "a2", "a4", "b5", "d5", "e4", "e2", "d1", "b1"},
                                            {"c4", "a3", "a5", "b6", "d6", "e5", "e3", "d2", "b2"},
                                            {"c5", "a4", "a6", "b7", "d7", "e6", "e4", "d3", "b3"},
                                            {"c6", "a5", "a7", "b8", "d8", "e7", "e5", "d4", "b4"},
                                            {"c7", "a6", "a8", "e8", "e6", "d5", "b5"},
                                            {"c8", "a7", "e7", "d6", "b6"},
                                            {"d1", "b2", "c3", "e3", "f2"},
                                            {"d2", "b1", "b3", "c4", "e4", "f3", "f1"},
                                            {"d3", "b2", "b4", "c5", "e5", "f4", "f2", "e1", "c1"},
                                            {"d4", "b3", "b5", "c6", "e6", "f5", "f3", "e2", "c2"},
                                            {"d5", "b4", "b6", "c7", "e7", "f6", "f4", "e3", "c3"},
                                            {"d6", "b5", "b7", "c8", "e8", "f7", "f5", "e4", "c4"},
                                            {"d7", "b6", "b8", "f8", "f6", "e5", "c5"},
                                            {"d8", "b7", "f7", "e6", "c6"},
                                            {"e1", "c2", "d3", "f3", "g2"},
                                            {"e2", "c1", "c3", "d4", "f4", "g3", "g1"},
                                            {"e3", "c2", "c4", "d5", "f5", "g4", "g2", "f1", "d1"},
                                            {"e4", "c3", "c5", "d6", "f6", "g5", "g3", "f2", "d2"},
                                            {"e5", "c4", "c6", "d7", "f7", "g6", "g4", "f3", "d3"},
                                            {"e6", "c5", "c7", "d8", "f8", "g7", "g5", "f4", "d4"},
                                            {"e7", "c6", "c8", "g8", "g6", "f5", "d5"},
                                            {"e8", "c7", "g7", "f6", "d6"},
                                            {"f1", "d2", "e3", "g3", "h2"},
                                            {"f2", "d1", "d3", "e4", "g4", "h3", "h1"},
                                            {"f3", "d2", "d4", "e5", "g5", "h4", "h2", "g1", "e1"},
                                            {"f4", "d3", "d5", "e6", "g6", "h5", "h3", "g2", "e2"},
                                            {"f5", "d4", "d6", "e7", "g7", "h6", "h4", "g3", "e3"},
                                            {"f6", "d5", "d7", "e8", "g8", "h7", "h5", "g4", "e4"},
                                            {"f7", "d6", "d8", "h8", "h6", "g5", "e5"},
                                            {"f8", "d7", "h7", "g6", "e6"},
                                            {"g1", "e2", "f3", "h3"},
                                            {"g2", "e1", "e3", "f4", "h4"},
                                            {"g3", "e2", "e4", "f5", "h5", "h1", "f1"},
                                            {"g4", "e3", "e5", "f6", "h6", "h2", "f2"},
                                            {"g5", "e4", "e6", "f7", "h7", "h3", "f3"},
                                            {"g6", "e5", "e7", "f8", "h8", "h4", "f4"},
                                            {"g7", "e6", "e8", "h5", "f5"},
                                            {"g8", "e7", "h6", "f6"},
                                            {"h1", "f2", "g3"},
                                            {"h2", "f1", "f3", "g4"},
                                            {"h3", "f2", "f4", "g5", "g1"},
                                            {"h4", "f3", "f5", "g6", "g2"},
                                            {"h5", "f4", "f6", "g7", "g3"},
                                            {"h6", "f5", "f7", "g8", "g4"},
                                            {"h7", "f6", "f8", "g5"},
                                            {"h8", "f7", "g6"}};

    
    
    public static Grafo buildGrafo() {        
        Grafo grafo = new Grafo();
        Map<String, Vertice> vertices = new HashMap<String, Vertice>();
        int count = 0;
        String linha;
        String[] linhaDividida;
        Vertice vertice = null;
        Vertice verticeOrigem = null;
        Vertice verticeDestino = null;
        Aresta aresta = null;
        int i;
        
        for (String[] novosVertices : grafoCavalo){
            vertice = new Vertice(novosVertices[0]);
            vertices.put(novosVertices[0], vertice);
        }
        
        for (String[] novosVertices : grafoCavalo){
            verticeOrigem = vertices.get(novosVertices[0]);
            for (i = 1; i < novosVertices.length; i++){
                verticeDestino = vertices.get(novosVertices[i]);
                aresta = new Aresta(verticeOrigem, verticeDestino);
                verticeOrigem.getAdjacentes().add(aresta);
            }
        }
        
        grafo.setVertices(vertices);

        return grafo;
    }

    private static List<Coordenada> LerCoordenadas() {

        List<Coordenada> coordenadas = new LinkedList<Coordenada>();
        Scanner ler = new Scanner(System.in);
        String linha = null;
        String[] linhaDividida;

        try {
            while (!(linha = ler.nextLine()).isEmpty()) {
                linhaDividida = linha.split(" ");
                Coordenada coordenada = new Coordenada(linhaDividida[0], linhaDividida[1]);
                coordenadas.add(coordenada);
            }
        } catch (Exception e) {
        }

        return coordenadas;
    }

    public static void main(String[] args) {
        try {
            //A construção do grafo do cavaleiro viajante, é necessário o arquivo GrafoXadrezCavalo.txt
            //que se encontra na pasta raiz do programa.
            Grafo grafo = buildGrafo();
            Vertice origem = null;
            Vertice destino = null;
            int contador = -1;
            List<Coordenada> coordenadas = LerCoordenadas();
            for (Coordenada coordenada : coordenadas) {
                origem = grafo.getVertices().get(coordenada.getCoordInicial());
                destino = grafo.getVertices().get(coordenada.getCoordFinal());
                if (origem == null || destino == null) {
                    if (origem == null) {
                        System.out.println("Coordenada " + coordenada.getCoordInicial() + " nao existe");
                    } else {
                        System.out.println("Coordenada " + coordenada.getCoordFinal() + " nao existe");
                    }
                    continue;
                }
                AlgoritimosGrafos.dijkstra(grafo, origem);
                contador = -1;
                while (destino != null) {
                    contador++;
                    destino = destino.getPai();
                }
                System.out.println("To get from " + coordenada.getCoordInicial() + " to " + coordenada.getCoordFinal() + " takes " + contador + " knight moves.");
            }
        } catch (Exception e) {
            System.out.println("Erro :");
            e.printStackTrace();
            System.out.println("Nao foi possivel gerar o caminho minimo do passeio do cavalo!");
        }

    }

// **************************************************************************************************************
    private static class AlgoritimosGrafos {

        private static void initializeSingleSource(Grafo grafo, Vertice vertice) {
            for (String key : grafo.getVertices().keySet()) {
                grafo.getVertices().get(key).setPai(null);
                grafo.getVertices().get(key).setDistancia(Integer.MAX_VALUE);
            }
            vertice.setDistancia(0);
        }

        private static void relax(Vertice v, Vertice u, int distancia) {
            if (u.getDistancia() > v.getDistancia() + distancia) {
                u.setDistancia(v.getDistancia() + distancia);
                u.setPai(v);
            }
        }

        public static void dijkstra(Grafo grafo, Vertice origem) throws Error {
            Vertice vertice;
            initializeSingleSource(grafo, origem);
            HeapBinario heap = new HeapBinario(grafo.getVertices());
            while (heap.size() > 0) {
                vertice = heap.extrairMin();
                for (Aresta adjacente : vertice.getAdjacentes()) {
                    relax(vertice, adjacente.getDestino(), 1);
                    heap.buildHeapMin();
                }
            }
        }

    }

// **************************************************************************************************************
    private static class HeapBinario {

        private static final int capacidade = 100000;

        private Vertice lista[];
        private int size;

        public HeapBinario(Map<String, Vertice> verices) {
            lista = new Vertice[capacidade];
            size = 0;
            for (String key : verices.keySet()) {
                lista[size++] = verices.get(key);
            }
            buildHeapMin();
        }

        public Vertice[] getLista() {
            return lista;
        }

        public void buildHeapMin() {
            for (int i = (size / 2) - 1; i >= 0; i--) {
                minHaepify(i);
            }
        }

        public int size() {
            return size;
        }

        private void minHaepify(int i) {
            Vertice aux;
            int minimo = i;
            int esquerda = (2 * i) + 1;
            int direita = (2 * i) + 2;
            if (direita < size && lista[direita].getDistancia() < lista[minimo].getDistancia()) {
                minimo = direita;
            }
            if (esquerda < size && lista[esquerda].getDistancia() < lista[minimo].getDistancia()) {
                minimo = esquerda;
            }
            if (minimo != i) {
                aux = lista[i];
                lista[i] = lista[minimo];
                lista[minimo] = aux;
                minHaepify(minimo);
            }
        }

        public Vertice extrairMin() {
            Vertice min = lista[0];
            lista[0] = lista[size - 1];
            minHaepify(0);
            size--;
            return min;
        }

        public boolean contains(Vertice v) {
            for (int i = 0; i < size; i++) {
                if (lista[i].getRotulo().equals(v.getRotulo())) {
                    return true;
                }
            }
            return false;
        }

        public boolean vazio() {
            return (size == 0);
        }
    }
// **************************************************************************************************************

    private static class Aresta {

        private Vertice origem;
        private Vertice destino;

        public Aresta(Vertice origem, Vertice destino) {
            this.origem = origem;
            this.destino = destino;
        }

        public Vertice getOrigem() {
            return origem;
        }

        public void setOrigem(Vertice origem) {
            this.origem = origem;
        }

        public Vertice getDestino() {
            return destino;
        }

        public void setDestino(Vertice destino) {
            this.destino = destino;
        }

        @Override
        public String toString() {
            return origem + " " + destino;
        }

    }

// **************************************************************************************************************
    private static class Coordenada {

        private String CoordInicial;
        private String CoordFinal;

        public Coordenada(String CoordInicial, String CoordFinal) {
            this.CoordInicial = CoordInicial;
            this.CoordFinal = CoordFinal;
        }

        public String getCoordInicial() {
            return CoordInicial;
        }

        public void setCoordInicial(String CoordInicial) {
            this.CoordInicial = CoordInicial;
        }

        public String getCoordFinal() {
            return CoordFinal;
        }

        public void setCoordFinal(String CoordFinal) {
            this.CoordFinal = CoordFinal;
        }

        @Override
        public String toString() {
            return CoordInicial + " " + CoordFinal;
        }
    }

// **************************************************************************************************************
    private static enum Cor {

        BRANCO,
        CINZA,
        PRETO;
    }
// **************************************************************************************************************

    private static class Grafo {

        private Map<String, Vertice> vertices;

        public Grafo() {
            vertices = new HashMap<String, Vertice>();
        }

        public Map<String, Vertice> getVertices() {
            return vertices;
        }

        public void setVertices(Map<String, Vertice> vertices) {
            this.vertices = vertices;
        }

        public void adicionarAresta(String origem, String destino, int peso) {
            Vertice verticeOrigem = vertices.get(origem);
            Vertice verticeDestino = vertices.get(destino);
            verticeOrigem.getAdjacentes().add(new Aresta(verticeOrigem, verticeDestino));
        }

        @Override
        public String toString() {
            String retorno = "";

            for (String key : vertices.keySet()) {
                retorno += vertices.get(key) + " -> ";
                for (Aresta aresta : vertices.get(key).getAdjacentes()) {
                    retorno += aresta.getDestino() + " ";
                }
                retorno += ".\n";
            }

            return retorno;
        }

    }

// **************************************************************************************************************
    private static class Vertice implements Comparable<Vertice> {

        private Vertice pai;
        private Cor cor;
        private int distancia;
        private int distancia2;
        private int peso;
        private String rotulo;
        private List<Aresta> adjacentes;

        public Vertice(String rotulo) {
            this.rotulo = rotulo;
            this.adjacentes = new ArrayList<Aresta>();
        }

        public Vertice getPai() {
            return pai;
        }

        public void setPai(Vertice pai) {
            this.pai = pai;
        }

        public Cor getCor() {
            return cor;
        }

        public void setCor(Cor cor) {
            this.cor = cor;
        }

        public int getPeso() {
            return peso;
        }

        public void setPeso(int peso) {
            this.peso = peso;
        }

        public String getRotulo() {
            return rotulo;
        }

        public void setRotulo(String rotulo) {
            this.rotulo = rotulo;
        }

        public int getDistancia() {
            return distancia;
        }

        public void setDistancia(int distancia) {
            this.distancia = distancia;
        }

        public List<Aresta> getAdjacentes() {
            return adjacentes;
        }

        public void setAdjacentes(List<Aresta> adjacentes) {
            this.adjacentes = adjacentes;
        }

        public int getDistancia2() {
            return distancia2;
        }

        public void setDistancia2(int distancia2) {
            this.distancia2 = distancia2;
        }

        public String imprimeBFS(Vertice s, Vertice a) {
            return s.getRotulo() + " " + a.getRotulo() + " " + a.getDistancia();
        }

        @Override
        public String toString() {
            return rotulo;
        }

        @Override
        public int compareTo(Vertice vertice) {
            if (this.distancia2 > vertice.distancia2) {
                return -1;
            } else {
                return 1;
            }
        }

    }

}
