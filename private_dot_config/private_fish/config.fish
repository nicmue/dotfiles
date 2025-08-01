eval "$(/opt/homebrew/bin/brew shellenv)"

fish_vi_key_bindings

if command -v eza > /dev/null
	abbr -a l 'eza -la'
else
	abbr -a l 'ls -la'
end

# zellij
abbr -a za 'zellij attach -c'
abbr -a zam 'zellij attach -c main'

set --universal nvm_default_version 22

fzf --fish | source
zoxide init --cmd=cd fish | source

starship init fish | source

direnv hook fish | source

source "$HOME/.cargo/env.fish"

# various
abbr -a uuidv4 "uuidgen | tr '[:upper:]' '[:lower:]'"

# everest
alias envexec "~/.config/scripts/everest/env-exec.bash"
alias envlogin '~/.config/scripts/everest/env-login.bash'
alias docker-login "~/.config/scripts/everest/docker-login.bash"
alias aws-login "~/.config/scripts/everest/aws-login.bash"
alias kubectl-prepare "~/.config/scripts/everest/kubectl-prepare.bash"
abbr -a aws-profiles "aws configure list-profiles"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.fish 2>/dev/null || :
