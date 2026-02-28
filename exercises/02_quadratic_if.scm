; Exercise 2: Real Roots of a Quadratic using IF
; Solves ax^2 + bx + c = 0
(define (quadratic-if a b c)
  (let ((discriminant (- (* b b) (* 4 a c))))
    (if (< discriminant 0)
        (display "The roots are complex (no real roots).")
        (let ((sqrt-d (sqrt discriminant)))
          (list (/ (+ (- b) sqrt-d) (* 2 a))
                (/ (- (- b) sqrt-d) (* 2 a)))))))

; Example: (quadratic-if 1 -5 6) => (3.0 2.0)
; Example: (quadratic-if 1  1 1) => The roots are complex (no real roots).
