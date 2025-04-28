{
  colorschemes.gruvbox.enable = true;

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
}
