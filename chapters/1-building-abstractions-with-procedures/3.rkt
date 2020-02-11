#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (solution a b c)
  (cond
    ((and (>= a c) (>= b c)) (sum-of-squares a b))
    ((and (>= a b) (>= c b)) (sum-of-squares a c))
    ((and (>= b a) (>= c a)) (sum-of-squares b c))))

(check-equal? (solution 2 3 4) 25)
(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 1 1 1) 2)
(check-equal? (solution 1 1 2) 5)