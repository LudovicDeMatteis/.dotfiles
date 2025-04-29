{
  # Import all your configuration modules here
  imports = [ 
    ./telescope.nix
    ./bufferline.nix
    ./oil.nix
    ./cmp.nix
    ./treesitter.nix
    ./lsp.nix
    ./which-key.nix
    ./markdown-preview.nix
    ./autopairs.nix
    #./vimtex.nix
    #./neo-tree.nix
    ./lualine.nix
    ./colorizer.nix
    #./lsp.nix
    ./harpoon.nix
    # ./floaterm.nix
    # ./comment.nix
    # ./barbar.nix
  ];

  plugins = {
    # lz-n.enable = true;

    web-devicons.enable = true;

    gitsigns = {
      enable = true;
      settings.signs = {
        add.text = "+";
        change.text = "~";
      };
    };

    luasnip.enable = true;
  };
}

