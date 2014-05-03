secret := Random value(1, 101) floor
lastDiff := 0

input := File standardInput

10 repeat( 
        (lastDiff == 0) ifTrue ( "Guess a number between 1 and 100: " print ) ifFalse ( "Try again: " print )

        guess := input readLine asNumber

        diff := (guess - secret) abs
        if ( guess == secret, 
                "Wow, correct!" println break, 
                (diff < lastDiff) ifTrue("Hotter!" println) ifFalse( "Colder!" println )
        )
        lastDiff = diff
)

"Hahahahahaha, the correct number was #{secret}" interpolate println
