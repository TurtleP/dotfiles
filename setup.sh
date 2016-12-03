# Yeah so this is a bash script and it'll set up a lot of the stuff I need.
# All you'll need to do is do chmod +x ./setup.sh and run it from terminal

# i3 config
mv .config ~/

# fonts used
mv .fonts ~/

# backgrounds
mv background ~/

# .bashrc
mv .bashrc ~/

#gtk-2.0 thing
mv .gtkrc-2.0 ~/

#terminal
mv .Xresources ~/
xrdb -merge ~/.Xresources

pacman -S i3 i3-gaps i3lock-fancy-git rxvt-unicode luarocks5.1 obs-studio spotify \
  discord-canary firefox dropbox libreoffice-fresh lxappearance nautilus git \
  audacity tiled visual-studio-code love jdk7-open-infinality gtk-theme-arc-git \
  paper-icon-theme-git dunts compton

# Install moontastic terminal theme
# Thanks VideahGams, you're awesome, fam!
sudo luarocks-5.1 install moontastic
