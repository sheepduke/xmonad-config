module Config where

import qualified KeyBinding
import XMonad
import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

myManageHook =
  composeAll
    [ className =? "Emacs" --> doShift "1",
      className =? "Firefox" --> doShift "2",
      className =? "keepassxc" --> doShift "7",
      className =? "KeePassXC" --> doShift "7"
    ]

config :: XConfig (Choose Tall (Choose (Mirror Tall) Full))
config =
  def
    { modMask = KeyBinding.modMask,
      terminal = "urxvt",
      manageHook = myManageHook,
      borderWidth = 0
    }
    `removeKeysP` KeyBinding.removedKeys
    `additionalKeysP` KeyBinding.additionalKeys
