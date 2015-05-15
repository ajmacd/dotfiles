source ~/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle vi-mode

antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Pure theme settings.
export PURE_GIT_UNTRACKED_DIRTY=0

export VISUAL=vim
export EDITOR="$VISUAL"

PATH="$HOME/bin:$PATH"

# Fix history-substring-search plugin.
bindkey "$terminfo[cuu1]" history-substring-search-up
bindkey "$terminfo[cud1]" history-substring-search-down

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

