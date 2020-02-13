#lang sicp

(#%require rackunit)

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 
     (* guess 0.001)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(check-equal? (sqrt 9) 3.00009155413138)
(check-equal? (sqrt 0.0001) 0.010000714038711746)
(check-equal? (sqrt 100000000000000000000) 10000021484.861237)
(check-equal? (sqrt 10000000000000.000001) 3162433.547242504)
