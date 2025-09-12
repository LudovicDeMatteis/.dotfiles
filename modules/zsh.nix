{
  programs.zsh = {
    enable = true;
    autocd = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      # Aliases for common commands
      ll = "ls -l";
      la = "ls -a";
      mamba = "micromamba";
    };
    initContent = ''
      export NIX_REMOTE=""
      eval "$(micromamba shell hook --shell zsh)"
    '';
    # Enable Oh My Zsh
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
      ];
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.bash = {
    enable = true;
    profileExtra = ''
     alias element-desktop="element-desktop --no-sandbox"
     export PATH=$PATH:/home/ldematteis/.nix-profile/bin
     export XDG_DATA_DIRS="/home/ldematteis/.nix-profile/share:$XDG_DATA_DIRS"
    '';
    bashrcExtra = ''
      exec zsh
    '';
  };
}
