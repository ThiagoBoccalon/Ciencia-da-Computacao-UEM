# -*- coding: utf-8 -*-
import numpy as np

__author__ = 'gabss'


def recebePontoDeVista(): # calcula ponto de vista C=(a,b,c)
    pontodevista = []
    entrada = int(input('digite a distância em x'))
    pontodevista.append(entrada)
    entrada = int(input('digite a distância em y'))
    pontodevista.append(entrada)
    entrada = int(input('digite a distância em z'))
    pontodevista.append(entrada)
    return pontodevista

def recebePonto(): # calcula P1,P2,3
    P = []
    entrada = int(input('digite a distância em x'))
    P.append(entrada)
    entrada = int(input('digite a distância em y'))
    P.append(entrada)
    entrada = int(input('digite a distância em z'))
    P.append(entrada)
    return P

def recebeNV():
    NV = int(input('digite o numero de vertices do objeto'))
    return NV

def recebeCoordenadas(NV): #lista de contendo NV tuplas
    lista_de_coordenadas = []
    for x in range(0, NV):
        lista = []
        entrada= int(input('digite a coordenada x'))
        lista.append(entrada)
        entrada = int(input('digite a coordenada y'))
        lista.append(entrada)
        entrada = int(input('digite a coordenada z'))
        lista.append(entrada)
        tuplasf = tuple(lista)
        print(tuplasf)
        lista_de_coordenadas.append(tuplasf)
    return lista_de_coordenadas

def recebeNumeroDeSuperficies():
    superficies = int(input('digite o numero de superficies'))
    return superficies

def encontraVetornormal(P1P2, P2P3):
    prodvetorial = np.cross(P1P2, P2P3)
    return prodvetorial

def encontraVetor(P1, P2):
    Vetor = []
    print('ponto1',P1)
    print('ponto2',P2)
    for x in range (0, 3):
        Vetor.append(P2[x] - P1[x])
    print('vetor',Vetor)
    return Vetor

def calculad0_d1(P1, prodvetorial):
    d0 = P1[0]*prodvetorial[0] + P1[1]*prodvetorial[1] + P1[2]*prodvetorial[2]
    return d0

def criaMatrizPerspectiva(d, d0, prodvetorial, pontodevista):
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

def multiplicaMatrizPerspectivaPonto(Mper, P1):
    MP1 = [
        [P1[0]],
        [P1[1]],
        [P1[2]],
        [1],
    ]
    Plinha = np.dot(Mper, MP1)
    print('Homogenea', Plinha)
    return Plinha
def transformaCartesiana(Plinha):
    Plinha[0][0] = Plinha[0][0]/Plinha[3][0]
    Plinha[1][0] = Plinha[1][0]/Plinha[3][0]
    Plinha[2][0] = Plinha[2][0]/Plinha[3][0]
    Plinha[3][0] = Plinha[3][0]/Plinha[3][0]
    #print('plinhah', Plinha)
    PlinhaCartesiana = Plinha
    print('Coordenadas Cartesianas', PlinhaCartesiana)
    return PlinhaCartesiana
def transformaPlano(PlinhaCartesiana):
    PlinhaPlano = [[PlinhaCartesiana[0][0]],
                    [PlinhaCartesiana[1][0]],
                    ]
    print('Coordenadas do Plano', PlinhaPlano)
    return PlinhaPlano
pontodevista = recebePontoDeVista()
P1 = recebePonto()
P2 = recebePonto()
P3 = recebePonto()
NV = recebeNV()
superficies = recebeNumeroDeSuperficies()
lista_de_coordenadas = recebeCoordenadas(NV)
Vetor_1 = encontraVetor(P1, P2) # P2-P1
Vetor_2 = encontraVetor(P3, P2) #P2-P3
prodvetorial = encontraVetornormal(Vetor_1, Vetor_2)
d0 = calculad0_d1(P1, prodvetorial)
d1 = calculad0_d1(pontodevista, prodvetorial)
d = d0 - d1
Mper = criaMatrizPerspectiva(d, d0, prodvetorial, pontodevista)
Plinha = multiplicaMatrizPerspectivaPonto(Mper, P1)
PlinhaCartesiana = transformaCartesiana(Plinha)
PlinhaPlano = transformaPlano(PlinhaCartesiana)
print('Ponto de Vista C =', pontodevista)
print('Ponto P1 =', P1)
print('Ponto P2 =', P2)
print('Ponto P3 =', P3)
print('Numero de Vertices =', NV)
print('Lista de com tuplas de coordenadas =', lista_de_coordenadas)
print('Vetor', Vetor_1, Vetor_2, prodvetorial)