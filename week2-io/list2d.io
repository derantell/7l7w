List2d := Object clone

List2d dim := method( x, y,
        self dimarray := List clone 
        dimarray setSize(x) foreach ( i, _, 
              dimarray atPut(i, List clone setSize(y))
        )
)

List2d get := method (x, y,
        dimarray at(x) at(y)
)

List2d set := method (x, y, value,
        dimarray at(x) atPut(y, value)
)

List2d dump := method ( self dimarray println )

mylist := List2d clone

mylist dim(3,3) println
mylist set(1,1,"Foobar")
mylist get(1,1) println
mylist dump

