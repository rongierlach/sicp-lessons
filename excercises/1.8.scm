;; https://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.8
;; Newton's method for cube roots is based on the fact that if y is an approximation to the cube root of x,
;; then a better approximation is given by the value:
;; ((x / y^2) + 2y) / 3
(define tolerance 0.001)

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (abs x)
  (if (< x 0) (- x) x))

(define (avg x y)
  (/ (+ x y) 2))

(define (newtons-method x y)
  (/ (+ (/ x (square y))
        (* 2 y))
     3))

(define (improve guess x)
  (avg guess (newtons-method x guess)))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x))
     tolerance))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x)
                      x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))
