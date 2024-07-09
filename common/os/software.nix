{ pkgs, ... }: {
  imports = [
    ./software/fonts.nix
    ./software/greetd.nix
    ./software/pipewire.nix
    ./software/resolved.nix
  ];

  environment.systemPackages = with pkgs; [
    greetd.tuigreet    # login manager
    blackbox-terminal  # terminal
    gnome.nautilus     # file manager                 
    firefox            # browser
  ];

  programs = {
    hyprland.enable = true;  # window manager
    fish.enable = true;      # shell
    git.enable = true;       # git (thats crazy)
    dconf.enable = true;     # GNOME-adjacent settings editor
    nh.enable = true;        # nix helper
    flatpak.enable = true;   # apps in containers
  };

  services = {
    printing.enable = true;  # printing
    fstrim.enable = true;    # weekly SSD TRIM (I think)
    gvfs.enable = true;      # filesystem support for Nautilus (Trash, etc.)
    power-profiles-daemon.enable = true;  # power profiles
  };
}