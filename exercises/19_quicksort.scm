; Exercise 19: Quicksort
(define (my-filter pred lst)
  (cond
    ((null? lst) '())
    ((pred (car lst)) (cons (car lst) (my-filter pred (cdr lst))))
    (else (my-filter pred (cdr lst)))))

(define (quicksort lst)
  (if (or (null? lst) (null? (cdr lst)))
      lst
      (let* ((pivot   (car lst))
             (rest    (cdr lst))
             (less    (my-filter (lambda (x) (< x pivot)) rest))
             (equal   (my-filter (lambda (x) (= x pivot)) rest))
             (greater (my-filter (lambda (x) (> x pivot)) rest)))
        (append (quicksort less)
                (list pivot)
                equal
                (quicksort greater)))))

; Example: (quicksort '(3 6 8 10 1 2 1)) => (1 1 2 3 6 8 10)
