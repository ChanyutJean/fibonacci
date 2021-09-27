import System.Environment

fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)
main = do
    args <- getArgs
    let index = read (args !! 0) :: Int
    if (index < 1 || index > 99999)
        then error "Index must be a positive integer between 1 and 99999."
        else print (fibonacci !! index)
