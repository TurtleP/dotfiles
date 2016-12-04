# Yeah so this is a bash script and it'll set up a lot of the stuff I need.
# All you'll need to do is do chmod +x ./setup.sh and run it from terminal

# i3 config
mv .config ~/

# fonts used
mv .fonts ~/

# backgrounds
mv backgrounds ~/

# .bashrc
mv .bashrc ~/

#gtk-2.0 thing
mv .gtkrc-2.0 ~/

#terminal
mv .Xresources ~/
xrdb -merge ~/.Xresources

pacman -S i3 i3status feh rxvt-unicode luarocks5.1 obs-studio spotify \
  dropbox libreoffice-fresh lxappearance nautilus git \
  audacity tiled love dunst compton

yaourt -S i3-gaps i3lock-fancy-git discord-canary visual-studio-code google-chrome \
  freetype2-infinality fontconfig-infinality jdk8-openjdk-infinality nautilus-dropbox \
  gtk-theme-arc-git paper-icon-theme-git

# Install moontastic terminal theme
# Thanks VideahGams, you're awesome, fam!
sudo luarocks-5.1 install moontastic

sudo chmod +x "/usr/share/lua/5.1/moontastic/init.lua"
