# Home manager config
This is my home manager configuration.

## Modules
For now, this is only a starting point. I used [NixVim](https://github.com/nix-community/nixvim) to configure my neovim plugins.

## Updating the configuration
To update the home-manager configuration, use
```
nix run .#home-manager -- switch --flake .
```


# TODO
## Additions
- I want to add my configuration for several softwares, such as firefox and thunderbird.
- I want to add a neovim plugin for running Jupyter notebook

## Fixes
It seems like I got some issue appearing when saving some files (e.g. this ReadMe), I should fix this
