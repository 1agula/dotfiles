echo 'Hello From .zshrc'

# Set Variables

# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# Homebrew cask option
export HOMEBREW_CASK_OPTS='--no-quarantine'
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
#export PATH="$N_PREFIX/bin:$PATH"

typeset -U path

path=(
  "$N_PREFIX/bin"
  $path
)

# Change ZSH Options

# Create Aliases
alias la='exa -laFh --git'
alias ..='cd ..'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias rm=trash

# Customize Prompt
PROMPT='
%1~ %L 🌸🌸🌸 '
RPROMPT='%*'

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

