# https://www.soberkoder.com/better-zsh-history/

export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY

