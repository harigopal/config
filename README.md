# Development environment configuration

This repo contains instructions for setting up my developer environment and snippets from configuration files.

Keeping it here helps me speed up setup, and maintain a uniform experience across my machines.

## Setting up WSL

### Download and install patched _Cascadia Code_.

1. Download `CascadiaCode.zip` from https://www.nerdfonts.com, which can be found under the name _CaskaydiaCove Nerd Font_.
2. Unzip the archive and install all font files under the name `CaskaydiaCoveNerdFont-*`.
3. Configure _Terminal_ to use `CaskaydiaCove NF`.

### Install essentials

```sh
sudo apt-get update &&
sudo apt-get install curl wget git build-essential unzip tmux
```

### Install Brew

Follow instructions at https://brew.sh.

### Install Zsh for Humans

Visit https://github.com/romkatv/zsh4humans and follow installation instructions.

This will install ZSH and also set up the terminal with Powerlevel10k.

## Load aliases

1. Copy the `.aliases` file from this repo to your home directory (`~/.aliases`).
2. Add the line `source ~/.aliases` to `~/.zshrc`.

### Configure tmux

Write the following into `~/.tmux.conf`:

```sh
# Use Control + A as the prefix key-combo.
set-option -g prefix C-a
unbind-key C-b
bind-key C-a send-prefix
```

### Setup ASDF.

1. Use `brew` to install ASDF: `brew install asdf`.
2. Follow [official instructions for setting up shell integration](https://asdf-vm.com/guide/getting-started.html).
3. Follow official instructions to install plugins:
   1. [Node.js plugin](https://github.com/asdf-vm/asdf-nodejs/)
   2. [Ruby plugin](https://github.com/asdf-vm/asdf-ruby)
   3. [Erlang plugin](https://github.com/asdf-vm/asdf-erlang) and the OTP matching the version of Elixir to be installed.
   4. [Elixir plugin](https://github.com/asdf-vm/asdf-elixir) _(after installing Erlang)_.

## Git

Set up basics for git:

```sh
git config --global user.name "Name"
git config --global user.email "Email address"
git config --global init.defaultBranch main
```

Set up a new SSH key:

```sh
ssh-keygen -t ed25519 -C "Email address"
```

Add the new key to GitHub: https://github.com/settings/keys.

Prune old keys from GitHub, if appropriate.

### GitHub CLI

Install and set up the GitHub CLI following [official instructions](https://github.com/cli/cli#installation).

## Setting up VSCode

Turn on the _Settings Sync_ feature - allow it to set up extensions and settings.

A backup of VSCode's settings can be found in the `vscode.json` file alongside this README, just in case the sync fails.
