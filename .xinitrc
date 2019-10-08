xrdb -merge ~/.Xresources

xmodmap ~/.Xmodmap

export _JAVA_AWT_WM_NONREPARENTING=1

#dwm
slstatus &
exec dwm
