#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; applicative

(test 0 (p))
(test 0 (p))
(test 0 (p))

; normal

(test 0 (p))
(if (= 0 0) 0 (p))
(if #t 0 (p))
0