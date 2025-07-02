{ pkgs, ... }: let
  setup-extensions = pkgs.writeShellScript "setup-extensions" ''
    mapfile extensions -t < ~/.config/gnome-extensions/extension-order

    dconf write /org/gnome/shell/disabled-extensions "'[]'"
    dconf write /org/gnome/shell/enabled-extensions "'[]'"

    # shellcheck disable=SC2068
    for e in ''${extensions[@]}; do
        gnome-extensions enable "$e"
        sleep 0.1
    done
  '';
in {
  systemd.user.services.setup-extensions = {
    Unit = {
      Description = "Disable and re-enable GNOME extensions in a specific order";
    };
    Install = {
      WantedBy = [ "org.gnome.Shell.target" ];
    };
    Service = {
      Type = "oneshot";
      RemainAfterExit = true;
      ExecStart = "${setup-extensions}";
    };
  };

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
    just-perfection
    middle-click-to-close-in-overview
    panel-corners
    pip-on-top
    # quick-settings-tweaker  # broken on GNOME 48 https://github.com/qwreey/quick-settings-tweaks/issues/197#issuecomment-2913560783
    reboottouefi
    transparent-window-moving
    user-avatar-in-quick-settings
    vitals
    weather-or-not
  ];
}
