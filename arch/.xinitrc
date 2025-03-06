# path visible in dmenu
export PATH="$PATH:$HOME/bin"

# disks automounting
#udiskie &

xrandr --dpi 96
xrdb -merge ~/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec i3
