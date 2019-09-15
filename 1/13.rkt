#lang sicp

(define (fib n )
  (define (iter n prev acc)
    (cond ((= 1 n) prev)
	  ((= 0 n) acc)
	  (else (iter (- n 1) acc (+ prev acc)))))
  (iter n 1.0 1.0))

 
(define phi 
  (/ (+ 1 (sqrt 5)) 2))

(define eps 0.000001)

(define res
  (/ (fib 100) (fib 99)))

(< (- res phi) eps)
