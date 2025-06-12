{inputs, ...}:
{
  # Import all your configuration modules here
  imports = [ 
    inputs.nixvim.homeManagerModules.nixvim
    ./plugins
    ./keymaps.nix
    ./options.nix
  ];

  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    nixpkgs.useGlobalPackages = true;

    # performance = {
    #   combinePlugins = {
    #     enable = true;
    #     standalonePlugins = [
    #       "hmts.nvim"
    #       "neorg"
    #       "nvim-treesitter"
    #     ];
    #   };
    #   byteCompileLua.enable = true;
    # };

    viAlias = true;
    vimAlias = true;

    luaLoader.enable = true;
  };
}
