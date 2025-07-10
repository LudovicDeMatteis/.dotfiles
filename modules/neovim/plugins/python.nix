{
  programs.nixvim = {
    files."after/ftplugin/python.lua" = {
            keymaps = [
              {
                mode = "n";
                key = "<leader>i";
                action.__raw = ''
                  function()
                    vim.lsp.buf.code_action {
                      context = {only = {"source.fixAll.ruff"}},
                      apply = true
                    }
                  end
                '';
                options.silent = true;
              }
            ];
    };
    plugins = {
    lsp.servers = {
      ruff.enable = true;
      pylsp = {
                enable = true;
                settings = {
                  plugins = {
                    jedi_completion.fuzzy = true;

                    pylsp_mypy.enabled = true;

                    # We don't need those as ruff is already providing such features.
                    autopep8.enabled = false;
                    flake8.enabled = false;
                    mccabe.enabled = false;
                    preload.enabled = false;
                    pycodestyle.enabled = false;
                    pydocstyle.enabled = false;
                    pyflakes.enabled = false;
                    pylint.enabled = false;
                    ruff.enabled = false;
                    yapf.enabled = false;
                  };
                };
              };
    };
    };
  };
}
