{ pkgs, ... }: {
  home.packages = with pkgs; [
    (warp-terminal.override { waylandSupport = true; })  # terminal
    microsoft-edge  # browser

    switcheroo   # image manipulation
    imagemagick  # switcheroo dependency
    curtail      # image compression

    discord
    ffmpeg_7-full
  ];
}
