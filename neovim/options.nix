{
  programs.nixvim = {
    colorschemes.gruvbox.enable = true;
    colorschemes.kanagawa = {
          enable = false;
          settings = {
            colors = {
              palette = {
                fujiWhite = "#FFFFFF";
                sumiInk0 = "#000000";
              };
              theme = {
                all = {
                  ui = {
                    bg_gutter = "none";
                  };
                };
                dragon = {
                  syn = {
                    parameter = "yellow";
                  };
                };
                wave = {
                  ui = {
                    float = {
                      bg = "none";
                    };
                  };
                };
              };
            };
            commentStyle = {
              italic = true;
            };
            compile = false;
            dimInactive = false;
            functionStyle = { };
            overrides = "function(colors) return {} end";
            terminalColors = true;
            theme = "wave";
            transparent = false;
            undercurl = true;
          };
        };

    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    opts = {
      # updatetime = 100;
      fileencoding = "utf-8";
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      breakindent = true;
      undofile = true;
      signcolumn = "yes";
      timeoutlen = 300;
      splitbelow = true;
      splitright = true;
      list = true;
      listchars = {
        tab = "▸ ";
        trail = "·";
        eol = "↵";
        space = "·";
      };
      inccommand = "split";
      cursorline = true;
      scrolloff = 8;
    };
  };
}
