alias editbash='vim ~/.bashrc'
alias editi3='vim ~/.config/i3/config'
alias updatebash='source ~/.bashrc'
alias editalias='vim ~/.bash_aliases'
alias sudo='sudo '
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ll="ls -lh -sort --color=auto"
alias l="ll"
alias llc="clear; ll"
alias tm="tmux -2u attach -t ses || tmux -2u new -s ses"
alias please='sudo $(history -p !!)'
alias log='tail -n 50 -f'
alias pushd='pushd ./ > /dev/null; dirs -v; dirs > ~/.open_dirs.txt'
alias tabe='vim -p'
alias py='python3'
alias pac="sudo pacman -S"
# alias dmenu="dmenu -l 30 -fn 'Inconsolata-13' -i -nb '#1C2B34' -nf '#a7adba'"
alias v="vim"

# Fuzzy things
# fh - repeat history
fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

fe() {
  local files
  IFS=$'\n' files=($(find . -not -path '*/\.*' | fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && vim "${files[@]}"
}

# Handle dir stack
alias dirs='dirs -v'
alias cd0='cd ~0'
alias cd1='cd ~1'
alias cd2='cd ~2'
alias cd3='cd ~3'
alias cd4='cd ~4'
alias cd5='cd ~5'
