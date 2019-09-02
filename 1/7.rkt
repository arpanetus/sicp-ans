#lang sicp

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (square x) (* x x)) 

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.00000000001))


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))


;;; we've to take the most possible smallest number nearing 0
;;; since it happens it will make possible for small numbers to have better estimations
;;; yet this is not that much for big numbers, since big numbers need more evalutions this time
;;; (maybe it will be preferrable to use logarithm as an epsilon)