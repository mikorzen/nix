{
  services.hypridle.settings.listener = [{
    timeout = 180;  # 3 min
    on-timeout = "brightnessctl -s set 10";
    on-resume = "brightnessctl -r";
  }];
}
