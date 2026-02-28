; Exercise 18: All Permutations of a List
(define (remove-first x lst)
  (cond
    ((null? lst) '())
    ((equal? (car lst) x) (cdr lst))
    (else (cons (car lst) (remove-first x (cdr lst))))))

(define (permutations lst)
  (if (null? lst)
      '(())
      (apply append
             (map (lambda (x)
                    (map (lambda (perm) (cons x perm))
                         (permutations (remove-first x lst))))
                  lst))))

; Example: (permutations '(1 2 3))
; => ((1 2 3) (1 3 2) (2 1 3) (2 3 1) (3 1 2) (3 2 1))
