git clone repo into ~/ directory with recursive option to get submodules, `git clone --recursive https://github.com/tinhajj/dotfiles.git`
in dotfiles rename .git and .gitmodules to git and gitmodules respectively, `mv .git git && mv .gitmodules gitmodules`
`cd ~/` and `ln -s ./dotfiles/.* ./`
go back into dotfiles and rename folders again `mv git .git && mv gitmodules .gitmodules`
