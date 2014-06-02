%

different(red, green). 
different(green, red). 
different(blue, green). 
different(green, blue). 
different(red, blue). 
different(blue, red). 

coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
        different(Mississippi, Tennessee),
        different(Mississippi, Alabama),
        different(Alabama, Tennessee),
        different(Alabama, Mississippi),
        different(Alabama, Georgia),
        different(Alabama, Florida),
        different(Georgia, Florida),
        different(Georgia, Tennessee).
