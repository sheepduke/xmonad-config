module Volume (raiseVolume, lowerVolume) where

import Text.Printf (printf)
import XMonad (X, raiseLowest, spawn)

raiseVolume :: Integer -> X ()
raiseVolume offset = spawn $ makeSetVolumeScript $ printf "+%d%%" offset

lowerVolume :: Integer -> X ()
lowerVolume offset = spawn $ makeSetVolumeScript $ printf "-%d%%" offset

makeSetVolumeScript :: String -> String
makeSetVolumeScript offset = printf setVolumeScriptFormat offset
  where
    setVolumeScriptFormat =
      "sinks=$(pactl list sinks short | cut -f 1) \n\
      \ for it in $sinks \n\
      \ do \n\
      \   pactl set-sink-volume $it %s \n\
      \ done"
