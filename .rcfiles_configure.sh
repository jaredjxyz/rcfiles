# Sets up my linux environment.
# Only tested on debian-based machines

# Install zsh
sudo apt-get update
sudo apt-get install zsh
chsh -s `which zsh`

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Download git repository
git init
git remote add origin git@github.com:jaredjxyz/rcfiles.git
git pull
