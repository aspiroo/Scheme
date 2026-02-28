; Exercise 7: Delete All Top-Level Instances of an Atom
(define (delete-top atom lst)
  (cond
    ((null? lst) '())
    ((equal? (car lst) atom) (delete-top atom (cdr lst)))
    (else (cons (car lst) (delete-top atom (cdr lst))))))

; Example: (delete-top 'a '(a b a c a)) => (b c)
