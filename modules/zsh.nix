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
    };
    # Enable Oh My Zsh
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git" "thefuck"
      ];
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
