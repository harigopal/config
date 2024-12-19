###                                 ###
# Leading lines inserted by Presto... #
###                                 ###

# Customize to your needs...

. /usr/local/opt/asdf/asdf.sh

# Load custom aliases
source ~/.aliases

# Update PATH
export PATH="$HOME/.local/bin:/home/linuxbrew/.linuxbrew/bin:$PATH"

# Load ASDF
. "$HOME/.asdf/asdf.sh"

# Load zoxide
eval "$(zoxide init zsh)"

# Optional: Prevent zsh from renaming window titles automatically.
DISABLE_AUTO_TITLE="true"
