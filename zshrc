source ~/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle brew
antigen bundle git
antigen bundle vi-mode

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme blinks

antigen apply

export VISUAL=vim
export EDITOR="$VISUAL"

PATH="$HOME/bin:$PATH"

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

