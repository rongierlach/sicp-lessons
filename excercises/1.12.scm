;; Write a procedure that computes elements of Pascal's triangle by means of a recursive process

(define (pascal r c)
  (cond ((> c r) -1)
        ((= c 0) 1)
        ((= c r) 1)
        (else (+ (pascal (- r 1) c)
                 (pascal (- r 1) (- c 1))))))
