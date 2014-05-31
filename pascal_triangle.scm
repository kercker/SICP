(define (p initial counter n)
        (cond ((= initial n) true)
              ((> initial n) false)
              (else (p (+ initial counter)
                       (+ counter 1)
                       n
                    )
              )
        )
)
(define (line-no initial counter n)
        (cond ((> initial n) (- counter 1))
              (else (line-no (+ initial counter)
                             (+ counter 1)
                             n
                    )
              )
        )
)

(define (pascal n)
        (if (or (p 1 1 n)
                (p 3 3 n)
            )
            1
            (+ (pascal (- n
                          (line-no 1 1 n)
                       )
               )
               (pascal (- n
                          (line-no 1 1 n)
                          -1
                       )
               )
            )
         )
)
