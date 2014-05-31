(define (fib-iter p1 p2 n)
        (cond ((= n 1) (+ p1 p2))
              ((> n 1) (fib-iter p2 
                                 (+ p1 p2)
                                 (- n 1)
                       )
              )
        )
)

(define (fib n)
        (fib-iter 1 0 n)
)
