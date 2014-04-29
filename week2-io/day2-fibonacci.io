# Fibonacci loop style
fib_loop := method ( to, 
        a := 1
        b := 1

        if( to < 3 ) then ( return 1 ) 

        for (i, 3, to,
            tmp := a + b
            a = b
            b = tmp
        )
        
        return ( b )
)

fib_loop( 1 ) println
fib_loop( 3 ) println
fib_loop( 5 ) println
fib_loop( 14 ) println

# Fibonacci recursive style
fib_rec := method( to, 
        if( to < 3 ) then( return 1 )

        return ( fib_rec( to - 1 ) + fib_rec( to-2 ) ) 
)

fib_rec( 1 ) println 
fib_rec( 3 ) println
fib_rec( 5 ) println
fib_rec( 14 ) println

