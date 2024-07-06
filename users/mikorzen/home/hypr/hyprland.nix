{
  imports = [
    ./hyprland/binds.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings.exec-once = [ "hyprpaper" "ags" ];
  };
}