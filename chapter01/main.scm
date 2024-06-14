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

(define (sqrt-iter guess x )
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; using procedure internalization to solve name-packagin problems
(define (sqrt x)
  (define (good-enough guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough guess)
        guess
        (sqrt-iter (improve guess))))
  (if (good-enough guess x)
    guess
    (sqrt-iter (improve guess))))
