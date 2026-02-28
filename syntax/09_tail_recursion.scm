; SYNTAX 9: Tail Recursion and Accumulators

; NOT tail-recursive (stack grows with each call):
(define (sum-bad n)
  (if (= n 0)
      0
      (+ n (sum-bad (- n 1)))))  ; + is waiting!

; TAIL-recursive (result carried in acc, no pending work):
(define (sum-good n)
  (define (helper n acc)
    (if (= n 0)
        acc                           ; done - return accumulator
        (helper (- n 1) (+ acc n))))  ; pass updated acc forward
  (helper n 0))                       ; start with acc = 0

(sum-good 5)   ; => 15
