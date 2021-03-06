List2d := Object clone

List2d init := method(
        self dimarray := List clone 
)

List2d dim := method( x, y,
        dimarray setSize(x) foreach ( i, _, 
              dimarray atPut(i, List clone setSize(y))
        )
)

List2d get := method (x, y,
        self dimarray at(x) at(y)
)

List2d set := method (x, y, value,
        self dimarray at(x) atPut(y, value)
)

List2d transpose := method( 
        result := List2d clone
        result dim( self dimarray size, self dimarray at(0) size )

        self dimarray foreach( i, arr,
                arr foreach( j, v, result set( j, i, self get(i,j)))
        )
        result
)

List2d save := method(
        File with("./matrix") open setContents(dimarray serialized) close
        self
)

List2d load := method(
        self dimarray = doFile( "./matrix")
        self
)

List2d dump := method ( pretty,
        "-" repeated(30) println 
        self dimarray foreach( arr, arr map( asString alignLeft(10," ")) join(", ") println) 
        "-" repeated(30) println 
)

mylist := List2d clone

mylist dim(3,3) println
mylist set(1,0,"Foobar")
mylist set(0,2,"braz")
mylist get(1,1) println
mylist dump

otherList := mylist transpose
otherList dump

otherList save

thirdList := List2d clone
thirdList load dump 
