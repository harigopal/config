# Development environment configuration

This repo contains instructions for setting up my developer environment and snippets from configuration files.

Keeping it here helps me speed up setup, and maintain a uniform experience across my machines.

## Setting up VSCode

### Install extensions

- [Docker](vscode:extension/ms-azuretools.vscode-docker)
- [DotENV](vscode:extension/mikestead.dotenv)
- [ERB Formatter/Beautify](vscode:extension/aliariff.vscode-erb-beautify)
- [GitHub Copilot](vscode:extension/GitHub.copilot)
- [GitLens](vscode:extension/eamodio.gitlens)
- [Prettier](vscode:extension/esbenp.prettier-vscode)
- [ReScript](vscode:extension/chenglou92.rescript-vscode)
- [Ruby](vscode:extension/rebornix.Ruby)
- [Tailwind CSS IntelliSense](vscode:extension/bradlc.vscode-tailwindcss)
- [VSCode Ruby](vscode:extension/wingrunr21.vscode-ruby)
- [WSL](vscode:extension/ms-vscode-remote.remote-wsl)
- [YAML Sort](vscode:extension/PascalReitermann93.vscode-yaml-sort)

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
4. Add the line `unsetopt PATH_DIRS` to `~/.zshrc` to speed up tab completions on WSL2.

### Set up aliases

1. Copy over `.aliases` from this repo to home folder.
2. Add the line `source ~/.aliases` to `~/.zshrc`.

### Install tmux

Install tmux, and copy over `.tmux.conf` from this repo to home folder.

### Setup ASDF.

1. Use the _ZSH & Git_ method from https://asdf-vm.com/guide/getting-started.html.
2. Follow official instructions to install the [Node.js plugin](https://github.com/asdf-vm/asdf-nodejs/) and the [Ruby plugin](https://github.com/asdf-vm/asdf-ruby).

### GitHub CLI

Install and set up the GitHub CLI following [official instructions](https://github.com/cli/cli#installation).
