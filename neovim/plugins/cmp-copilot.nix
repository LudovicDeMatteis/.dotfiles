{
  programs.nixvim = {
    plugins.copilot-lua = {
      settings = {
        copilot = {
          suggestion = {
            enabled = false;
          };
          panel = {
            enabled = false;
          };
        };
      };
    };

    plugins.copilot-cmp = {
      enable = true;
    };

    extraConfigLua = ''
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    '';
  };
}
