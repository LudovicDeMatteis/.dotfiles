{
  pkgs,
  lib,
  inputs,
  ...
}:
{
  imports = [
    ./neovim
  ];

  programs = {
    # Let Home Manager install and manage itself.
    home-manager.enable = true;
  };

  home = {
    stateVersion = "24.11";

    username = lib.mkDefault "ldematteis"; 
    homeDirectory = lib.mkDefault "/home/ldematteis";

    packages = with pkgs; [
      # Other utils
      mprocs
      ncdu
      tlrc
      wget
      btop
    ];
  };
}
