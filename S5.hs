-- An online demo can be found here: https://repl.it/@ArchieMaclean/Scottish-SMC-2019-Round-2-S5

check_pair :: (Int, Int) -> Bool
check_pair (x,y) = ((max 70 (min x y)) == min (max 70 x) y)


main = print (length (filter check_pair [(x,y) | x <- [1..100], y <- [1..100]]))
