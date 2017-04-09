HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename '/home/water/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

precmd() {
  print -Pn "\e]2;%n in %m at %~\a"
}

export PS1="  "

# Aliases
alias ls='ls --color=auto'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
