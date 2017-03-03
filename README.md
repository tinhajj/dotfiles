git clone repo into ~/ directory with recursive option to get submodules

in dotfiles move .git* files out of directory (.git, .gitmodules, .gitmodules)

to update submodules `git submodule update --init --recursive`

symlink all dot files and dot folders

go back into dotfiles and rename folders again `mv git .git && mv gitmodules .gitmodules`

```
cd ~
git clone --recursive https://github.com/tinhajj/dotfiles.git
cd dotfiles
mkdir temp && mv .git* temp/
cd ~
ln -s ./dotfiles/.* ./
cd dotfiles
mv temp/* ./
rm -rf temp
```
