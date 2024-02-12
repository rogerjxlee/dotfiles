path+=$HOME/.local/bin

case $(uname -s) in
  Darwin)
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ;;
  Linux)
    ;;
esac

export EDITOR=vim

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

alias ls="ls --color=auto"
