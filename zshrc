source ~/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle vi-mode
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm

antigen apply

# zsh-history-substring-search config
bindkey '\eOA' history-substring-search-up
bindkey '\eOB' history-substring-search-down
export NVM_USE_SILENT=0

export TERM=screen-256color
export DISABLE_AUTO_TITLE="true"
export VISUAL=vim
export EDITOR="$VISUAL"

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/opt/slack-cli-tools:$PATH"

# This is handled by zsh-nvm.
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export INC_APPEND_HISTORY=false

export SLACK_SYNC_DEV_AUTO_ATTACH=1
export SLACK_DEVELOPER_MENU=1

source ~/.git-prompt.sh
precmd () { __git_ps1 "%n" ":%~$ " "|%s" }

# git tab-completion
autoload -Uz compinit && compinit

if [ $(uname) = "Darwin" ]; then
    # Solarized ls colors.
    export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
fi

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

