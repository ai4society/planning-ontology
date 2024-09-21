(define (problem sokoban)
        (:domain sokoban)
        (:objects sokoban crate1 crate2 l10 l11 l12 l19 l20 l21 l22 l29 l30 l31 l40 l41 l42 l43 l48 l49 l50 l52 l57 l58 l59 l60 l61)
        (:init (sokoban sokoban)
                (crate crate1)
                (crate crate2)
                (leftOf l10 l11)
                (leftOf l11 l12)
                (leftOf l19 l20)
                (leftOf l20 l21)
                (leftOf l21 l22)
                (leftOf l29 l30)
                (leftOf l30 l31)
                (leftOf l40 l41)
                (leftOf l41 l42)
                (leftOf l42 l43)
                (leftOf l48 l49)
                (leftOf l49 l50)
                (leftOf l57 l58)
                (leftOf l58 l59)
                (leftOf l59 l60)
                (leftOf l60 l61)
                (below l19 l10)
                (below l20 l11)
                (below l21 l12)
                (below l29 l20)
                (below l30 l21)
                (below l31 l22)
                (below l40 l31)
                (below l49 l40)
                (below l50 l41)
                (below l52 l43)
                (below l57 l48)
                (below l58 l49)
                (below l59 l50)
                (below l61 l52)
                (at sokoban l40)
                (at crate1 l20)
                (at crate2 l30)
                (clear l10)
                (clear l11)
                (clear l12)
                (clear l19)
                (clear l21)
                (clear l22)
                (clear l29)
                (clear l31)
                (clear l41)
                (clear l42)
                (clear l43)
                (clear l48)
                (clear l49)
                (clear l50)
                (clear l52)
                (clear l57)
                (clear l58)
                (clear l59)
                (clear l60)
                (clear l61)
        )
        (:goal (and
                (or (at crate1 l41) (at crate2 l41) )
                (or (at crate1 l50) (at crate2 l50) )
        ))
)