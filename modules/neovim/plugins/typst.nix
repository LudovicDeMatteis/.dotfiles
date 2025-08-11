{
  pkgs,
  ...
}:
{
  programs.nixvim.plugins = {
    typst-preview = {
      enable = true;
      settings = {
        debug = true;
        dependencies_bin = {
          tinymist = "tinymist";
          websocat = "websocat";
        };
        port = 8000;
        open_cmd = "firefox %s";
      };
    };

    typst-vim = {
      enable = true;
      settings = {
        auto_open_quickfix = false;
        pdf_viewer = "zathura";
        typst_syntax_highlight = false;
      };
    };
    lsp.servers.tinymist = {
      enable = true;
      settings.formatterMode = "typstyle";
    };
  };

  home.packages = with pkgs; [
    typst
    typstyle
  ];
}
