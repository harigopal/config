# Just an example .zshrc file; the following lines should be at the bottom of your .zshrc file.

# Load homebrew.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Activate ASDF.
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# Append completions to fpath.
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)

# Initialise completions with ZSH's compinit.
autoload -Uz compinit && compinit

# Enable shell history for iex.
export ERL_AFLAGS="-kernel shell_history enabled"

# Source aliases.
source ~/.aliases

# Set editor to Nano.
export EDITOR='/usr/bin/nano'
