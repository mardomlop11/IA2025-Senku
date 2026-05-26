(define (problem senku-3x3)

    (:domain senku)

    (:objects
        c1 c2 c3
        c4 c5 c6
        c7 c8 c9 - cell
    )

    (:init

        (OCCUPIED c1)
        (OCCUPIED c2)
        (OCCUPIED c3)
        (OCCUPIED c4)
        (EMPTY c5)
        (OCCUPIED c6)
        (OCCUPIED c7)
        (OCCUPIED c8)
        (OCCUPIED c9)

        ;; Relaciones de salto

        (CONNECTED c1 c2 c3)
        (CONNECTED c3 c2 c1)

        (CONNECTED c4 c5 c6)
        (CONNECTED c6 c5 c4)

        (CONNECTED c7 c8 c9)
        (CONNECTED c9 c8 c7)

        (CONNECTED c1 c4 c7)
        (CONNECTED c7 c4 c1)

        (CONNECTED c2 c5 c8)
        (CONNECTED c8 c5 c2)

        (CONNECTED c3 c6 c9)
        (CONNECTED c9 c6 c3)
    )

    (:goal
        (and
            (OCCUPIED c5)
        )
    )
)