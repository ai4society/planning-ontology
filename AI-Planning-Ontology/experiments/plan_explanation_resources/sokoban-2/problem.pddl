(define (problem sokoban)
        (:domain sokoban)
        (:objects sokoban crate1 crate2 l1 l10 l11 l12 l17 l18 l19 l22 l23 l24 l29 l30 l31 l32 l33 l36 l37 l38 l39 l40)
        (:init (sokoban sokoban)
                (crate crate1)
                (crate crate2)
                (leftOf l10 l11)
                (leftOf l11 l12)
                (leftOf l17 l18)
                (leftOf l18 l19)
                (leftOf l22 l23)
                (leftOf l23 l24)
                (leftOf l29 l30)
                (leftOf l30 l31)
                (leftOf l31 l32)
                (leftOf l32 l33)
                (leftOf l36 l37)
                (leftOf l37 l38)
                (leftOf l38 l39)
                (leftOf l39 l40)
                (below l17 l10)
                (below l18 l11)
                (below l19 l12)
                (below l24 l17)
                (below l29 l22)
                (below l30 l23)
                (below l31 l24)
                (below l36 l29)
                (below l37 l30)
                (below l38 l31)
                (below l39 l32)
                (below l40 l33)
                (at sokoban l19)
                (at crate1 l17)
                (at crate2 l18)
                (clear l1)
                (clear l10)
                (clear l11)
                (clear l12)
                (clear l22)
                (clear l23)
                (clear l24)
                (clear l29)
                (clear l30)
                (clear l31)
                (clear l32)
                (clear l33)
                (clear l36)
                (clear l37)
                (clear l38)
                (clear l39)
                (clear l40)
        )
        (:goal (and
                (or (at crate1 l37) (at crate2 l37) )
                (or (at crate1 l39) (at crate2 l39) )
        ))
)