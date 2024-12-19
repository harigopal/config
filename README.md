# Development environment configuration

This repo contains instructions for setting up my developer environment and snippets from configuration files.

Keeping it here helps me speed up setup, and maintain a uniform experience across my machines.

## Setting up WSL

### Download and install patched _Cascadia Code_.

1. Download `CascadiaCode.zip` from https://www.nerdfonts.com.
2. Install the _vanilla_ NF (Nerd Font) version of the font - this includes ligatures.
3. Configure _Terminal_ to use `CaskaydiaCove NF`.

### Install essentials

```sh
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

## Install Zoxide

1. Follow instructions here: https://github.com/ajeetdsouza/zoxide
2. Update `.zshrc`:

```sh
# Update PATH to include zoxide and brew
export PATH="$HOME/.local/bin:/home/linuxbrew/.linuxbrew/bin:$PATH"

# Load zoxide
eval "$(zoxide init zsh)"
```

### Install tmux

Install tmux, and write the following into `~/.tmux.conf`:

```sh
# Use Control + A as the prefix key-combo.
set-option -g prefix C-a
unbind-key C-b
bind-key C-a send-prefix
```

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
