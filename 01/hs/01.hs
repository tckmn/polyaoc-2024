#!/usr/bin/env runhaskell

import Data.List

part1 = sum . map diff . uncurry zip . both sort
    where both f (a,b) = (f a,f b)
          diff = abs . uncurry (-)

part2 (a,b) = sum $ a >>= (\x -> filter (==x) b)

main = do
    [a,b] <- transpose <$> map (map read . words) <$> lines <$> readFile "input"
    putStrLn . show $ part1 (a,b)
    putStrLn . show $ part2 (a,b)
