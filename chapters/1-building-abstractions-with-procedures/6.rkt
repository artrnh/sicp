#lang sicp

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) 
                     x)))

; sqrt-iter call in the else clause will lead to an infinite
; recursion due to applicative evaluation order