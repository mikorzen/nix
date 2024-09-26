{ lib, config, ... }: {
  #! remember to reflect desirable changes in respective
  #! `./users/<username>/personalization.nix`
  imports = [
    ./personalization/fonts.nix

    ./personalization/cursor-theme.nix
    ./personalization/gtk-theme.nix
    ./personalization/icon-theme.nix

    ./personalization/scaling.nix
  ];

  programs.dconf.profiles.gdm.databases = [{
    settings = {
      "org/gnome/desktop/interface" = {
        clock-show-seconds = true;
        clock-show-weekday = true;
        cursor-theme = config.personalization.cursorTheme.name;
        cursor-size = config.personalization.cursorTheme.size;
        gtk-theme = config.personalization.gtkTheme.name;
        icon-theme = config.personalization.iconTheme.name;
      };
      "org/gnome/desktop/peripherals/mouse" = {
        accel-profile = "flat";
        left-handed = true;
      };
      "org/gnome/desktop/session" = {
        idle-delay = lib.gvariant.mkUint32 30;
      };
      "org/gnome/settings-daemon/plugins/power" = {
        power-button-action = "suspend";
        sleep-inactive-ac-timeout = lib.gvariant.mkInt32 300;
        sleep-inactive-battery-timeout = lib.gvariant.mkInt32 60;
      };
      "org/gnome/mutter" = {
        experimental-features = [ "scale-monitor-framebuffer" ];
      };
    };
  }];
}
