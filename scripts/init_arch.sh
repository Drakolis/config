cd ~
mkdir install

# Updating the system and getting important utilities
sudo pacman -Syu
sudo pacman -S git wget curl base-devel go

# Yay installation
if hash yay>/dev/null; then
  echo "yay is executable, let's update"
  yay
else
  echo "Need to install yay first!"
  cd ~/install
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepg -si
fi

# Commmon tools installation
yay -S fish exa ctags python-pip ffmpeg neofetch

# Powerline for shell installation
sudo pip install powerline-shell

# Installing vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Font installation
yay -S nerd-fonts-mononoki ttf-exo-2

# DE installation
yay -S i3-gaps i3blocks dmenu_recency rofi morc_menu

# Clean up
yay -r
rm ~/install -rf

# Setting up
git config --global core.excludesfile '~/global.gitignore'
chsh -s /usr/bin/fish
