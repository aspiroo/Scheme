; SYNTAX 10: map, apply, and filter

; map: apply a function to every element
(map (lambda (x) (* x x)) '(1 2 3 4))
; => (1 4 9 16)

; filter: keep elements matching a predicate
(define (my-filter pred lst)
  (cond
    ((null? lst) '())
    ((pred (car lst)) (cons (car lst) (my-filter pred (cdr lst))))
    (else (my-filter pred (cdr lst)))))

(my-filter odd? '(1 2 3 4 5))   ; => (1 3 5)

; apply: call a function with a list as its arguments
(apply + '(1 2 3 4))                    ; => 10  same as (+ 1 2 3 4)
(apply append '((1 2) (3 4) (5 6)))     ; => (1 2 3 4 5 6)
