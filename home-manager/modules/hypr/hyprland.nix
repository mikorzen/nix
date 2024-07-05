{
  imports = [
    ./hyprland/screen.nix
    # ./hyprland/envars.nix
    ./hyprland/input.nix
    ./hyprland/look.nix
    ./hyprland/binds.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      exec-once = [ "ags" "hyprpaper" ];
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