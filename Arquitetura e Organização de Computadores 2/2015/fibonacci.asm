ld R0, (101) 
ld R1, (102) 
ld R2, (103) 
ld R3, (104) 
ld R4, (105) 

bl R0, R1, F2 
F1: ble R4, R0, F3
exit

F3: add R2, R3, R5 
    sub R2, R2, R2
    add R2, R3, R2
    sub R3, R3, R3
    add R3, R5, R3
    sd  R4, (108)
    sd  R5, (109)
    jump F1

F2: sd R2, (106)
    sd R2, (107)    
    exit












*/

