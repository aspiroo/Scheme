; Exercise 10: Replace All Occurrences of an Atom (Deeply Nested)
(define (replace-deep old new lst)
  (cond
    ((null? lst) '())
    ((equal? (car lst) old)
     (cons new (replace-deep old new (cdr lst))))
    ((list? (car lst))
     (cons (replace-deep old new (car lst))
           (replace-deep old new (cdr lst))))
    (else
     (cons (car lst) (replace-deep old new (cdr lst))))))

; Example: (replace-deep 'a 'x '(a b (a (a c)) a)) => (x b (x (x c)) x)
