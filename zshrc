source ~/.zsh/antigen/antigen.zsh

antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Pure theme settings.
export PURE_GIT_UNTRACKED_DIRTY=0

export VISUAL=vim
export EDITOR="$VISUAL"

PATH="$HOME/bin:$PATH"

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

