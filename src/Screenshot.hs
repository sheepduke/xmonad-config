module Screenshot where

import XMonad
import XMonad.Util.Ungrab (unGrab)

screenshotPath = "~/pictures/screenshots/$(date +%Y-%m-%d_%H.%M.%S.png)"

takeFullScreenshot :: X ()
takeFullScreenshot = unGrab *> spawn ("scrot -q 85 " ++ screenshotPath)

takeSelectScreenshot :: X ()
takeSelectScreenshot = unGrab *> spawn ("scrot --select " ++ screenshotPath)
