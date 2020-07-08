cd ~
mkdir install

# Updating the system and getting important utilities
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git wget curl

# # Yay installation
# if hash yay>/dev/null; then
#   echo "yay is executable, let's update"
#   yay
# else
#   echo "Need to install yay first!"
#   cd ~/install
#   git clone https://aur.archlinux.org/yay.git
#   cd yay
#   makepkg -si
# fi

# Commmon tools installation
sudo apt-get install fish exa ctags python-pip ffmpeg neofetch

# Powerline for shell installation
sudo pip install powerline-shell

# Installing vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Font installation
# yay -S nerd-fonts-hack ttf-exo-2

# Setting up
git config --global core.excludesfile '~/global.gitignore'
chsh -s /usr/bin/fish
