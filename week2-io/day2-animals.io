Object ancestors := method(
        prototype := self proto
        if( prototype != Object,
                writeln ( "Slots of ", prototype, "\n-------------------")
                prototype slotNames foreach(slotName, writeln (slotName))
        writeln
        prototype ancestors ))

Animal := Object clone
Animal speak := method ("Some animal noise" println)

Duck := Animal clone
Duck speak := method("Quack!" println)
Duck walk := method("Waddle" println)

disco := Duck clone
disco ancestors
