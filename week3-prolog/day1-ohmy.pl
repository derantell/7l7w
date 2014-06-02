%

cat(lion).
cat(tiger).

dorothy(X, Y, Z) :- X = lion, Y = tiger, Z = bear.
twin_cat(X, Y) :- cat(X), cat(Y).

