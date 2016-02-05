
#http://tutos.readthedocs.org/en/latest/source/Arch.html

#yaourt update-pacman-mirrorlist
#sudo update-pacman-mirrorlist

sudo mkdir /root/.gnupg
sudo touch dirmngr_ldapservers.conf
sudo pacman-key --refresh-keys
sudo pacman-key -r 962DDE58
sudo pacman-key --lsign-key 962DDE58
echo '[infinality-bundle]' | sudo tee --append /etc/pacman.conf
echo 'Server = http://bohoomil.com/repo/$arch' | sudo tee --append /etc/pacman.conf

sudo pacman -Syu
sudo pacman -S i3 xorg xorg-xinit vim git chromium gedit lxappearance arandr alsa-firmware alsa-utils alsa-plugins pulseaudio-alsa pulseaudio thunar thunar-volman thunar-archive-plugin numix-frost-themes numix-icon-theme-square zsh gnome-keyring infinality-bundle networkmanager network-manager-applet udiskie acpi
sudo pacman -R vi

echo '# autostart systemd default session on tty1' | sudo tee --append /etc/profile
echo 'if [[ "$(tty)" == '/dev/tty1' ]]; then' | sudo tee --append /etc/profile
echo 'exec startx' | sudo tee --append /etc/profile
echo 'fi' | sudo tee --append /etc/profile

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp ~/dev/dotfiles/oh-my-zsh-themes/my.zsh-theme ~/.oh-my-zsh/themes
cp ~/dev/dotfiles/.screenrc ~/
cp ~/dev/dotfiles/.yaourtrc ~/
cp ~/dev/dotfiles/.zshrc ~/
cp ~/dev/dotfiles/.Xdefaults ~/
cp ~/dev/dotfiles/.vimrc ~/
cp ~/dev/dotfiles/.xinitrc ~/
mkdir -p ~/.config/i3
mkdir ~/.config/i3status
cp ~/dev/dotfiles/.config/i3/config ~/.config/i3/
cp ~/dev/dotfiles/.config/i3status/config ~/.config/i3status/
cp ~/dev/dotfiles/.config/.i3blocks.conf ~/.config
yaourt -S vim-jellybeans
yaourt -S i3blocks
yaourt -S dmenu2
yaourt -S ttf-vista-fonts
yaourt -S rxvt-unicode-fontspacing-noinc-vteclear-secondarywheel
sudo pacman -S rxvt-unicode-terminfo
#yaourt intellij-idea-ultimate-edition
#yaourt unity-editor
