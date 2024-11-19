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

### Install Nushell

Use `brew` to install Nushell: https://www.nushell.sh/book/installation.html

### Install Starship

Follow instruction here: https://starship.rs/guide/#step-1-install-starship

## Install Zoxide

Follow instructions here: https://github.com/ajeetdsouza/zoxide

### Install tmux

Install tmux, and write the following into `~/.tmux.conf`:

```sh
# Use Control + A as the prefix key-combo.
set-option -g prefix C-a
unbind-key C-b
bind-key C-a send-prefix
```

### Setup ASDF.

1. Use the _Nushell & Git_ method from https://asdf-vm.com/guide/getting-started.html.
2. Follow official instructions to install plugins:
   1. [Node.js plugin](https://github.com/asdf-vm/asdf-nodejs/)
   2. [Ruby plugin](https://github.com/asdf-vm/asdf-ruby)
   3. [Erlang plugin](https://github.com/asdf-vm/asdf-erlang) and the latest OTP.
   4. [Elixir plugin](https://github.com/asdf-vm/asdf-elixir) _(after installing Erlang)_.

## Set up Nushell

Add to the end of `$nu.config-path`:

```sh
# Aliases
alias ga = git add
alias gd = git diff
alias gg = git grep -in
alias gp = git push
alias gst = git status
alias gdca = git diff --cached
alias tmux = tmux -u

# Load Starship's config.
use ~/.cache/starship/init.nu

# Set up ASDF.
$env.ASDF_DIR = ($env.HOME | path join '.asdf')
 source /home/hari/.asdf/asdf.nu

# Set up Zoxide.
source ~/.zoxide.nu
```

Update `$nu.env-path`:

```sh
# Append path containing Zoxide.
$env.PATH = ($env.PATH | append "/home/hari/.local/bin")

# Append brew to path.
$env.PATH = ($env.PATH | append "/home/linuxbrew/.linuxbrew/bin")

# Init zoxide.
zoxide init nushell | save -f ~/.zoxide.nu
```

### GitHub CLI

Install and set up the GitHub CLI following [official instructions](https://github.com/cli/cli#installation).

## Setting up VSCode

Turn on the _Settings Sync_ feature - allow it to set up extensions and settings.

A backup of VSCode's settings can be found in the `vscode.json` file alongside this README.
