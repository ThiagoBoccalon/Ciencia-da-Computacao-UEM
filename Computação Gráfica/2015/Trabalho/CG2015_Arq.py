# -*- coding: utf-8 -*-
import numpy as np

__author__ = 'gabss'


def recebePontoDeVista(): # recebe ponto de vista C=(a,b,c)
    arquivo = open('pontodevista.txt', 'r')
    pontodevista = [int(x) for x in arquivo.readline().split()]
    return pontodevista

def recebePonto(): # recebe P1,P2,P3
    arquivo = open('pontos.txt', 'r')
    P1 = [int(x) for x in arquivo.readline().split()]
    P2 = [int(x) for x in arquivo.readline().split()]
    P3 = [int(x) for x in arquivo.readline().split()]
    return P1, P2, P3

def recebeObjeto(): # Recebe numero de vertices
    lista_de_coordenadas = []
    arquivo = open('objeto.txt', 'r')
    NV = int(arquivo.readline())
    for x in range(0, NV):
        lista = []
        lista = [int(x) for x in arquivo.readline().split()]
        lista = tuple(lista)
        lista_de_coordenadas.append(lista)
    NS = int(arquivo.readline())
    print(NV,'\n', lista_de_coordenadas,'\n', NS)
    return NV, lista_de_coordenadas, NS

def encontraVetornormal(P1P2, P2P3): # faz produto vetorial entre 2 vetores
    prodvetorial = np.cross(P1P2, P2P3)
    return prodvetorial

def encontraVetor(P1, P2): # encontra um vetor "P2 - P1"
    Vetor = []
    print('ponto1',P1)
    print('ponto2',P2)
    for x in range (0, 3):
        Vetor.append(P2[x] - P1[x])
    print('vetor',Vetor)
    return Vetor

def calculad0_d1(P1, prodvetorial): #calcula "d0 = x0.nx + y0.ny + z0.nz" e "d1 = a.nx + b.ny + c.nz"
    d0 = P1[0]*prodvetorial[0] + P1[1]*prodvetorial[1] + P1[2]*prodvetorial[2]
    return d0

def criaMatrizPerspectiva(d, d0, prodvetorial, pontodevista): # calcula matriz perspectiva
    a = pontodevista[0]
    b = pontodevista[1]
    c = pontodevista[2]
    nx = prodvetorial[0]
    ny = prodvetorial[1]
    nz = prodvetorial[2]
    Mper = [
        [(d+a*nx), a*ny, a*nz, -a*d0],
        [b*nx, (d+b*ny), b*nz, -b*d0],
        [c*nx, c*ny, d+c*nz, -c*d0],
        [nx, ny, nz, 1],
             ]
    print('Matriz Perspectiva,', Mper)
    return Mper

def multiplicaMatrizPerspectivaPonto(Mper, P1): # encontra P' = Mper.P
    MP1 = [
        [P1[0]],
        [P1[1]],
        [P1[2]],
        [1],
    ]
    Plinha = np.dot(Mper, MP1)
    print('Homogenea', Plinha)
    return Plinha

def transformaCartesiana(Plinha): # transforma P' em coordenadas cartesianas
    Plinha[0][0] = Plinha[0][0]/Plinha[3][0]
    Plinha[1][0] = Plinha[1][0]/Plinha[3][0]
    Plinha[2][0] = Plinha[2][0]/Plinha[3][0]
    Plinha[3][0] = Plinha[3][0]/Plinha[3][0]
    #print('plinhah', Plinha)
    PlinhaCartesiana = Plinha
    print('Coordenadas Cartesianas \n', PlinhaCartesiana)
    return PlinhaCartesiana

def transformaPlano(PlinhaCartesiana): # transforma coordenadas cartesianas para coordenadas do plano
    PlinhaPlano = [[PlinhaCartesiana[0][0]],
                    [PlinhaCartesiana[1][0]],
                    ]
    print('Coordenadas do Plano: \n', PlinhaPlano)
    return PlinhaPlano

pontodevista = recebePontoDeVista() # C = (a,b,c)
P1, P2, P3 = recebePonto()
NV, lista_de_coordenadas, NS = recebeObjeto()
Vetor_1 = encontraVetor(P1, P2) # Faz P2-P1 pra achar um vetor paralelo ao plano
Vetor_2 = encontraVetor(P3, P2) #Faz P2-P3 pra achar outro vetor paralelo ao plano
prodvetorial = encontraVetornormal(Vetor_1, Vetor_2) # prod. vetorial entre 2 vetores // é igual a um vetor normal ao plano
d0 = calculad0_d1(P1, prodvetorial)
d1 = calculad0_d1(pontodevista, prodvetorial)
d = d0 - d1
Mper = criaMatrizPerspectiva(d, d0, prodvetorial, pontodevista)
Plinha = multiplicaMatrizPerspectivaPonto(Mper, P1) # P' = Mper.P
PlinhaCartesiana = transformaCartesiana(Plinha)
PlinhaPlano = transformaPlano(PlinhaCartesiana)

print('Ponto de Vista C =', pontodevista)
print('Ponto P1 =', P1)
print('Ponto P2 =', P2)
print('Ponto P3 =', P3)
print('Numero de Vertices =', NV)
print('Lista de com tuplas de coordenadas =', lista_de_coordenadas)
print('Vetor', Vetor_1, Vetor_2, prodvetorial)
