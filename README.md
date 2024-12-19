# Development environment configuration

This repo contains instructions for setting up my developer environment and snippets from configuration files.

Keeping it here helps me speed up setup, and maintain a uniform experience across my machines.

## Setting up WSL

### Download and install patched _Cascadia Code_.

1. Download `CascadiaCode.zip` from https://github.com/ryanoasis/nerd-fonts/releases.
2. Install all font files tagged as _Windows Compatible_.
3. Configure _Terminal_ to use `CaskaydiaCove NF` (NFM is the _Mono_ font).

### Install essentials

```
sudo apt install curl git build-essential unzip
```

### Install Brew

Follow instructions at https://brew.sh.

### Install ZSH

Remember to not configure zsh on first-load.

### Use _Prezto_ to setup ZSH

1. Follow instructions here: https://github.com/sorin-ionescu/prezto
2. Match settings in `.zprestorc` with the one stored in this repo.
3. When launching a new terminal, Powerlevel10k should offer its configuration options. To redo the configuration step, run `p10k configure`.

### Set up aliases

1. Copy over `.aliases` from this repo to home folder.
2. Add the line `source ~/.aliases` to `~/.zshrc`.

## Install Zoxide

1. Follow instructions here: https://github.com/ajeetdsouza/zoxide
2. Update `.zshrc`:

```
export PATH="$HOME/.local/bin:/home/linuxbrew/.linuxbrew/bin:$PATH"
eval "$(zoxide init zsh)"
```

### Install tmux

Install tmux, and copy over `.tmux.conf` from this repo to home folder.

### Setup ASDF.

1. Use the _ZSH & Git_ method from https://asdf-vm.com/guide/getting-started.html.
2. Follow official instructions to install plugins:
   1. [Node.js plugin](https://github.com/asdf-vm/asdf-nodejs/)
   2. [Ruby plugin](https://github.com/asdf-vm/asdf-ruby)
   3. [Erlang plugin](https://github.com/asdf-vm/asdf-erlang) and the latest OTP.
   4. [Elixir plugin](https://github.com/asdf-vm/asdf-elixir) _(after installing Erlang)_.

### GitHub CLI

Install and set up the GitHub CLI following [official instructions](https://github.com/cli/cli#installation).

## Setting up VSCode

Turn on the _Settings Sync_ feature - allow it to set up extensions and settings.

A backup of VSCode's settings can be found in the `vscode.json` file alongside this README.
