sudo pacman -S compton
echo 'exec compton -CGb --backend glx --vsync opengl' >> ~/.config/i3/config
