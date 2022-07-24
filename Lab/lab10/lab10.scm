(define (over-or-under num1 num2) 
    'YOUR-CODE-HERE
    (cond ((< num1 num2) -1)
          ((> num1 num2) 1)
          ((= num1 num2) 0))
)

(define (make-adder num) 
    'YOUR-CODE-HERE
    (lambda (x) (+ x num))
)

(define (composed f g) 
    'YOUR-CODE-HERE
    (lambda (x) (f (g x))) 
)

(define (square n) (* n n))

(define (pow base exp) 
    'YOUR-CODE-HERE
    (cond  
        ((= exp 0) 1)
        ((= exp 1) base)
        ((= exp 2) (square base))
        ((= base 1) 1)
        (else
           (cond
                ((even? exp) 
                    (square (pow base (/ exp 2)))
                )
                (else 
                    (* 
                        (square 
                            (pow base (/ (- exp 1) 2))
                        )
                        base
                    )
                )
            )
        )
    )
)