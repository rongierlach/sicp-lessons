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
(define tolerance 0.001)

(define (square x) (* x x))

(define (abs x)
  (if (< x 0) (- x) x))

(define (avg x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (avg guess (/ x guess)))


;(define (good-enough? guess x)
;  (< (abs (- (square guess) x))
;     tolerance))

(define (good-enough? guess x)
  (< (/ (abs (- guess (improve guess x)))
        guess)
     tolerance))

(define (square-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (square-root-iter (improve guess x)
                        x)))

(define (square-root x)
  (square-root-iter 1.0 x))

; This improves results for smaller numbers, but not for larger numbers
