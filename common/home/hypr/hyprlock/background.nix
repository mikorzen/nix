{ config, ... }: {
  programs.hyprlock.settings.background = {
    monitor = "";
    path = "${config.home.homeDirectory}/Pictures/Wallpapers/lock.png";
    blur_passes = 2;
    blur_size = 5;
  };
}