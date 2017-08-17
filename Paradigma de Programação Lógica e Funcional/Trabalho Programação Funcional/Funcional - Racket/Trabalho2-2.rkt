#lang racket

;; Universidade Estadual de Maringá
;; Centro de Tecnologia - Departamento de Informática
;; Ciência da Computação

;; Segundo Trabalho de Paradígma de Programação Lógica e Funcional
;; Professor: Wagner Igarashi

;; Alunos:
;; Claudio Massao Uyeno
;; João Marcus Velasques Faria
;; Thiago Bucalão


(define (posicao coluna linha)
  (list coluna linha))

(define (coluna pos)
  (first pos))

(define (linha pos)
  (first (rest pos)))

(define numerais '(1 2 3 4 5 6 7 8 9))

(define (conf-linha pos)
  (map (λ (x) 
         (posicao x (linha pos))) 
       numerais))

(define (conf-coluna pos)
  (map (λ (x)
         (posicao (coluna pos) x))
       numerais))

(define (adiciona-caixa x)
  (cond
    [(< x 4) 0]
    [else
     (cond
       [(< x 7) 3]
       [else 6])]))

(define caixas
  '((1 1) (1 2) (1 3)
    (2 1) (2 2) (2 3)
    (3 1) (3 2) (3 3)))

(define (conf-caixa pos)
  (map (λ (x)
         (posicao (+ (coluna x) (adiciona-caixa (coluna pos)))
                   (+  (linha x) (adiciona-caixa (linha pos)))))
       caixas))
                      
(define (conflitos pos)
  (append (conf-linha pos)
          (conf-coluna pos)
          (conf-caixa pos)))

(define (constroi-quadro) (make-vector 81))

(define (pos->n pos)
  (+ (- (coluna pos) 1)
     (* 9 (- (linha pos) 1))))

(define (n->pos n)
  (posicao (+ 1 (modulo n 9))
            (+ 1 (floor (/ n 9)))))

(define (mostra-quadro quadro)
  (mostrar quadro 0))

(define (mostrar quadro n)
  (cond
    [(= n 81) (newline)]
    [else
     (begin
       (cond
         [(and (= 0 (modulo n 9)) (< 0 n)) (newline)]
         [else #f])
       (display (vector-ref quadro n))
       (mostrar quadro (+ n 1)))]))

(define (get-quadro quadro pos)
  (vector-ref quadro (pos->n pos)))
          
(define (set-quadro quadro pos num)
  (begin 
    (vector-set! quadro (pos->n pos) num)
    quadro))


(define (conf-numeros quadro pos)
  (filter (λ (x) (> x 0))
          (map (λ (x) (get-quadro quadro x)) 
               (conflitos pos))))

(define (num-possiveis quadro pos)
  (filter (λ (x)
            (not (member
                  x
                  (conf-numeros quadro pos))))
          numerais))

(define (primeiro-livre quadro)
  (primeiro-livre-do quadro 0))

(define (primeiro-livre-do quadro n)
  (cond
    [(= n 81) #f]
    [else
     (if (= 0 (get-quadro quadro (n->pos n)))
          (n->pos n)
          (primeiro-livre-do quadro (+ n 1)))]))

(define (solucionar quadro)
  (cond
    [(eq? #f (primeiro-livre quadro)) quadro]
    [else
     (solucionar-de 
       quadro 
       (primeiro-livre quadro) 
       (num-possiveis quadro (primeiro-livre quadro)))]))


(define (solucionar-de quadro pos num)
  (cond
    [(eq? num '()) #f]
    [else
     (or (solucionar (set-quadro quadro pos (first num)))
         (solucionar-de (set-quadro quadro pos 0) pos (rest num)))]))


(define (converte vec)
  (vector->list vec))

(define (separar lst n)
  (cond
    [(not (empty? lst)) (cons (take lst n) (separar (drop lst n) n))]
    [else '()]))

(define (print-quadro quadro)
    (do ((linha 0 (+ linha 1)))
        ((= linha 9) (void))
      (do ((coluna 0 (+ coluna 1)))
          ((= coluna 9) (void))
        (let ((valor (list-ref (list-ref quadro linha) coluna)))
          (printf "~a " valor)))
      (printf "~n")))

(newline)

(define x-wing 
  (vector 0 9 3 0 0 4 5 6 0 
          0 6 0 0 0 3 1 4 0 
          0 0 4 6 0 8 3 0 9 
          9 8 1 3 4 5 0 0 0 
          3 4 7 2 8 6 9 5 1 
          6 5 2 0 7 0 4 8 3 
          4 0 6 0 0 2 8 9 0 
          0 0 0 4 0 0 0 1 0 
          0 2 9 8 0 0 0 3 4))

(newline)

(time (print-quadro (separar (converte (solucionar x-wing)) 9)))

(newline)

(define diabolical 
  (vector 0 0 0 7 0 4 0 0 5 
          0 2 0 0 1 0 0 7 0 
          0 0 0 0 8 0 0 0 2 
          0 9 0 0 0 6 2 5 0 
          6 0 0 0 7 0 0 0 8 
          0 5 3 2 0 0 0 1 0 
          4 0 0 0 9 0 0 0 0 
          0 3 0 0 6 0 0 9 0 
          2 0 0 4 0 7 0 0 0))

(newline)

(time (print-quadro (separar (converte (solucionar diabolical)) 9)))

(newline)

(define hard-17 
  (vector 0 0 2 0 9 0 3 0 0 
          8 0 5 0 0 0 0 0 0 
          1 0 0 0 0 0 0 0 0 
          0 9 0 0 6 0 0 4 0 
          0 0 0 0 0 0 0 5 8 
          0 0 0 0 0 0 0 0 1 
          0 7 0 0 0 0 2 0 0 
          3 0 0 5 0 0 0 0 0 
          0 0 0 1 0 0 0 0 0))

(newline)

(time (print-quadro (separar (converte (solucionar hard-17)) 9)))

(newline)
