{
  programs.nixvim.plugins = {
    lint = {
      enable = false;
      lintersByFt = {
        text = ["vale"];
        markdown = ["vale"];
        dockerfile = ["hadolint"];
        terraform = ["tflint"];
        python = ["pflake8"];
      };
    };
  };
}
