{
  programs.starship = {
    enable = true;
    # custom settings
    settings = {
      add_newline = false;
      aws.disabled = true;
      gcloud.disabled = true;
      line_break.disabled = true;
    };
  };

  programs.alacritty = {
    enable = true;
    # custom settings
    settings = {
      env.TERM = "xterm-256color";
      font = {
        size = 12;
        draw_bold_text_with_bright_colors = true;
      };
      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
    };
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      export PATH="$PATH:$HOME/.nix-profile/bin"
    '';
  };

  programs.zsh = {
    enable = false;
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
