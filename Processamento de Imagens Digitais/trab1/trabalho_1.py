# -*- coding: utf-8 -*-
"""
Created on Fri Jul 14 14:41:45 2017

@author: thiagos
"""
import random 
import numpy as np
import cv2

bgr = np.zeros((4,3), dtype=np.uint8)

  
for i in range(0,3):
    b = random.randint(0,255)
    g = random.randint(0,255)
    r = random.randint(0,255)
    bgr[i] = [b, g, r]



ll = 10
cc = 10 

imagem = np.arange(ll*cc)
imagem = np.zeros((1,ll*cc,3), dtype=np.uint8)

    

matriz = np.zeros((ll,cc, 3), dtype=np.uint8)

matriz[0,:,0] = np.linspace(bgr[0,0], bgr[1,0],cc)
matriz[0,:,1] = np.linspace(bgr[0,1], bgr[1,1],cc)
matriz[0,:,2] = np.linspace(bgr[0,2], bgr[1,2],cc)

matriz[:,cc-1,0] = np.linspace(bgr[1,0], bgr[2,0],ll)
matriz[:,cc-1,1] = np.linspace(bgr[1,1], bgr[2,1],ll)
matriz[:,cc-1,2] = np.linspace(bgr[1,2], bgr[2,2],ll)

matriz[ll-1,:,0] = np.linspace(bgr[3,0], bgr[2,0],cc)
matriz[ll-1,:,1] = np.linspace(bgr[3,1], bgr[2,1],cc)
matriz[ll-1,:,2] = np.linspace(bgr[3,2], bgr[2,2],cc)

matriz[:,0,0] = np.linspace(bgr[0,0], bgr[3,0],ll)
matriz[:,0,1] = np.linspace(bgr[0,1], bgr[3,1],ll)
matriz[:,0,2] = np.linspace(bgr[0,2], bgr[3,2],ll)


for i in range (1,ll-1):
    matriz[i,:,0] = np.linspace(matriz[i,0,0], matriz[i,cc-1,0],cc)    
    matriz[i,:,1] = np.linspace(matriz[i,0,1], matriz[i,cc-1,1],cc)
    matriz[i,:,2] = np.linspace(matriz[i,0,2], matriz[i,cc-1,2],cc)
    
matriz = np.repeat(matriz, 50, axis=0)
matriz = np.repeat(matriz, 50, axis=1)

cv2.imwrite('trabalho_1.jpg', matriz)
cv2.imshow("image_out", matriz)
cv2.waitKey()