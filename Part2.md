- show      means   converts its argument to a string  e.g putStrLn (show 1)
- let       means
- ++        means   string Concatination
- --        means   comment in haskell
- putStrLn  means   (put a String followed by a new Line) takes a String and displays it to the screen, followed by a newline.
- print     means   anyyhink that is not a string use a print

-- In Haskell variables can not be changed like const in java and javaScript.
--  no need for let outside main function.

<pre>
    name ::String
    name="Sabonchi"  
    
     age:: Int
     age =12
    
    main =do
      putStrLn name
      print age
      

</pre>

---
- getLine allows user to type on console.
-  read casts strings to another type
<pre>
     main = do
            putStrLn "please Enter your name"
            name <- getLine
            putStrLn name
            
            
   main =do
        putStrLn "please Enter First number: "
        firstStr <- getLine
        
        putStrLn "please Enter Second number: "
        secondStr <- getLine
        
        let firstNumber = read firstStr::Int
        let secondNumber = read secondStr::Int
        
        print (firstNumber + secondNumber)
</pre>

