(define (f-iter p1 p2 p3 n)
        (cond ((= n 3) (+ p1 
                          (* 2 p2)
                          (* 3 p3)
                       )
              )
              (else (f-iter (+ p1
                               (* 2 p2)
                               (* 3 p3)
                            )
                            p1
                            p2
                            (- n 1)
                    )
              )
         )
)

(define (f n)
        (if (< n 3)
            n
            (f-iter 2 1 0 n)
        )
)

(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
