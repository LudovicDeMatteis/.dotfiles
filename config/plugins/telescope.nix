{
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>ff" = "find_files";
      "<leader>fg" = "live_grep";
      "<leader>b" = "buffers";
      "<leader>fh" = "help_tags";
      "<leader>fc" = "command_history";
      "<leader>fd" = "diagnostics";

      "<C-p>" = "git_files";
      "<leader>p" = "oldfiles";
      "<C-f>" = "live_grep";
    };

    settings.defaults = {
      file_ignore_patterns = [
        "^.git/"
        "^.mypy_cache/"
        "^__pycache__/"
        "^output/"
        "^data/"
      ];
      set_env.COLORTERM = "truecolor";
    };
  };

    # Find TODOs
    keymaps = [
      {
        mode = "n";
        key = "<C-t>";
        action.__raw = ''
          function()
            require('telescope.builtin').live_grep({
              default_text="TODO",
              initial_mode="normal"
            })
          end
        '';
        options.silent = true;
      }
    ];
}
