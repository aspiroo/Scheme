; SYNTAX 6: lambda - Anonymous Functions
; (lambda (param1 param2 ...) body)

(lambda (x) (* x x))            ; a function that squares x

; Call immediately:
((lambda (x) (* x x)) 5)        ; => 25

; Store in a variable:
(define square (lambda (x) (* x x)))
(square 6)                       ; => 36

; Used inside map:
(map (lambda (x) (* x 2)) '(1 2 3))  ; => (2 4 6)
