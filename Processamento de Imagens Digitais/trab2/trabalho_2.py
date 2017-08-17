# -*- coding: utf-8 -*-
"""
Created on Thu Jul 20 16:16:34 2017

@author: thiag
"""

import numpy as np
import cv2
#from ..util import view_as_blocks
def down_sample(img,n,c):
    if(c==0):
        return img[::,::n]
    if(c==1):
        return img[::n,::]
    if(c==2):
        return img[::n,::n]
        

def up_sample(img,n,c):
    if(c==0):
        return np.repeat(img,n,axis=1)
    if(c==1):
        return np.repeat(img,n,axis=0)
    if(c==2):
        return np.repeat(np.repeat(img,n,axis=1),n,axis=0)

def chroma_cal(Cr, Cb, n, tipo):
    Cr1 = down_sample(Cr,n,tipo)
    Cr2 = up_sample(Cr1, n,tipo)
    Cb1 = down_sample(Cb,n,tipo)
    Cb2 = up_sample(Cb1,n,tipo)
    
    return Cr2, Cb2


    
img = cv2.imread('chroma_in.png',cv2.COLOR_BGR2RGB)
cv2.imshow('in', img)
imgYCC = cv2.cvtColor(img, cv2.COLOR_BGR2YCrCb)

Y,Cr,Cb = cv2.split(imgYCC)



Cr_420, Cb_420 = chroma_cal(Cr,Cb,2,0)
Cr_411, Cb_411 = chroma_cal(Cr,Cb,2,1)
Cr_422, Cb_422 = chroma_cal(Cr,Cb,2,2)


img_1 = np.dstack((Y, Cr_420))
img_2 = np.dstack((img_1,Cb_420))
img_saida_420 = cv2.cvtColor(img_2, cv2.COLOR_YCrCb2BGR)

img_1 = np.dstack((Y, Cr_411))
img_2 = np.dstack((img_1,Cb_411))
img_saida_411 = cv2.cvtColor(img_2, cv2.COLOR_YCrCb2BGR)

img_1 = np.dstack((Y, Cr_422))
img_2 = np.dstack((img_1,Cb_422))
img_saida_422 = cv2.cvtColor(img_2, cv2.COLOR_YCrCb2BGR)

cv2.imwrite('trabalho_2_Chroma420.jpg', img_saida_420)
cv2.imshow('Chroma_420', img_saida_420)

cv2.imwrite('trabalho_2_Chroma411.jpg', img_saida_411)
cv2.imshow('Chroma_411', img_saida_411)

cv2.imwrite('trabalho_2_Chroma422.jpg', img_saida_422)
cv2.imshow('Chroma_422', img_saida_422)

cv2.waitKey(0)
cv2.destroyAllWindows()
