; SYNTAX 8: Recursion - The Core Pattern
; Every recursive function has:
;   PART 1: Base case  - when to stop
;   PART 2: Recursive case - do something, then call self again

(define (sum-list lst)
  (if (null? lst)          ; BASE CASE: empty list
      0
      (+ (car lst)         ; RECURSIVE CASE:
         (sum-list          ; add first to sum of rest
           (cdr lst)))))

; Trace:
; (sum-list '(1 2 3))
;   = (+ 1 (sum-list '(2 3)))
;   = (+ 1 (+ 2 (sum-list '(3))))
;   = (+ 1 (+ 2 (+ 3 0)))
;   = 6
