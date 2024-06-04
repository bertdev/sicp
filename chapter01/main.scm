;; defining procedures
(define (square x) (* x x))
(square 21)
(square (+ 2 5))
(square (square 3))

(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4)

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(f 5)

;; using conditional expressions and predicates
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))


(define (abs x) 
  (cond ((< x 0) (- x))
        (else x)))

(define (abs x)
  (if (< x 0) 
      (- x)
      x))
;; using logic combinators and predicates
(define (>= x y) (or (> x y) (= x y)))


