#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;;; (a-plus-abs-b 1 -3) => 4
;;; ((if (> -3 0) + -) 1 -3)  
;;; ((if #f + -) 1 -3)
;;; (- 1 -3) => 4