; Exercise 14: Delete All Occurrences of an Atom at Any Depth
(define (delete-deep atom lst)
  (cond
    ((null? lst) '())
    ((equal? (car lst) atom)
     (delete-deep atom (cdr lst)))
    ((list? (car lst))
     (cons (delete-deep atom (car lst))
           (delete-deep atom (cdr lst))))
    (else
     (cons (car lst) (delete-deep atom (cdr lst))))))

; Example: (delete-deep 'a '(a b (a (a c) a) a)) => (b ((c)))
