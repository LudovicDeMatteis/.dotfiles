{
  programs.nixvim.plugins.luasnip = {
    enable = true;
    settings = {
      enable_autosnippets = true;
    };
    fromLua = [
      {
        paths = ./snippets;
      }
    ];
  };
}
