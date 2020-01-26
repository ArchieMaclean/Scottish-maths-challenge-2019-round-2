getFinalAnswer :: Integer -> Integer -> Integer
getFinalAnswer i a = 10*a+i

getA :: Integer -> Integer -> Integer
getA i n = (i*10^n-(i^2)) `div` (i*10-1)

fil :: Integer -> Integer -> Bool
fil i d = ((i*10^d-(i^2)) `mod` (i*10-1) == 0)

calculateLowest :: Integer -> IO()
calculateLowest i = print (
  getFinalAnswer i (head 
      (map 
        (getA i) 
        (filter 
          (fil i) [1..]
      ))))


-- Change value to calculate other numbers!
main = calculateLowest 4
