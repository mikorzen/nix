{ 
  wayland.windowManager.hyprland.settings = {
    general = { 
      gaps_in = 5;
      gaps_out = 15;

      "col.active_border" = "rgba(ffff00ee) rgba(ff7900ee) 135deg";
      "col.inactive_border" = "rgba(595959aa)";
      resize_on_border = true;

      allow_tearing = false;
      layout = "dwindle";
    };

    decoration = {

      rounding = 12;
      active_opacity = 1.0;
      inactive_opacity = 1.0;

      shadow_range = 8;

      dim_inactive = true;
      dim_strength = 0.3;

      blur = {
        enabled = true;
        size = 5;
      };
    };

    animations = {
      enabled = true;
      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
      animation = [
        "windows,     1, 7,  myBezier"
        "windowsOut,  1, 7,  default, popin 80%"
        "border,      1, 10, default"
        "borderangle, 1, 8,  default"
        "fade,        1, 7,  default"
        "workspaces,  1, 6,  default"
      ];
    };

    misc = { 
      force_default_wallpaper = 0;
      disable_splash_rendering = true;
      disable_hyprland_logo = true;
      focus_on_activate = true;
    };
  };
}