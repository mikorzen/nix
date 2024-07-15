{ inputs, pkgs, config, ... }: {
  imports = [
    inputs.ags.homeManagerModules.default
  ];

  home.packages = with pkgs; [
    glib          # needed for `gio trash` (cli trasher)
    hdrop         # run/show/hide windows in Hyprland
    hyprshot      # screenshots for Hyprland
    satty         # screenshot annotator
    wl-clipboard  # Wayland clipboard manager
    dust          # `du` alternative

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
    # fzf = {             # fuzzy finder
    #   enable = true;
    #   enableBashIntegration = false;
    #   enableFishIntegration = false;
    # };
    ags = {
      enable = true;
      configDir = null;
      extraPackages = with pkgs; [
        accountsservice
      ];
    };
  };
}
