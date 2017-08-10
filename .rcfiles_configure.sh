# Sets up my linux environment.
# Only tested on debian-based machines

# Install zsh
sudo apt-get update
sudo apt-get install zsh
chsh -s `which zsh`

# Install oh-my-zsh
wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O omz_setup.sh
# Fix oh-my-zsh installer so it doesn't launch zshell
grep -v "[ ]*env zsh$" omz_setup.sh > omz_setup_fixed.sh
sh omz_setup_fixed.sh
rm -f omz_setup omz_setup_fixed

# Download git repository
git init
git remote add origin git@github.com:jaredjxyz/rcfiles.git
git fetch origin master
git reset origin/master --hard

# Download vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
