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
    ]; # ++ (builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts));
  };

  fonts = {
    fontconfig.enable = true;
  };
}
