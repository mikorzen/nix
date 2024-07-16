{
  programs.ruff = {
    enable = true;
    settings = {
      fix = true;
      format = {
        docstring-code-format = true;
      };
      lint = {
        select = [ "ALL" ];
      };
    };
  };
}
