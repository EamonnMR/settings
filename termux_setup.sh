pkg install git
pip install virtualenv
pkg install dart
pkg install vim

git clone git@github.com:EamonnMR/settings.git

cp settings/.vimrc .
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
