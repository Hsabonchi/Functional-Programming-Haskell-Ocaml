 <h5> String in Haskell is a list of characters. So to match the empty String you need to match an empty list ([]). 
   Your pattern (x:xs) will only match lists or Strings with at least one element because it consists of one element (x) and the rest (xs), which could be empty or non-empty.</h5>

 #### Q)
 
 <pre>
  Write a function named $greet$ (with type $String -> String$ ) that takes a
  person's name and says "Hi " to that person. If the name provided is an empty
  string, the $greet$ function should return "Hi there"  
  </pre>

#### A)
        <pre>
           greet s| null s = "Hi There"
           |otherwise = "Hi " ++  s
        </pre>
#### Q)
 <pre>
        Write a function named $palindrome$ (with type $String -> Bool$) that takes a
        string and checks whether the string is a palindrome or not. (A palindrome is
        a word, like "level" or "racecar", that reads the same forward or backward.)
        e.g. $palindrome "level"$ returns $True$
        e.g. $palindrome "hello"$ returns $False$
</pre>

#### A)

               palindrome str | str == (reverse str) = True
               | otherwise   = False



- To test a string for emptiness, use the $null$ function.

-- writes string to stdout
    putStr :: String -> IO ()

-- writes string to stdout followed by newline
     putStrLn :: String -> IO ()
     
getLine :: ListLikeIO full item => IO full
