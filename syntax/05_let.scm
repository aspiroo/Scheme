; SYNTAX 5: let and let* - Local Variables

; let: all bindings are independent
(let ((x 3)
      (y 4))
  (+ x y))    ; => 7

; let*: bindings are sequential, later vars can use earlier ones
(let* ((x 3)
       (y (* x 2)))
  (+ x y))    ; => 9
