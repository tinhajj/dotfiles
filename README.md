git clone repo into ~/ directory with recursive option to get submodules

in dotfiles move .git* files out of directory (.git, .gitmodules, .gitmodules)

symlink all dot files and dot folders

move all files under temp into dotfiles and delete temp folder

to update submodules `git submodule update --init --recursive`

```
cd ~
git clone --recursive https://github.com/tinhajj/dotfiles.git
cd dotfiles
mkdir temp && mv .git* temp/
cd ~
ln -s ./dotfiles/.* ./
cd dotfiles
mv temp/.* ./
rm -rf temp
```
