# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
#        export _JAVA_AWT_WM_NONREPARENTING=1
#	export XDG_CURRENT_DESKTOP=sway
#	export MOZ_ENABLE_WAYLAND=1
#	exec sway
	exec startx
fi

