; Exercise 11: Reverse a Simple List
(define (my-reverse lst)
  (define (helper rest acc)
    (if (null? rest)
        acc
        (helper (cdr rest) (cons (car rest) acc))))
  (helper lst '()))

; Example: (my-reverse '(1 2 3 4 5)) => (5 4 3 2 1)