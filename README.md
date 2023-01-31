# Developer Config

This repo contains instructions for setting up my developer environment and snippets from configuration files.

Keeping it here helps me speed up setup, and maintain a uniform experience across my machines.

## Setting up VSCode

### Install extensions

1. DotENV: https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv
2. WSL: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl
3.

## Setting up WSL

### Download and install patched _Cascadia Code_.

1. Download `CascadiaCode.zip` from https://github.com/ryanoasis/nerd-fonts/releases.
2. Install all font files tagged as _Windows Compatible_.
3. Configure _Terminal_ to use `CaskaydiaCove NF` (NFM is the _Mono_ font).

### Install ZSH

Remember to not configure zsh on first-load.

### Use _Prezto_ to setup ZSH

1. Follow instructions here: https://github.com/sorin-ionescu/prezto
2. Match settings in `.zprestorc` with the one stored in this repo.
3. When launching a new terminal, Powerlevel10k should offer its configuration options. To redo the configuration step, run `p10k configure`.

### Install tmux

Install tmux, and copy over `.tmux.conf` from this repo to home folder.

### Set up aliases

1. Copy over `.aliases` from this repo to home folder.
2. Add the line `source ~/.aliases` to `~/.zshrc`.