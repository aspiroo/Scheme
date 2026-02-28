; Exercise 15: Remove the Second Top-Level Element
(define (remove-second lst)
  (if (or (null? lst) (null? (cdr lst)))
      '()
      (cons (car lst) (cddr lst))))

; Example: (remove-second '(a b c d)) => (a c d)
; Example: (remove-second '(a))        => ()
