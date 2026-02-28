; Exercise 17: Return Largest and Smallest from a Simple List
(define (largest-smallest lst)
  (define (helper rest cur-max cur-min)
    (cond
      ((null? rest) (list cur-max cur-min))
      (else
       (helper (cdr rest)
               (if (> (car rest) cur-max) (car rest) cur-max)
               (if (< (car rest) cur-min) (car rest) cur-min)))))
  (if (null? lst)
      (error "List is empty")
      (helper (cdr lst) (car lst) (car lst))))

; Example: (largest-smallest '(4 2 9 1 7)) => (9 1)
