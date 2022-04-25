#!/bin/bash

#take screenshot
gnome-screenshot -f /tmp/lockscreenshot.png

# blur it
convert /tmp/lockscreenshot.png -blur 0x5 /tmp/lockblur.png

rm /tmp/lockscreenshot.png

#lock the screen
i3lock -i /tmp/lockblur.png
