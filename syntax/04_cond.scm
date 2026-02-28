; SYNTAX 4: cond - Multi-Branch Conditional
; (cond (test1 result1) (test2 result2) ... (else default))

(define (classify n)
  (cond
    ((< n 0) "negative")
    ((= n 0) "zero")
    (else    "positive")))

(classify -3)  ; => "negative"
(classify  0)  ; => "zero"
(classify  5)  ; => "positive"
