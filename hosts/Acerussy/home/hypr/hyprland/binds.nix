{
  wayland.windowManager.hyprland.settings = {
    bind = [
      # Brightness control (depends on brightnessctl)
      ", XF86MonBrightnessDown, exec, brightnessctl set 10%-"
      ", XF86MonBrightnessUp,   exec, brightnessctl set +10%"
    ];
  };
}
