# Yeah so this is a bash script and it'll set up a lot of the stuff I need.
# All you'll need to do is do chmod +x ./setup.sh and run it from terminal

# i3 config
mv .config ~/

# .bashrc
mv .bashrc ~/

sudo pacman -S feh obs-studio ncmpcpp \
  dropbox libreoffice-fresh lxappearance nautilus git \
  audacity tiled love dunst compton transset-df mpd mpv youtube-dl

yaourt -S pacaur hyper ttf-hack-powerline-git discord-canary visual-studio-code firefox