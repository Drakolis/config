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
brew install ffmpeg ctags exa mc bat htop midnight-commander

echo "Vim Plugins"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "MC theme install"
mkdir -p $HOME/.local/share/mc/skins && cd $HOME/.local/share/mc/skins && git clone https://github.com/catppuccin/mc.git && ln -s -f ./mc/catppuccin.ini .

echo "asdf"
brew install asdf
asdf plugin add java
asdf plugin add nodejs
asdf plugin add rust
asdf plugin add python

echo "zsh plugins"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k\
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

echo "Font installation"
cd /Library/Fonts;
curl -o "MesloLGS NF Regular.ttf" 'https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf' --compressed;
curl -o "MesloLGS NF Bold.ttf" 'https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf' --compressed;
curl -o "MesloLGS NF Italic.ttf" 'https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf' --compressed;
curl -o "MesloLGS NF Bold Italic.ttf" 'https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf' --compressed;
