-- writes string to stdout
    putStr :: String -> IO ()

-- writes string to stdout followed by newline
     putStrLn :: String -> IO ()
     
getLine :: ListLikeIO full item => IO full
