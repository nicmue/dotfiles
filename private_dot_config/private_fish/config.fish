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

direnv hook fish | source

source "$HOME/.cargo/env.fish"

# various
abbr -a uuidv4 "uuidgen | tr '[:upper:]' '[:lower:]'"

# everest
abbr -a --set-cursor envexec "direnv exec ~/.config/scripts/everest/direnv/%"
abbr -a envlogin '~/.config/scripts/everest/env-login.bash'
abbr -a docker-login "~/.config/scripts/everest/docker-login.bash"
abbr -a aws-login "~/.config/scripts/everest/aws-login.bash"
abbr -a aws-profiles "aws configure list-profiles"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.fish 2>/dev/null || :
