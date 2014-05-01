add2d := method ( list2d, 
        list2d map( x, x reduce(+) ) reduce(+)
)

ls2d := list( list (1,2,3), list(4,5,6,7,8))

add2d( ls2d ) println
