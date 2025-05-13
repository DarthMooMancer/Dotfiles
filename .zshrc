HISTFILE=~/.zsh_history
HISTSIZE=150
SAVEHIST=500

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line
bindkey "^[[6~" down-line

eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
export VCPKG_ROOT="/Users/andrewhaynes/vcpkg"
export PATH="$VCPKG_ROOT:$PATH"
export PATH=$PATH:$HOME/flutter/bin
export TERM=tmux-256color
autoload -U compinit; compinit
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/f-sy-h/F-Sy-H.plugin.zsh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias lgit='lazygit'
export PATH="/opt/homebrew/opt/unzip/bin:$PATH"
