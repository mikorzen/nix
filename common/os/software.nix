{ pkgs, ... }: {
  imports = [
    ./software/containers.nix
    ./software/fonts.nix
    ./software/greetd.nix
    ./software/pipewire.nix
    ./software/resolved.nix
  ];

  environment.systemPackages = with pkgs; [
    greetd.tuigreet    # login manager
    blackbox-terminal  # terminal
    nautilus           # file manager
    firefox            # browser

    # for podman (containers)
    dive
    podman-tui
    podman-compose
  ];

  programs = {
    hyprland.enable = true;  # window manager
    fish.enable = true;      # shell
    git.enable = true;       # git (that's crazy)
    dconf.enable = true;     # GNOME-adjacent settings editor
    nh.enable = true;        # nix helper
  };

  services = {
    printing.enable = true;  # printing
    fstrim.enable = true;    # weekly SSD TRIM (I think)
    gvfs.enable = true;      # filesystem support for Nautilus (Trash, etc.)
    power-profiles-daemon.enable = true;  # power profiles
    flatpak.enable = true;   # apps in containers
  };
}
