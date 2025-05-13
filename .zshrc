HISTFILE=~/.zsh_history
HISTSIZE=150
SAVEHIST=500

eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"

source <(fzf --zsh)
autoload -U compinit; compinit
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/F-Sy-H/F-Sy-H.plugin.zsh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lgit='lazygit'
alias env='sh ~/personal/env/setup.sh'

# Macos settings
if [[ "$(uname)" == "Darwin" ]]; then
    export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
    export VCPKG_ROOT="/Users/andrewhaynes/vcpkg"
    export PATH="$VCPKG_ROOT:$PATH"
    export TERM=tmux-256color
    export PATH="/opt/homebrew/opt/unzip/bin:$PATH"

    return
fi

# Everything below this point will only run on Linux (Arch or others)
alias comp='rm -rf config.h && sudo make clean install'
