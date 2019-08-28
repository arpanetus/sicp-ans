(define (square x) (* x x))

(define (sum-of-squares x y) 
  	(+ (square x) (square y)))

(define (max x y) 
  	(if (> x y) x y))

(define (min x y) 
  	(if (< x y) x y))

(define (get-middle x y z) 
  	(min (max x y) (max y z)))

(define (largest-one x y z) 
  	(max x (max y z)))

(define (sum-of-squares-of-two-larger-numbers x y z) 
  	(sum-of-squares (get-middle x y z) (largest-one x y z)))
