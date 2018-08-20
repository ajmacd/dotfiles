source ~/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle vi-mode

antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

export VISUAL=vim
export EDITOR="$VISUAL"

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export INC_APPEND_HISTORY=false

export HOMEBREW_GITHUB_API_TOKEN=e1ab5c07766796968cd728508f6d3c27630e49c3
export SLACK_SYNC_DEV_AUTO_ATTACH=1

# Fix history-substring-search plugin (and under tmux).
bindkey '\e[A' history-substring-search-up
bindkey '\e[B' history-substring-search-down

source ~/.git-prompt.sh
precmd () { __git_ps1 "%n" ":%~$ " "|%s" }

# git tab-completion
autoload -Uz compinit && compinit

if [ $(uname) = "Darwin" ]; then
    # Solarized ls colors.
    export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#nvm use --delete-prefix v8.1.

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

