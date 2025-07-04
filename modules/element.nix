{
  pkgs,
  lib,
  imports,
  ...
}:
{
  programs.element-desktop = {
    enable = true;
    package = pkgs.element-desktop.overrideAttrs {
      # ref. https://github.com/fabiospampinato/atomically/issues/13
      postFixup = ''
        substituteInPlace \
          $out/share/element/electron/node_modules/atomically/dist/constants.js \
          --replace-fail "os.userInfo().uid;" "process.geteuid();" \
          --replace-fail "os.userInfo().gid;" "process.getegid();"
      '';
    };
  };

  shellAliases = {
    element-desktop = "element-desktop --no-sandbox";
  };
}
