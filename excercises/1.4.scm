;; https://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.4
;; Observe that our model of evaluation allows for combinations whose operators are compound expressions.
;; Use this observation to describe the behavior of the following procedure:
;; (define (a-plus-abs-b a b)
;;   ((if (> b 0) + -) a b))

;; Substituion Model:
;; To apply a compound procedure to arguments,
;; evaluate the body of the procedure with each formal parameter replaced by the corresponding argument.

; let's evaluate the combination
(a-plus-abs-b 1 3)

; first retrieve the body of a-plus-abs-b
((if (> b 0) + -) a b)

; then we replace the formal parameters a & b by the argunents 1 & 3
((if (> 3 0) + -) 1 3)

; now we can continue to reduce the expression
((if (#t) + -) 1 3)

; and again
(+ 1 3)

; finally
4
