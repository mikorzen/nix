{ pkgs, ... }: {
  wayland.windowManager.hyprland = {
    plugins = [ pkgs.hyprlandPlugins.hyprexpo ];

    settings = {
      bind = [
        "$mainMod, W, hyprexpo:expo, toggle"
      ];

      plugin.hyprexpo = {
        columns = 3;
        gap_size = 10;
        bg_col = "rgb(111111)";
        workspace_method = "center current"; # [center/first] [workspace] e.g. first 1 or center m+1

        # laptop
        enable_gesture = true;
        gesture_fingers = 3;
        gesture_distance = 200; # how far is the "max"
        gesture_positive = true; # positive = swipe down. Negative = swipe up.
      };
    };
  };
}