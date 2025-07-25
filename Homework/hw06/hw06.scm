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

(define (my-filter func lst) 
    'YOUR-CODE-HERE
    (if (null? lst)
        lst
        (if (func (car lst))
            (cons (car lst)
                (my-filter func (cdr lst))
            )
            (my-filter func (cdr lst))
        )
    )
)

(define (no-repeats lst)
    'YOUR-CODE-HERE
    (define (member item items)
        (if (null? items)
            #f
            (if (equal? item (car items))
                #t
                (member item (cdr items))
            )
        )
    )
    
    (if (null? lst)
        lst
        (if (member (car lst) (cdr lst))
            (no-repeats (cdr lst))
            (cons (car lst)
                (no-repeats (cdr lst))
            )
        )
    )
)
