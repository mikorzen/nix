{
  services.hypridle.settings.listener = [{
    timeout = 300;  # 5 min
    on-timeout = "loginctl lock-session";
  }];
}
