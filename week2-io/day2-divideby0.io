Number unsafeDiv := Number getSlot("/")

Number / = method( denominator, 
        if ( denominator == 0 , 0, self unsafeDiv(denominator))
)

(34/2) println
(34/0) println
