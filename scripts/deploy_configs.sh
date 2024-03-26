cd ..
echo "*nix"
cp .config/fish/* ~/.config/fish
cp .config/neofetch/* ~/.config/neofetch
cp .config/mc/* ~/.config/mc

cp .vimrc ~/.vimrc

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Linux"
  cp .config/alacritty ~/.config/alacritty
  cp .config/dunst ~/.config/dunst
  cp .config/gtk-3.0 ~/.config/gtk-3.0
  cp .config/i3 ~/.config/i3
  cp .config/i3status ~/.config/i3status
  cp .config/polybar ~/.config/polybar
  cp .config/rofi ~/.config/rofi
  cp .config/conky ~/.config/conky
  cp .config/conky_help ~/.config/conky_help
  cp .config/conky_help2 ~/.config/conky_help2
  cp .config/picom.conf ~/.config/picom.conf

  cp .dmenurc ~/.dmenurc
  cp .Xresources ~/.Xresources
  cp .gtkrc-2.0 ~/.gtkrc-2.0
fi
