;basic recursion
;using if/else statment
(= (factorial $x)
    (if (> $x 0)
        (* $x (factorial (- $x 1)))
        1))
;!(factorial 5)

;using cases
(= (factorial $x)
    case $x 
        ((0 1)
        ($_ (* $x (factorial (- $x 1))))))
!(factorial 4)
