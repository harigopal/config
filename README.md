# Developer Config

This repo contains instructions for setting up my developer environment and snippets from configuration files.

Keeping it here helps me speed up setup, and maintain a uniform experience across my machines.

## Setting up VSCode

### Install extensions

- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
- [ERB Formatter/Beautify](https://marketplace.visualstudio.com/items?itemName=aliariff.vscode-erb-beautify)
- [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [ReScript](https://marketplace.visualstudio.com/items?itemName=chenglou92.rescript-vscode)
- [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
- [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)
- [VSCode Ruby](https://marketplace.visualstudio.com/items?itemName=wingrunr21.vscode-ruby)
- [WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)
- [YAML Sort](https://marketplace.visualstudio.com/items?itemName=PascalReitermann93.vscode-yaml-sort)

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
