module Main where

import qualified Config
import XMonad (xmonad)

main :: IO ()
main = xmonad $ Config.config
