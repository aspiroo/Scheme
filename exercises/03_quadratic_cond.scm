; Exercise 3: Real Roots of a Quadratic using COND
(define (quadratic-cond a b c)
  (let ((discriminant (- (* b b) (* 4 a c))))
    (cond
      ((< discriminant 0)
       (display "The roots are complex (no real roots)."))
      ((= discriminant 0)
       (list (/ (- b) (* 2 a))))
      (else
       (let ((sqrt-d (sqrt discriminant)))
         (list (/ (+ (- b) sqrt-d) (* 2 a))
               (/ (- (- b) sqrt-d) (* 2 a))))))))

; Example: (quadratic-cond 1 -5  6) => (3.0 2.0)
; Example: (quadratic-cond 1  2  1) => (-1.0)
; Example: (quadratic-cond 1  1  1) => The roots are complex (no real roots).
