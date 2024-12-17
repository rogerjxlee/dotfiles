path+=$HOME/.local/bin

case $(uname -s) in
  Darwin )
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ;;
  Linux )
    alias screen-off="xset dpms force off"

    case $(cat /etc/os-release | grep ^ID |sed 's/ID=//') in
      debian )
        upgrade () {
          sudo apt update -y
          sudo apt upgrade -y
        }
      ;;
    esac
    ;;
esac

export EDITOR=vim

if [ -f ~/.functions ]; then
  . ~/.functions
fi

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

alias ls="ls --color=auto"
