{ pkgs, ... }: {
  home.packages = with pkgs; [
    loupe    # image viewer
  ];
}