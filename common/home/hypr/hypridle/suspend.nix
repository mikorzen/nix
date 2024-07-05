{
  services.hypridle.settings.listener = [{
    timeout = 600;  # 10 min
    on-timeout = "systemctl suspend";
  }];
}