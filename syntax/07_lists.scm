; SYNTAX 7: Lists and Quoting

; Quoting - prevents evaluation
'a               ; the symbol a
'(1 2 3)         ; a literal list

; Building lists
(cons 1 '(2 3))        ; => (1 2 3)   prepend
(list 1 2 3)           ; => (1 2 3)   build from scratch
(append '(1 2) '(3 4)) ; => (1 2 3 4) join two lists

; Taking lists apart
(car '(1 2 3))   ; => 1      first element
(cdr '(1 2 3))   ; => (2 3)  everything after first
(cadr '(1 2 3))  ; => 2      shorthand for (car (cdr ...))
(cddr '(1 2 3))  ; => (3)    shorthand for (cdr (cdr ...))

; Checking lists
(null? '())      ; => #t   is the list empty?
(null? '(1 2))   ; => #f
(list? '(1 2 3)) ; => #t   is it a list?
(list? 42)       ; => #f
