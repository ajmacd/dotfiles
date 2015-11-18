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

# Fix history-substring-search plugin.
bindkey "$terminfo[cuu1]" history-substring-search-up
bindkey "$terminfo[cud1]" history-substring-search-down

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

source ~/.git-prompt.sh
precmd () { __git_ps1 "%n" ":%~$ " "|%s" }
