-- Using library functions, define a function halve :: [a] -> ([a],[a]) 
-- that splits an even-lengthed list into two halves. For example
-- “> halve [1,2,3,4,5,6]
--  ([1,2,3],[4,5,6])”

halve xs = splitAt (length xs ‘div‘ 2) xs

-- Define a function third :: [a] -> a that returns the third element in a list 
-- that contains at least this many elements using:
-- a.head and tail;
-- b.list indexing !!;
-- c.pattern matching. 

third xs = head (tail (tail xs))

third xs = xs !! 2

third (_:_:x:_) = x


safetail xs = if null xs then [] else tail xs

safetail [] = []
safetail (_:xs) = xs