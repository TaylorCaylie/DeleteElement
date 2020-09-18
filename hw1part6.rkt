#lang racket
;this program deletes the second to last element from a list using recursion
(define (deleteitem x)
  (cond ((null? x) '()) ;if reached the end then exit (base case)
        ((equal?(length x) 2)(cdr x))
        ;when the length of the list becomes 2 then only return the second element (deleting the second from last)
        (else (+ (car x)(deleteitem (cdr x)))))) ;if length is not two or null then continue recursing 


; output
(deleteitem '(a b c d e))
(deleteitem '(a b (c d) e)) 
       