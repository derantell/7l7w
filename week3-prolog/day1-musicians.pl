% prolog
instrument(guitar).
instrument(bass).
instrument(drums).
instrument(macbook).
instrument(vocals).

musician( slash).
musician( 'kurt cobain').
musician( 'neil peart').
musician( flea).
musician( avicii).

plays( slash, guitar ).
plays( 'kurt cobain', guitar ).
plays( 'kurt cobain', vocals ).
plays( 'neil peart', drums ).
plays( flea , bas).
plays( avicii, macbook).

genre(metal).
genre(prog).
genre(punk).
genre(funk).
genre(house).
genre(grunge).

has_genre(slash, metal).
has_genre('kurt cobain', grunge).
has_genre('neil peart', prog).
has_genre(flea, funk).
has_genre(avicii, house).

