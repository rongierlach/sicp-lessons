;; https://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.7
;; The good-enough? test used in computing square roots will not be very effective
;; for finding the square roots of very small numbers.
;; Also, in real computers, arithmetic operations are almost always performed with limited precision.
;; This makes our test inadequate for very large numbers.
;; Explain these statements, with examples showing how the test fails for small and large numbers.

;; Small: the tolerance is already larger than many small numbers, causing the procedure to resolve prematurely
;; (square-root 1e-84) => ;Value: .03125

;; Large: the difference between iterations are small, causing the procudure to resolve prematurely
;; (square-root 1e1) => ;Value: 9.98560000..2

;; An alternative strategy for implementing good-enough? is to watch how
;; guess changes from one iteration to the next and to stop when the change
;; is a very small fraction of the guess.
;; Design a square-root procedure that uses this kind of end test.
;; Does this work better for small and large numbers?
(define (square x) (* x x))

(define (abs x)
  (if (< x 0) (- x) x))

(define (avg x y)
  (/ (+ x y) 2)

(define (sqrt x)
  (define tolerance 0.001)
  (define initial-guess 1.0)
  (define (improve guess)
    (avg guess (/ x guess)))
  (define (good-enough? guess)
    (< (/ (abs (- guess (improve guess)))
          guess)
       tolerance))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter initial-guess))

; This improves results for smaller numbers and larger numbers
