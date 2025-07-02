{ pkgs, ... }: {
  home.packages = with pkgs.gnomeExtensions; [
    advanced-alttab-window-switcher
    appindicator
    autohide-battery
    bluetooth-battery-meter
    blur-my-shell
    caffeine
    # custom-accent-colors  # not available for GNOME 48
    dash-to-dock
    date-menu-formatter
    # disconnect-wifi  # not available for GNOME 48
    emoji-copy
    fuzzy-app-search
    gnome-40-ui-improvements
    just-perfection
    middle-click-to-close-in-overview
    panel-corners
    pip-on-top
    quick-settings-audio-panel
    # quick-settings-tweaker  # broken on GNOME 48
    reboottouefi
    transparent-window-moving
    user-avatar-in-quick-settings
    vitals
    weather-or-not
  ];
}
