; Exercise 4: A Raised to the B Power
(define (my-power a b)
  (cond
    ((= b 0) 1)
    ((even? b)
     (let ((half (my-power a (/ b 2))))
       (* half half)))
    (else
     (* a (my-power a (- b 1))))))

; Example: (my-power 2 10) => 1024
