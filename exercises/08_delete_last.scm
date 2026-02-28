; Exercise 8: Delete the Last Element of a List
(define (delete-last lst)
  (cond
    ((null? lst) '())
    ((null? (cdr lst)) '())
    (else (cons (car lst) (delete-last (cdr lst))))))

; Example: (delete-last '(1 2 3 4)) => (1 2 3)
