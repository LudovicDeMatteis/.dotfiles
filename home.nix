{
  pkgs,
  lib,
  inputs,
  ...
}:
{
  imports = [
    ./modules
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
      pkgs.fontconfig
      imgcat
      ripgrep
      tmux
      nerd-fonts.iosevka
      uv

      # Messaging
      discord

      # Office
      zotero

      # Misc 
      spotify

      # Nixpkgs
      nix-update
      nixfmt-rfc-style
    ]; 
  };

  fonts = {
    fontconfig.enable = true;
  };
}
