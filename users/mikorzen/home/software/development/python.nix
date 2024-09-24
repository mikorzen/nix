{ pkgs, ... }: {
  home.packages = with pkgs; [
    python3
    python312Packages.pip
    uv
  ];

  programs.ruff = {  # linter + formatter
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
