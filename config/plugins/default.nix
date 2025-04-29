{
  # Import all your configuration modules here
  imports = [ 
    ./telescope.nix
    ./bufferline.nix
    ./oil.nix
    ./cmp.nix
    ./treesitter.nix
    ./lsp.nix
    #./vimtex.nix
    #./startify.nix
    #./neo-tree.nix
    #./neorg.nix
    #./mardown-preview.nix
    #./lualine.nix
    #./lsp.nix
    #./harpoon.nix
    #./floaterm.nix
    #./comment.nix
    #./barbar.nix
  ];

  plugins = {
    lz-n.enable = true;

    web-devicons.enable = true;

    gitsigns = {
      enable = true;
      settings.signs = {
        add.text = "+";
        change.text = "~";
      };
    };

    nvim-autopairs.enable = true;

    colorizer = {
      enable = true;
      settings.user_default_options.names = false;
    };

    lualine.enable = true;

    luasnip.enable = true;

    todo-comments = {
      enable = true;
      settings.signs = true;
    };

  };
}

