{ pkgs, ... }: {
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "tuigreet --time --cmd Hyprland";
        user = "greeter";
      };
    };
  };
  
  # Seamless configuration
  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal";
    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };
}