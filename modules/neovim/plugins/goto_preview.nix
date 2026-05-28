{
  programs.nixvim.plugins.goto-preview = {
    enable = true;
    settings = {
      default_mappings = false;
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>gd";
      action = ":lua require('goto-preview').goto_preview_definition()<CR>";
      options.desc = "Open preview definition";
    }
    {
      mode = "n";
      key = "<leader>gtd";
      action = ":lua require('goto-preview').goto_preview_type_definition()<CR>";
      options.desc = "Open preview type definition";
    }
    {
      mode = "n";
      key = "<leader>gr";
      action = ":lua require('goto-preview').goto_preview_references()<CR>";
      options.desc = "Open preview references";
    }
    {
      mode = "n";
      key = "<leader>gq";
      action = ":lua require('goto-preview').close_all_win()<CR>";
      options.desc = "Close all GoTo Preview windows";
    }
    {
      mode = "n";
      key = "<leader>gD";
      action = ":lua require('goto-preview').goto_preview_declaration()<CR>";
      options.desc = "Open preview declaration";
    }
    {
      mode = "n";
      key = "<leader>gi";
      action = ":lua require('goto-preview').goto_preview_implementation()<CR>";
      options.desc = "Open preview implementation";
    }
  ];
}
