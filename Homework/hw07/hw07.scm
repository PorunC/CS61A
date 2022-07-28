(define (cadr lst) (car (cdr lst)))

(define (make-kwlist1 keys values)
  'YOUR-CODE-HERE
  (list keys values)
)

(define (get-keys-kwlist1 kwlist) 
  'YOUR-CODE-HERE
  (car kwlist)
)

(define (get-values-kwlist1 kwlist)
  'YOUR-CODE-HERE
  (cadr kwlist)
)

(define (make-kwlist2 keys values)
  'YOUR-CODE-HERE
  (if (null? keys)
    nil
    (cons
      (list (car keys) (car values))
      (make-kwlist2 (cdr keys) (cdr values))
    )
  )
)

(define (get-keys-kwlist2 kwlist) 
  'YOUR-CODE-HERE
  (map
    (lambda (x) (car x)) kwlist
  )
)

(define (get-values-kwlist2 kwlist)
  'YOUR-CODE-HERE
  (map
    (lambda(x) (cadr x)) kwlist
  )
)

(define (add-to-kwlist kwlist key value)
  'YOUR-CODE-HERE
  (make-kwlist
    (append (get-keys-kwlist kwlist) (list key))
    (append (get-values-kwlist kwlist) (list value))
  )
)

(define (get-first-from-kwlist kwlist key)
  'YOUR-CODE-HERE
)

(define (prune-expr expr)
  (define (prune-helper lst) 
    'YOUR-CODE-HERE
  )
  'YOUR-CODE-HERE
)

(define (curry-cook formals body) 
  'YOUR-CODE-HERE
)

(define (curry-consume curries args)
  'YOUR-CODE-HERE
)
