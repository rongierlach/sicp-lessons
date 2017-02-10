;; https://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.1
;; Below is a sequence of expressions.
;; What is the result printed by the interpreter in response to each expression?
;; Assume that the sequence is to be evaluated in the order in which it is presented
10                    ;Value: 10
(+ 5 3 4)             ;Value: 12
(- 9 1)               ;Value: 8
(/ 6 2)               ;Value: 3
(+ (* 2 4) (- 4 6))   ;Value: 6
(define a 3)          ;Value: a
(define b (+ a 1))    ;Value: b
(+ a b (* a b))       ;Value: 19
(= a b)               ;Value: #f
(if (and (> b a) (< b (* a b))) ;Value: 4
    b
    a)
(cond ((= a 4) 6)     ;Value: 16
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a)) ;Value 6
(* (cond ((> a b) a)   ;Value 16
         ((< a b) b)
         (else -1))
   (+ a 1))
