{
  programs.zsh = {
    enable = true;
    autocd = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    shellAliases = {
      # Aliases for common commands
      ll = "ls -l";
      la = "ls -a";
    };
    # Enable Oh My Zsh
    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
      plugins = [
      ];
    };
  };
}
