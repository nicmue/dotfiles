if command -v eza > /dev/null
	abbr -a l 'eza -la'
else
	abbr -a l 'ls -la'
end

abbr -a za 'zellij attach -c'
abbr -a zam 'zellij attach -c main'

fzf --fish | source
zoxide init --cmd=cd fish | source

starship init fish | source
