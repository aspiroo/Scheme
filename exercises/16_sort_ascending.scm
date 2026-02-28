; Exercise 16: Sort a Simple List in Ascending Order (Insertion Sort)
(define (insert n sorted)
  (cond
    ((null? sorted) (list n))
    ((<= n (car sorted)) (cons n sorted))
    (else (cons (car sorted) (insert n (cdr sorted))))))

(define (insertion-sort lst)
  (if (null? lst)
      '()
      (insert (car lst) (insertion-sort (cdr lst)))))

; Example: (insertion-sort '(3 1 4 1 5 9 2 6)) => (1 1 2 3 4 5 6 9)
