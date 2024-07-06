{ pkgs, ... }: {
  home.packages = with pkgs; [
    (warp-terminal.override { waylandSupport = true; })  # terminal
    microsoft-edge  # browser

    discord
  ];
}