; Exercise 5: Count Zeros in a Simple List
(define (count-zeros lst)
  (cond
    ((null? lst) 0)
    ((= (car lst) 0) (+ 1 (count-zeros (cdr lst))))
    (else (count-zeros (cdr lst)))))

; Example: (count-zeros '(1 0 3 0 0 7)) => 3
