git clone repo into ~/ directory with recursive option to get submodules

in dotfiles rename .git and .gitmodules to git and gitmodules respectively

symlink all dot files and dot folders

go back into dotfiles and rename folders again `mv git .git && mv gitmodules .gitmodules`

```
cd ~
git clone --recursive https://github.com/tinhajj/dotfiles.git
cd dotfiles && mv .git git && mv .gitmodules gitmodules && mv .gitignore gitignore
cd ~
ln -s ./dotfiles/.* ./
mv git .git && mv gitmodules .gitmodules && mv .gitignore gitignore
```
