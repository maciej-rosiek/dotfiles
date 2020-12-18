pkill -9 pasystray
pkill -9 nm-applet
pkill -9 cbatticon
pkill -9 blueman-applet

sleep 1

pasystray &!
cbatticon &!
blueman-applet &!
nm-applet &!
