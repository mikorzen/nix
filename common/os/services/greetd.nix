{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "tuigreet --time -r --remember-user-session --asterisks";
        user = "greeter";
      };
    };
  };

  # Stuff so that the boot log doesn't spill into tuigreet
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