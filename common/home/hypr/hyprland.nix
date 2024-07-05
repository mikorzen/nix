{
  imports = [
    ./hyprland/binds.nix
    ./hyprland/input.nix
    ./hyprland/look.nix
    ./hyprland/screen.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      exec-once = [ "hyprpaper" ];  # "ags"
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