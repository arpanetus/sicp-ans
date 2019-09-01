#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

;;; => 0
(test 0 p)

;;; => inf eval of p func
(test 0 (p))