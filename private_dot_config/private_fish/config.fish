fish_vi_key_bindings

if command -v eza > /dev/null
	abbr -a l 'eza -la'
else
	abbr -a l 'ls -la'
end

# zellij
abbr -a za 'zellij attach -c'
abbr -a zam 'zellij attach -c main'


fzf --fish | source
zoxide init --cmd=cd fish | source

starship init fish | source

source "$HOME/.cargo/env.fish"
