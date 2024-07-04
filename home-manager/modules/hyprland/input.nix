{
  wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = "pl";

      follow_mouse = 1;
      
      sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
      accel_profile = "flat";
      left_handed = true;
      touchpad = {
        natural_scroll = true;
      };
    };

    gestures = {
      workspace_swipe = true;
    };
  };
}