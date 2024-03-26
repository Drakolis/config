# Homebrew installation
if hash brew>/dev/null; then
  echo "brew is executable, let's update"
  brew
else
  echo "Need to install brew first!"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "Getting important utilities"
brew install git wget go curl

echo "Commmon tools installation"
brew install ffmpeg ctags fish exa mc bat htop neofetch

echo "Vim Plugins"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "MC theme install"
mkdir -p $HOME/.local/share/mc/skins && cd $HOME/.local/share/mc/skins && git clone https://github.com/catppuccin/mc.git && ln -s -f ./mc/catppuccin.ini .

# Shell
chsh -s /usr/bin/fish

echo "Shell extensions"
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher list
fisher update
# fisher add jorgebucaran/fisher
# fisher add jorgebucaran/nvm.fish
# fisher add 0rax/fishline
# fisher add catppuccin/fish
fish

echo "Installing Node.js"
nvm install latest
nvm use latest

echo "Font installation"
cd /Library/Fonts;
curl -o "MesloLGS NF Regular.ttf" 'https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf' --compressed;
curl -o "MesloLGS NF Bold.ttf" 'https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf' --compressed;
curl -o "MesloLGS NF Italic.ttf" 'https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf' --compressed;
curl -o "MesloLGS NF Bold Italic.ttf" 'https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf' --compressed;
