{
  programs = {
    git = {
      enable = true;

      userEmail = "ludovic.dematteis2@gmail.com";
      userName = "Ludovic De Matteis";

      extraConfig = {
        core.editor = "nvim";
        github.user = "LudovicDeMatteis";
        mergetool.prompt = false;
        pull.rebase = false;
        init.defaultBranch = "main";
      };
    };

    gh = {
      enable = true;

      settings = {
        git_protocol = "ssh";
      };
    };

    lazygit = {
      enable = true;
      settings = {
        gui = {
          theme = {
            activeBorderColor = [
              "blue"
              "bold"
            ];
            selectedLineBgColor = [ "white" ];
          };
        };
        git = {
          # Improves performance
          # https://github.com/jesseduffield/lazygit/issues/2875#issuecomment-1665376437
          log.order = "default";

          fetchAll = false;
        };
      };
    };
  };

  home.shellAliases = {
    lg = "lazygit";
    gfu = "git fetch upstream";
    gfo = "git fetch origin";
    gpc = "gh pr checkout";
    glg = "git log --graph --abbrev-commit --decorate --date=relative --all";
    gst = "git status";
    gcm = "git commit -m";
    gcmf = "git commit --amend --no-edit";
    gpsup = "git push upstream";
    gadd = "git add";
    gp = "git push";
  };
}
