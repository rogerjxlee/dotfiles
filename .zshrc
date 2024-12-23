path+=$HOME/.local/bin

case $(uname -s) in
  Darwin )
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ;;
  Linux )
    alias open=xdg-open
    alias screen-off="xset dpms force off"

    case $(cat /etc/os-release | grep ^ID |sed 's/ID=//') in
      debian )
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

        upgrade () {
          sudo apt update -y
          sudo apt upgrade -y
        }
      ;;
      arch )
        alias pacman="pacman --noconfirm"
        alias yay="yay --noconfirm"
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

bindkey   '^[[1;5C' forward-word        # ctrl+right_arrow
bindkey   '^[[1;5D' backward-word       # ctrl+left_arrow
bindkey   "^[[H"    beginning-of-line   # home
bindkey   "^[[F"    end-of-line         # end
bindkey   "^[[1~"   beginning-of-line   # home in tmux
bindkey   "^[[4~"   end-of-line         # end in tmux
bindkey   "^[[3~"   delete-char         # delete

alias ls="ls --color=auto"
