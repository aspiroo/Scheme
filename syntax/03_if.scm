; SYNTAX 3: if - Basic Conditional
; (if <test> <then> <else>)

(if (> 5 3)
    "yes"    ; returned when true
    "no")    ; returned when false
; => "yes"

(define (abs-val x)
  (if (< x 0)
      (- x)
      x))
