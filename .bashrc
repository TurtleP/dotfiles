#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias mpv-quiet='mpv --really-quiet'
alias ls='ls --color=auto'
alias remove-orphans='sudo pacman -Rns $(pacman -Qtdq)'
alias pacman='sudo pacman'
alias ndk-build="sudo ~/Android/Ndk/ndk-build"
alias fc-cache='fc-cache -fv'
alias cls='clear'

mpv-search() {
	mpv ytdl://ytsearch:"$@"
}

# Uses Hack (https://github.com/chrissimpkins/Hack) for the font
# Can use other powerline fonts, but I haven't tested them

#  right divider patched
#  left divider patched
# ⌚ time
#  git branch
#  lock
# ✖ interrupt

# mid gray 240
# blue 31
# darker gray 235
# git
	# clean : pistachio 184
	# untracked: pinkish red 161
	# staged : light orange 202
# filesystem
	# read-only (lock) : red 196

parse_git_branch()
{
	local RES=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	echo "$RES"
}

parse_git_status()
{
	local RES=`git status --ignore-submodules 2> /dev/null`
	local COLOR="184"
	if [[ "${RES,,}" == *"changes to be committed"* ]]; then
		COLOR="166"
	elif [[ "${RES,,}" == *"untracked files"* ]]; then
		COLOR="161"
	elif [[ "${RES,,}" == *"changes not staged for commit"* ]]; then
		COLOR="161"
	fi
	echo "$COLOR"
}

parse_ext()
{
	if [[ -n $(parse_git_branch) ]]; then
		printf "$(tput sgr0)$(tput setab $(parse_git_status))$(tput setaf 240)$(tput sgr0)$(tput setab $(parse_git_status))$(tput setaf 235)  $(parse_git_branch)  $(tput sgr0)$(tput setab 235)$(tput setaf $(parse_git_status))%s" ""
	else
		printf " $(tput sgr0)$(tput setaf 240)$(tput setab 235)" ""
	fi
}

rightprompt()
{
    TIME=`date +%H:%M`
    printf "$(tput setab 235)%$(($COLUMNS))s" "${TIME}"
}

prot_fs()
{
    local LOCK=""
    if [[ ! -w $(pwd) ]]; then
        LOCK=""
    fi

    printf "$(tput setaf 196)$LOCK$(tput sgr0)$(tput setab 240)"
}

export PS1='\[$(tput sc; rightprompt; tput rc)\]' # right prompt
PS1=$PS1'$(tput setab 31)\u@\h$(tput sgr0)$(tput setaf 31)$(tput setab 240)' # uname@host
PS1=$PS1'$(tput sgr0)$(tput setab 240) \W `prot_fs`' # working dir

PS1=$PS1'`parse_ext`'
PS1=$PS1'$(tput sgr0)\n$ ' # newline $

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
