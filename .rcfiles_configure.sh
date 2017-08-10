# Sets up my linux environment.
# Only tested on debian-based machines

# Install zsh
sudo apt-get update
sudo apt-get install zsh -y

# Install oh-my-zsh
rm .zshrc
wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O omz_setup.sh
# Fix oh-my-zsh installer so it doesn't launch zshell
grep -v "[ ]*env zsh$" omz_setup.sh > omz_setup_fixed.sh
sh omz_setup_fixed.sh
rm -f omz_setup.sh omz_setup_fixed.sh

# Download git repository
git init
git remote add origin git@github.com:jaredjxyz/rcfiles.git
git fetch origin master
git reset origin/master --hard

# Download tmux
sudo apt-get install tmux -y

# Download vim
sudo apt-get install vim -y

# Download vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

env zsh
