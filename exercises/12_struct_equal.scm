; Exercise 12: Structural Equality of Two Lists
(define (struct-equal? lst1 lst2)
  (cond
    ((and (null? lst1) (null? lst2)) #t)
    ((or  (null? lst1) (null? lst2)) #f)
    ((and (list? (car lst1)) (list? (car lst2)))
     (and (struct-equal? (car lst1) (car lst2))
          (struct-equal? (cdr lst1) (cdr lst2))))
    ((or  (list? (car lst1)) (list? (car lst2))) #f)
    (else
     (struct-equal? (cdr lst1) (cdr lst2)))))

; Example: (struct-equal? '(a (b c) d) '(1 (2 3) 4)) => #t
; Example: (struct-equal? '(a (b c) d) '(1 (2 3 4))) => #f
