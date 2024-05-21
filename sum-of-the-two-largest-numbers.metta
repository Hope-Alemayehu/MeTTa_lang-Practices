;this function will take three numbers and will return the square of the two largest numbers
(= (sqr $x) (* $x $x))
(= (sum-of-squares $m $n) (+ (sqr $m) (sqr $n)))

(= (sum-of-two-largest $x $y $z)
    (if (and (>= $x $y) (>= $z $y))
        (sum-of-squares $x $z)
        (if (and (>= $z $x) (>= $y $x))
        (sum-of-squares $z $y)
        (sum-of-squares $x $y))))

;checking 
!(assertEqual (sum-of-two-largest 3 6 8) 100) ;returns [()] or True
!(assertEqual (sum-of-two-largest 3 2 5) 29)  ;return error
