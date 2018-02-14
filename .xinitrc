[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

slstatus &

export _JAVA_AWT_WM_NONREPARENTING=1

exec dwm
