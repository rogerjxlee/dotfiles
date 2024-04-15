path+=$HOME/.local/bin

case $(uname -s) in
  Darwin )
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ;;
  Linux )
    alias screen-off="xset dpms force off"
    case $(cat /etc/os-release | grep ^ID |sed 's/ID=//') in
      debian )
        alias upgrade="sudo apt update -y; sudo apt upgrade -y; sudo apt dist-upgrade -y"
      ;;
    esac
    ;;
esac

export EDITOR=vim

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

alias ls="ls --color=auto"
alias strip-image-metadata="mogrify -strip"
