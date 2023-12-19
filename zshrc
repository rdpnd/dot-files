autoload -Uz compinit
compinit

for file  (~/.zsh-config/*.zsh); do
   source "$file"
done

eval "$(starship init zsh)"


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Restart your shell for the changes to take effect.

export PATH=~/.npm/bin:$PATH
export NODE_PATH=`npm root -g`

autoload bashcompinit && bashcompinit
source $(brew --prefix)/etc/bash_completion.d/az

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
