# #!/bin/bash
pkill fcitx5 2>/dev/null

sleep 1

setxkbmap -layout "es,ru" -option "grp:alt_shift_toggle"

~/keyboard.sh &
