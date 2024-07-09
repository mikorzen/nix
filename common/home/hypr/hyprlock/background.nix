{ config, ... }: {
  programs.hyprlock.settings.background = {
    monitor = "";
    path = "${config.xdg.userDirs.pictures}/Wallpapers/lock.png";
    blur_passes = 2;
    blur_size = 5;
  };
}