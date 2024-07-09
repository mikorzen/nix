{
  imports = [
    ./hyprland/animations.nix
    ./hyprland/binds.nix
    ./hyprland/decoration.nix
    ./hyprland/general.nix
    ./hyprland/input.nix
    ./hyprland/layout.nix
    ./hyprland/misc.nix
    ./hyprland/plugins.nix
    ./hyprland/screen.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings.exec-once = [ "ags" ];
  };
}