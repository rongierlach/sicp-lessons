;; https://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.8
;; Newton's method for cube roots is based on the fact that if y is an approximation to the cube root of x,
;; then a better approximation is given by the value:
;; ((x / y^2) + 2y) / 3
(define (square x) (* x x))

(define (abs x)
  (if (< x 0) (- x) x))

(define (avg x y)
  (/ (+ x y) 2))

(define (newtons-method x y)
  (/ (+ (/ x (square y))
        (* 2 y))
     3))

(define (cbrt x)
  (define tolerance 0.00001)
  (define initial-guess 1.0)
  (define (improve guess)
    (avg guess (newtons-method x guess)))
  (define (good-enough? guess)
    (< (/ (abs (- guess (improve guess)))
          guess)
       tolerance))
  (define (cbrt-iter guess)
    (if (good-enough? guess)
        guess
        (cbrt-iter (improve guess))))
  (cbrt-iter initial-guess))
