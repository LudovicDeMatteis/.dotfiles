{
  pkgs,
  lib,
  imports,
  ...
}:
{
  imports = [
    ./neovim
    ./git.nix
    ./monitoring.nix
    ./viewers.nix
    ./zsh.nix
    ./direnv.nix
    ./element.nix
  ];
}
