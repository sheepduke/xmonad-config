module KeyBinding where

import qualified Screenshot
import qualified Volume
import XMonad
import XMonad.Actions.ShowText

modMask = mod4Mask

removedKeys = ["M-<Space>"]

additionalKeys =
  [ ("M-S-<Space>", sendMessage NextLayout),
    ("M-S-s", Screenshot.takeSelectScreenshot),
    ("M-s", Screenshot.takeFullScreenshot),
    ("M-<Left>", Volume.lowerVolume 2),
    ("M-<Right>", Volume.raiseVolume 2),
    ("M-<Up>", Volume.raiseVolume 10),
    ("M-<Down>", Volume.lowerVolume 10)
  ]
