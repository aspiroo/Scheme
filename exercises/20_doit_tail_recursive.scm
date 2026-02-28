; Exercise 20: Tail-Recursive Rewrite of doit
; Original (NOT tail-recursive):
; (define (doit n)
;   (if (= n 0)
;       0
;       (+ n (doit (- n 1)))))

; Tail-recursive version using an accumulator:
(define (doit n)
  (define (doit-helper n acc)
    (if (= n 0)
        acc
        (doit-helper (- n 1) (+ acc n))))
  (doit-helper n 0))

; Example: (doit 5) => 15
; Example: (doit 0) =>  0
