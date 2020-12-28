-- To call the function 'greet' use , greet "Hasan"
-- with one argument
greet name = "Hello, " ++ name ++ "!"

-- Build greet with two arguments
greet2 firstName  lastName = "Hello, " ++ firstName ++ "!"++ "-"++ lastName
----------------------------------------------------------------------------

-- applies the function greet to each element of the list.
--  map greet ["Mary", "Joe"] 

oddeven  num = if mod num  2 == 0
                   then print  "even"
                   else print "odd"



-- Calculate the average of the list
-- ▶ Function average and argument ns are in lowercase
-- ▶ Calling a function is done without parentheses
average ns = sum ns `div` length ns

-- Factorail
--  ▶ If n is 0, then the function equals 1
--  ▶ If n is different from 0, then it goes to the second
--  fac :: INT -> Int
fac 0 = 1
fac n = n * fac (n-1)

-- Sum from m to n
summation x y = sum [x..y] 

-- sumeven :: [Integer] -> Integer
sumeven xs = sum [x | x <- xs, odd x]

