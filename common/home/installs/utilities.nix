{ pkgs, ... }: {
  home.packages = with pkgs; [
    glib          # needed for `gio trash` (cli trasher)
    hdrop         # run/show/hide windows in Hyprland
    wl-clipboard  # Wayland clipboard manager
    dust          # `du` alternative
    btop          # `htop` alternative

    # ags dependencies
    swww
    matugen
    dart-sass
  ];


  programs = {
    eza = {             # `ls` alternative
      enable = true;
      enableBashIntegration = false;
      enableFishIntegration = false;
    };
    bat.enable = true;  # `cat` alternative
    fd = {              # `find` alternative
      enable = true;
      hidden = true;
    };
  };
}
