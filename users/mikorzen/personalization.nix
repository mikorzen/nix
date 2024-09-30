{ lib, config, ... }: {
  #! remember to reflect desirable changes in respective
  #! `./hosts/default/personalization.nix`
  imports = [
    ./personalization/cursor-theme.nix
    ./personalization/gtk-theme.nix
    ./personalization/icon-theme.nix
  ];

  gtk = {
    enable = true;
    cursorTheme = config.personalization.cursorTheme;
    theme = config.personalization.gtkTheme;
    iconTheme = config.personalization.iconTheme;
  };

  dconf.settings = {
    "org/gnome/system/locale" = {
      region = "pl_PL.UTF-8";
    };
    "org/gnome/desktop/interface" = {
      clock-show-seconds = true;
      clock-show-weekday = true;
    };
    "org/gnome/desktop/peripherals/mouse" = {
      accel-profile = "flat";
      left-handed = true;
    };
    "org/gnome/desktop/session" = {
      idle-delay = lib.gvariant.mkUint32 180;
    };
    "org/gnome/desktop/interface" = {
      enable-hot-corners = false;
    };
    "org/gnome/settings-daemon/plugins/power" = {
      power-button-action = "suspend";
      sleep-inactive-ac-timeout = lib.gvariant.mkInt32 900;
      sleep-inactive-battery-timeout = lib.gvariant.mkInt32 300;
    };
    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
    };
    "org/gnome/desktop/wm/keybindings" = {
      switch-applications = [ "<Super>Tab" ];
      switch-applications-backward = [ "<Shift><Super>Tab" ];
      switch-windows = [ "<Alt>Tab" ];
      switch-windows-backward = [ "<Shift><Alt>Tab" ];
    };
    "org/gnome/settings-daemon/plugins/media-keys" = {
      home = [ "<Super>e" ];
      www = [ "<Super>b" ];
    };
    "org/gnome/mutter" = {
      center-new-windows = true;
      edge-tiling = true;
      experimental-features = [ "scale-monitor-framebuffer" ];
    };
  };
}
