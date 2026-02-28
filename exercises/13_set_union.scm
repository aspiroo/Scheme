; Exercise 13: Union of Two Sets (Simple Lists)
(define (member? x lst)
  (cond
    ((null? lst) #f)
    ((equal? (car lst) x) #t)
    (else (member? x (cdr lst)))))

(define (set-union s1 s2)
  (cond
    ((null? s1) s2)
    ((member? (car s1) s2)
     (set-union (cdr s1) s2))
    (else
     (cons (car s1) (set-union (cdr s1) s2)))))

; Example: (set-union '(a b c) '(b c d e)) => (a b c d e)
