# Sets up my linux environment.
# Only tested on debian-based machines
set -e
cd ~

# Install zsh
sudo apt-get update
sudo apt-get install zsh -y

# Install oh-my-zsh
rm -f .zshrc
wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O omz_setup.sh
# Fix oh-my-zsh installer so it doesn't launch zshell
grep -v "[ ]*env zsh$" omz_setup.sh > omz_setup_fixed.sh
sh omz_setup_fixed.sh
rm -f omz_setup.sh omz_setup_fixed.sh

# Download git repository
git init
git remote add origin git@github.com:jaredjxyz/rcfiles.git || true # Will return true even if repository is already added
git fetch origin master
git reset origin/master --hard

# Download tmux
sudo apt-get install libevent-dev autoconf make automake libncurses5-dev libncursesw5-dev gcc -y
wget -qO- https://github.com/tmux/tmux/releases/download/2.5/tmux-2.5.tar.gz | tar xvz
cd tmux-2.5
./configure && sudo make && sudo make install
cd ..
rm -rf tmux-2.5

# Download vim
sudo apt-get install vim -y

# Download vundle
if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

env zsh
