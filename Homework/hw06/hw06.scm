(define (cddr s) (cdr (cdr s)))

(define (cadr s)
    'YOUR-CODE-HERE
    (car (cdr s))
)

(define (caddr s) 
    'YOUR-CODE-HERE
    (car (cdr (cdr s)))
)

(define (ascending? lst) 
    'YOUR-CODE-HERE
    (if (null? lst)
        #t
        (if (null? (cdr lst))
            #t
            (if (<= 
                    (car lst) 
                    (car (cdr lst))
                )
                (ascending? (cdr lst))
                #f
            )
        )
    )
)

(define (interleave lst1 lst2)
    'YOUR-CODE-HERE
    (if (null? lst1)
        lst2
        (cons (car lst1)
            (interleave lst2 (cdr lst1))
        )
    )
)

(define (my-filter func lst) 'YOUR-CODE-HERE)

(define (no-repeats lst) 'YOUR-CODE-HERE)
