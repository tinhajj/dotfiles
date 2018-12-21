#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3 -c ~/.i3/config
