import numpy as np
import cv2



img = cv2.imread('catedral.JPG')
cv2.imshow('in', img)
img_hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
H, S, V = cv2.split(img_hsv)

limiar, th = cv2.threshold(V,0,255,cv2.THRESH_BINARY + cv2.THRESH_OTSU)
histograma, bins = np.histogram(V, 256, [0, 256])
histograma_acumulado = histograma.cumsum()
limiar = int(limiar)

LUT = np.arange(256, dtype=np.uint8)
histograma_acumulado2 = histograma_acumulado[:limiar]
value = (histograma_acumulado2[:] *  (limiar - 1)) / histograma_acumulado2[-1]
LUT[:limiar] = value
V = LUT[V]

img = cv2.merge((H,S,V))
img_out = cv2.cvtColor(img, cv2.COLOR_HSV2BGR)

cv2.imwrite('catedral_out.JPG',img_out)
cv2.imshow('out', img_out)


cv2.waitKey(0)
cv2.destroyAllWindows()