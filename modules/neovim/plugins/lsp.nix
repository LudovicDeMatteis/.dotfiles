{
  programs.nixvim.plugins = {
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
