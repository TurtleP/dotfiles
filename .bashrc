#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias remove-orphans='sudo pacman -Rns $(pacman -Qtdq)'
alias pacman='sudo pacman'
alias ndk-build="sudo ~/Android/Ndk/ndk-build"
alias fc-cache='fc-cache -fv'
alias cls='clear'
alias fix-steam='find ~/.steam/root/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" \) -print -delete'
export PS1="\u@\h \W> "

# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #

#3DS HOMEBREW
export DEVKITPRO=$HOME/devkitpro
export DEVKITARM=$DEVKITPRO/devkitARM
export AEMSTRO=$DEVKITPRO/aemstro
export PATH=$PATH:$DEVKITARM/bin
export PORTLIBS=$DEVKITPRO/portlibs/armv6k

#ANDROID
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk/

#PERL (because fuck you for not allowing i3 to build!)
export PATH=$PATH:/usr/bin/core_perl
