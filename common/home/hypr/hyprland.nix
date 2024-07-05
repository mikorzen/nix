{
  imports = [
    ./hyprland/binds.nix
    ./hyprland/input.nix
    ./hyprland/layout.nix
    ./hyprland/look.nix
    ./hyprland/screen.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings.exec-once = [ "hyprpaper" "ags" ];
  };
}