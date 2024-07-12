{
  services.hypridle.settings.listener = [{
    timeout = 330;  # 5.5 min
    on-timeout = "hyprctl dispatch dpms off";
    on-resume = "hyprctl dispatch dpms on";
  }];
}
