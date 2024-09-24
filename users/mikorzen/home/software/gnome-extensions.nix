{ pkgs, config, ... }: {
  systemd.user.services.setup-extensions = {
    Unit = {
      Description = "Disables all GNOME extensions, then enables them one by one in a specific order";
    };
    Install = {
      WantedBy = [ "org.gnome.Shell.target" ];
    };
    Service = {
      ExecStart = "${pkgs.reorder-extensions}/bin/reorder-extensions";
    };
  };

  home.packages = with pkgs.gnomeExtensions; [
    advanced-alttab-window-switcher
    appindicator
    autohide-battery
    bluetooth-battery-meter
    blur-my-shell
    caffeine
    custom-accent-colors
    dash-to-dock
    date-menu-formatter
    disconnect-wifi
    emoji-copy
    fuzzy-app-search
    gnome-40-ui-improvements
    gsnap
    just-perfection
    middle-click-to-close-in-overview
    panel-corners
    pip-on-top
    quick-settings-audio-panel
    quick-settings-tweaker
    reboottouefi
    transparent-window-moving
    user-avatar-in-quick-settings
    vitals
    weather-or-not
  ];
}