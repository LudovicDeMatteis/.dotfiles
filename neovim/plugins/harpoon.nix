{
  programs.nixvim.plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    autoLoad = true;
    settings = {
      save_on_toggle = true;
      sync_on_ui_close = true;
    };
  };    
  keymaps = [
       { mode = "n"; key = "<leader>a"; action.__raw = "function() require'harpoon':list():add() end"; options.silent=true;}
       { mode = "n"; key = "<C-e>"; action.__raw = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end"; options.silent = true;}
       { mode = "n"; key = "<C-j>"; action.__raw = "function() require'harpoon':list():select(1) end"; options.silent = true;}
       { mode = "n"; key = "<C-k>"; action.__raw = "function() require'harpoon':list():select(2) end"; options.silent = true;}
       { mode = "n"; key = "<C-l>"; action.__raw = "function() require'harpoon':list():select(3) end"; options.silent = true;}
       { mode = "n"; key = "<C-m>"; action.__raw = "function() require'harpoon':list():select(4) end"; options.silent = true;}
     ];
}
