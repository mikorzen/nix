{ config, ... }: {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "${config.xdg.userDirs.pictures}/Wallpapers/wall.png" ];
      wallpaper = [ ",${config.xdg.userDirs.pictures}/Wallpapers/wall.png" ];
    };
  };
}
