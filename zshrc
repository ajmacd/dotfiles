if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

source ~/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle vi-mode

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme blinks

antigen apply

export VISUAL=vim
export EDITOR="$VISUAL"

