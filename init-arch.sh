
#http://tutos.readthedocs.org/en/latest/source/Arch.html

#yaourt update-pacman-mirrorlist
#sudo update-pacman-mirrorlist

sudo mkdir /root/.gnupg
sudo touch dirmngr_ldapservers.conf
sudo pacman-key --refresh-keys

sudo pacman -S i3 dmenu xorg xorg-xinit vim git rxvt-unicode rxvt-unicode-terminfo chromium gedit lxappearance arandr alsa-firmware alsa-utils alsa-plugins pulseaudio-alsa pulseaudio thunar thunar-volman thunar-archive-plugin numix-frost-themes numix-icon-theme-square zsh
sudo pacman -R vi

echo 'exec i3' >> ~/.xinitrc
echo '# autostart systemd default session on tty1' | sudo tee --append /etc/profile
echo 'if [[ "$(tty)" == '/dev/tty1' ]]; then' | sudo tee --append /etc/profile
echo 'exec startx' | sudo tee --append /etc/profile
echo 'fi' | sudo tee --append /etc/profile

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~/dev/dotfiles
cp oh-my-zsh-themes/my.zsh-theme ~/.oh-my-zsh/themes
cp .screenrc ~/
cp .yaourtrc ~/
cp .zshrc ~/
cp .Xdefaults ~/
cp .vimrc ~/
mkdir -p ~/.config/i3
mkdir ~/.config/i3status
cp .config/i3/config ~/.config/i3/
cp .config/i3status/config ~/.config/i3status/
yaourt vim-jellybeans
yaourt i3blocks
