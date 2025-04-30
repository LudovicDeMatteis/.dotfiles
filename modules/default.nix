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
  ];
}
