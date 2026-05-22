#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias fastfetch-image='fastfetch -c ~/.config/fastfetch/config-image.jsonc'
alias i-use-ghostbsd-btw="fastfetch -c ~/.dotfiles/fastfetch/.config//fastfetch/config.jsonc --logo ghostbsd"
alias neofetch='fastfetch -c neofetch'

current_tty=$(tty)

if [[ $current_tty == /dev/pts* ]] then
  eval "$(starship init bash)"
fi