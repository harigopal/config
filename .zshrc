# Just an example .zshrc file; the following lines should be at the bottom of your .zshrc file.

# Activate ASDF.
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# Enable shell history for iex.
export ERL_AFLAGS="-kernel shell_history enabled"

# Source aliases
source ~/.aliases
