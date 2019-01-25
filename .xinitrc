xrdb -merge ~/.Xresources
xrdb -merge ~/.Xresources.dark

xmodmap ~/.Xmodmap

#exec i3 -c ~/.i3/config
exec xmonad
