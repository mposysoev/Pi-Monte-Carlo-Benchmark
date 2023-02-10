{-# LANGUAGE BangPatterns #-}
module Main where

import System.Random
import Data.Foldable (Foldable(foldl'))


numberOfIterations :: Int
numberOfIterations = 1000000000
 
makeRandomPoints :: [Double] -> [(Double, Double)]
makeRandomPoints (x:y:rest) = (x, y):makeRandomPoints rest
    
sumInCircle :: (Int, Int) -> (Double, Double) -> (Int, Int)
sumInCircle (!ins, !total) (x, y) = (ins + if x*x + y*y < 1.0 then 1 else 0,
                                total + 1)

run :: [(Double, Double)] -> (Int, Int)
run = foldl' sumInCircle (0, 0)

result :: (Int, Int) -> String
result (inside, total) = show $ 4.0 * fromIntegral inside / fromIntegral total

main :: IO ()
main = do
    g <- newStdGen
    putStrLn . result . run . take numberOfIterations . makeRandomPoints $ randoms g