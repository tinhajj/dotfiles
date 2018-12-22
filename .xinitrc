[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3 -V -d all -c ~/.i3/config > ~/i3log 2>&1
