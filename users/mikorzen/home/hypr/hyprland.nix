{
  imports = [
    ./hyprland/binds.nix
  ];

  wayland.windowManager.hyprland.settings.exec-once = [ "hyprpaper" ];
}