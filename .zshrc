# Start tmux
if [[ -z "$TMUX" ]]; then
  tmux new-session -d '~/.tmuxrc; zsh' \; attach
fi

# ZSH Settings
ZSH=$HOME/.oh-my-zsh
plugins=(git nyan rails bundler command-not-found pip)
source $ZSH/oh-my-zsh.sh

# Prompt
PROMPT='%{$fg_bold[magenta]%}%m%{$reset_color%}:%{$fg_bold[yellow]%}%~%{$reset_color%}%# '
RPROMPT='%{$fg_bold[green]%}$(git_prompt_info) %{$reset_color%}!%!'
ZSH_THEME_GIT_PROMPT_PREFIX="<%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%} %{$fg[yellow]%}✗%{$fg[green]%}>%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}>"

# Aliases
alias ls='ls --color=auto'
alias l="ls -F"
alias grep='grep --color=auto'
alias df='df -H'
alias kernel="watch 'dmesg|tail'"
alias update="sudo apt-get update && sudo apt-get upgrade"
alias install="sudo apt-get install"
alias remove="sudo apt-get remove"
alias off="sudo shutdown -h now"
alias reload="source ~/.zshrc"
alias quote="shuf -n 1 ~/.quotes.txt"

# Exports
export PYTHONSTARTUP=/home/alex/.pythonrc.py
export EDITOR="vim"
export PAGER="most"
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
export PATH=${PATH}:~/Tools/android-sdk-linux/tools:~/Tools/android-sdk-linux/tools::~/Tools/google_appengine
