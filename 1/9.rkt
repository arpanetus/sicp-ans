#lang sicp

;;; First definition is recursive with no optimization, thus it can't be  
;;; considered as a legit or linear-iterative. Because we see that the inc 
;;; is being expanded every time.
(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))
;;; (+ 4 5)
;;; (inc (+ 3 5))
;;; (inc (inc (+ 2 5)))
;;; (inc (inc (inc (+ 1 5))))
;;; (inc (inc (inc (inc (+ 0 5)))))
;;; (inc (inc (inc 6 )))
;;; (inc (inc 7))
;;; (inc 8)
;;; 9


;;; Second defintion is linear-recursive, since an accumulation
;;; is being held inside of the `+` function.
(define (+ a b)
  (if (= a 0) b (+ (dec a) (inc b))))
;;; (+ 4 5)
;;; (+ 3 6)
;;; (+ 2 7)
;;; (+ 1 8)
;;; (+ 0 9)
;;; 9

