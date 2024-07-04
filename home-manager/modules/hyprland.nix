{
  imports = [
    ./hyprland/screen.nix
    ./hyprland/env.nix
    ./hyprland/input.nix
    ./hyprland/look.nix
    ./hyprland/binds.nix
    ./hyprland/exec.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };
      master = {
        new_status = "master";
      };
    };
  };
}