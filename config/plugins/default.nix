{
  # Import all your configuration modules here
  imports = [ 
    ./telescope.nix
    #./treesitter.nix
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

    oil = {
      enable = true;
      lazyLoad.settings.cmd = "Oil";
    };

    
    lualine.enable = true;

    treesitter.enable = true;

    luasnip.enable = true;
  
    lsp = {
      enable = true;
      servers = {
        # javascript / typescript
        ts_ls.enable = true;
        # lua
        lua_ls.enable = true;
        # python
        pyright.enable = true;
        # C++
        clangd.enable = true;
      };
    };
  };
}

