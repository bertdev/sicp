;; exercise 1.1
10 ;; 10
(+ 5 3 4) ;;12
(- 9 1) ;; 8
(/ 6 2) ;; 3
(+ (* 2 4) (- 4 6)) ;; 6
(define a 3) ;; 3
(define b (+ a 1)) ;; 4
(+ a b (* a b)) ;; 19
(= a b) ;; #f

(if (and (> b a) (< b (* a b))) ;; 4 
    b
    a)

(cond ((= a 4) 6) ;; 16
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a)) ;; 6

(* (cond ((> a b) a) ;; 16
         ((< a b) b)
         (else -1))
   (+ a 1))


;; exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; exercise 1.3
(define (g x y z)
  (+ (square (firstGreatest x y z)) 
     (square (secondGreatest x y z))))

(define (firstGreatest x y z)
  (cond ((and (> x y) (> x z)) x)
        ((and (> y x) (> y z)))
        (else z)))

(define (secondGreatest x y z)
  (cond ((or (and (> x y) (< x z)) 
             (and (> x z) (< x y))) x)
        ((or (and (> y x) (< y z)) 
             (and (> y z) (< y x))) y)
        (else z)))

(define (square x) (* x x))

;; exercise 1.8
(define (one-third x)
  (/ x 3.0))

(define (square x) (* x x))

(define (div-by-square x y)
  (/ x (square y)))

(define (improve guess x)
  (one-third (+ (div-by-square x guess) (+ 2.0 guess))))

(define (cube-root x) (* x x x))

(define (good-enough? guess x)
  (< (abs (- (cube-root guess) x)) 1))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (cbrt x)
  (cbrt-iter 1.0 x))
