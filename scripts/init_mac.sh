# Homebrew installation
if hash brew>/dev/null; then
  echo "brew is executable, let's update"
  brew
else
  echo "Need to install brew first!"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Updating the system and getting important utilities
brew install git wget go

# Commmon tools installation
brew install fish exa ctags ffmpeg neofetch

# Powerline for shell installation
pip3 install powerline-shell

# Installing vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Font installation
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# Plugin managers
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish

# Node setup
nvm install latest
nvm use latest

# Clean up

# Setting up
git config --global core.excludesfile '~/global.gitignore'
chsh -s /usr/bin/fish
