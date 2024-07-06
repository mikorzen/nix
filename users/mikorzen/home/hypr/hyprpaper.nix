{ config, ... }: {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "${config.home.homeDirectory}/Pictures/Wallpapers/wall.png" ];
      wallpaper = [ ",${config.home.homeDirectory}/Pictures/Wallpapers/wall.png" ];
    };
  };
}