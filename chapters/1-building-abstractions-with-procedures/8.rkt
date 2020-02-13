#lang sicp

(#%require rackunit)

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (/ (+ (/ x (square guess))(* 2 guess))
     3))

(define (good-enough? guess x)
  (= (improve guess x) guess)) 

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x)
                      x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(check-equal? (cube-root 27) 3.0)
(check-equal? (cube-root 100000000000000.0001) 46415.88833612779)
