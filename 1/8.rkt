#lang sicp

(define (sqr x) (* x x))

(define (cb x) (* x x x))

(define (improve guess x)
  (/ (+ (/ x
           (sqr guess))
        (* 2 guess))
     3))

(define (good-enough? guess x)
  (< (abs (- (cb guess) x)) 0.00000000001))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (cbrt x) (cbrt-iter 1.0 x))