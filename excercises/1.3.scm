;; https://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.3
;; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.
(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (>= x y) (not (< x y)))

;(define (<= x y) (not (> x y)))

(define (is-greatest x y z)
  (and (>= x y) (>= x z)))

(define (is-next-greatest x y z)
  (and (not (is-greatest x y z))
       (or (>= x y) (>= x z))))

;(define (pick-on-condition condition)
;  (lamda (x y z)
;    (cond ((condition x y z) x)
;          ((condition y x z) y)
;          (else z))))
;
;(define (pick-greatest x y z)
;  ((pick-on-condition is-greatest) x y z))
;
;(define (pick-next-greatest x y z)
;  ((pick-on-condition is-next-greatest) x y z))

(define (pick-greatest x y z)
  (cond ((is-greatest x y z) x)
        ((is-greatest y x z) y)
        (else z)))

(define (pick-next-greatest x y z)
  (cond ((is-next-greatest x y z) x)
        ((is-next-greatest y x z) y)
        (else z)))

(define (procedure x y z)
  (+ (square (pick-greatest x y z))
     (square (pick-next-greatest x y z))))
