if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    alias fastfetch-image="fastfetch -c ~/.dotfiles/fastfetch/.config/fastfetch/config-image.jsonc"
    alias i-use-ghostbsd-btw="fastfetch -c ~/.dotfiles/fastfetch/.config//fastfetch/config.jsonc --logo ghostbsd"
    alias neofetch="fastfetch -c neofetch"
    alias cat="bat"
    alias gcat="/bin/cat"
    alias ls="eza --icons=always"
    alias gls="/bin/ls"
    alias grep="ugrep"
    alias ggrep="/usr/bin/grep"
    alias icat="kitty +kitten icat"
end

function mkcd --description "Create a directory and cd into it"
    mkdir -p $argv[1] && cd $argv[1]
end
