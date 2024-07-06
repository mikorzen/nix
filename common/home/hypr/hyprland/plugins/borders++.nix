{ pkgs, ... }: {
  wayland.windowManager.hyprland = {
    plugins = [ pkgs.hyprlandPlugins.borders-plus-plus ];

    settings.plugin.borders-plus-plus = {
      add_borders = 1; # 0 - 9
      "col.border_1" = "rgb(111111)";
      border_size_1 = 4;
      natural_rounding = false;
    };
  };
}