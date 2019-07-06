local host_name=%M
local user_name=$USER
local fg_blue="%{$fg[blue]%}%B"
local prompt_string="»"
local current_directory="%1~"

local fg_red="%{$fg[red]%}%B "
local fg_reset="%{$reset_color%}"

function precmd {
    if [[ ! -w $(pwd) ]]; then
	colour=${fg_red}
    else
	colour=${fg_reset}
    fi
}

PROMPT='${fg_blue}${user_name}@${host_name}${fg_reset} ${prompt_string}${colour} ${current_directory}${fg_reset} $(git_custom_prompt) ${fg_reset}'$'\n''» ' 

# oh-my-zsh $(git_prompt_info) puts 'dirty' behind branch
git_custom_prompt() {
  # branch name (.oh-my-zsh/plugins/git/git.plugin.zsh)
  local branch=$(current_branch)
  if [ -n "$branch" ]; then
    # parse_git_dirty echoes PROMPT_DIRTY or PROMPT_CLEAN (.oh-my-zsh/lib/git.zsh)
    local gap=""
    if [ ! -z "$(parse_git_dirty)" ]; then
        gap=" "
    fi
    echo "%{$fg[yellow]%}%B$(parse_git_dirty)${gap} $branch"
  fi
}
