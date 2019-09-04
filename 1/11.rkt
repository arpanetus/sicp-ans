#lang sicp

;;; non-iterative
(define (f1 n)
  (if (< n 3)
      n
      (+ (f1 (- n 1)) (* 2 (f1 (- n 2))) (* 3 (f1 (- n 3))))))

;;; iterative
(define (f n)
  (define (iter cnt a b c)
    (if (< cnt 3) 
        a
        (iter (- cnt 1) (+ a (* 2 b) (* 3 c)) a b)))
  (iter n 2 1 0))

        