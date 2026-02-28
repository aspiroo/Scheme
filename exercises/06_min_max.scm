; Exercise 6: Largest and Smallest in a List
(define (min-max lst)
  (define (helper rest current-max current-min)
    (cond
      ((null? rest) (list current-max current-min))
      ((> (car rest) current-max)
       (helper (cdr rest) (car rest) current-min))
      ((< (car rest) current-min)
       (helper (cdr rest) current-max (car rest)))
      (else
       (helper (cdr rest) current-max current-min))))
  (if (null? lst)
      (error "List must not be empty")
      (helper (cdr lst) (car lst) (car lst))))

; Example: (min-max '(3 1 4 1 5 9 2 6)) => (9 1)
