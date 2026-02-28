; Exercise 9: Delete All Top-Level Instances of an Atom or List
(define (delete-item item lst)
  (cond
    ((null? lst) '())
    ((equal? (car lst) item) (delete-item item (cdr lst)))
    (else (cons (car lst) (delete-item item (cdr lst))))))

; Example: (delete-item 'a '(a b a c)) => (b c)
; Example: (delete-item '(a b) '(x (a b) y (a b))) => (x y)
