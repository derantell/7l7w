List myAverage := method( 
        if (self isEmpty, return 0)
        if (self detect( item, item isKindOf(Number) == false), 
                Exception raise("List contains a non number"))

        self average 
)

list(2,3,4) myAverage println
#list() myAverage println
list( 2,4,5,"3") myAverage println


