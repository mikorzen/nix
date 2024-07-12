{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        user = "greeter";
        command = ''
          tuigreet \
            --time --time-format "%A, %-e %B • %H:%M" \
            --greeting "▄█ student debil █▄" \
            --window-padding 1 --container-padding 2 \
            --remember --remember-user-session --asterisks \
            --theme "border=lightcyan;text=lightcyan;prompt=lightgreen;time=lightred;action=lightcyan;button=lightyellow;container=red;input=lightred"
        '';
      };
    };
  };

  # Stuff so that the boot log doesn't spill into tuigreet (not needed with plymouth and quiet boot)
  # systemd.services.greetd.serviceConfig = {
  #   Type = "idle";
  #   StandardInput = "tty";
  #   StandardOutput = "tty";
  #   StandardError = "journal";
  #   TTYReset = true;
  #   TTYVHangup = true;
  #   TTYVTDisallocate = true;
  # };
}
