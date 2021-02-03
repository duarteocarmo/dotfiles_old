export ZSH="/home/doc/.oh-my-zsh"
ZSH_THEME="mh"
plugins=(zsh-z zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

alias gst="git status"
alias ga="git add "
alias gc="git commit -m "
alias gp="git push"
alias tn="tmux new -s "
alias tl="tmux ls"
alias ta="tmux attach-session -t "
alias tk="tmux kill-server"
alias vi="nvim"

export PATH="$PATH:/home/doc/.local/bin"

cd ~
