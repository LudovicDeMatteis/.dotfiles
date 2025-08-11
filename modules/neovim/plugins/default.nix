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
    #./neo-tree.nix
    ./lualine.nix
    ./colorizer.nix
    ./conform.nix
    # ./harpoon.nix
    ./trouble.nix
    ./noice.nix
    ./lint.nix
    ./lspkind.nix
    ./vimtex.nix
    ./typst.nix
    ./luasnip.nix
    ./lspsaga.nix
    # ./python.nix
  ];

  programs.nixvim.plugins = {
    lz-n.enable = true;

    web-devicons.enable = true;

    gitsigns = {
      enable = true;
      settings.signs = {
        add.text = "+";
        change.text = "~";
      };
    };

    luasnip.enable = true;
    nix.enable = true;
    lazygit.enable = true;
  };
}

