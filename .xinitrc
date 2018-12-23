xrdb -merge ~/.Xresources
xrdb -merge ~/.Xresources.dark

xmodmap ~/.Xmodmap

exec i3 -V -d all -c ~/.i3/config > ~/i3log 2>&1
