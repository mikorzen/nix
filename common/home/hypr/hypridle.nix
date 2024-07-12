{
  imports = [
    ./hypridle/low-brightness.nix  # 3 min   • 10% screen brightness
    ./hypridle/lock.nix            # 5 min   • lock session
    ./hypridle/screen-off.nix      # 5.5 min • screen off
    ./hypridle/suspend.nix         # 10 min  • suspend
  ];

  services.hypridle = {
    enable = true;
    settings = {
      general = {
        lock_cmd = "pidof hyprlock || hyprlock";
        before_sleep_cmd = "loginctl lock-session";
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };
    };
  };
}
