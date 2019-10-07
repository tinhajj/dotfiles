xrdb -merge ~/.Xresources
xrdb -merge ~/.Xresources.dark

xmodmap ~/.Xmodmap

export _JAVA_AWT_WM_NONREPARENTING=1
slstatus &
exec dwm

#exec i3 -c ~/.i3/config
#exec xmonad
