{ pkgs, ... }: {
  home.packages = with pkgs; [
    loupe  # image viewer
  ];

  programs = {
    vscode.enable = true;  # code editor
  };
}