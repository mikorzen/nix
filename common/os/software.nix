{ pkgs, config, ... }: {
  imports = [
    # ./software/containers.nix
    ./software/gnome.nix
    ./software/flatpak.nix
    ./software/fonts.nix
    ./software/pipewire.nix
    ./software/resolved.nix
  ];

  environment.systemPackages = with pkgs; [
    blackbox-terminal  # terminal

    # cursors for flatpak apps
    # posy-cursors

    # icons for flatpak apps
    # adwaita-icon-theme
    # morewaita-icon-theme

    # for podman (containers)
    # dive
    # podman-tui
    # podman-compose
  ];

  programs = {
    fish.enable = true;      # shell
    git.enable = true;       # git (that's crazy)
    steam.enable = true;     # gaming
    nh = {
      enable = true;
      flake = "${config.users.users."mikorzen".home}/.nix/";
    };
  };

  services = {
    printing.enable = true;  # printing
    fstrim.enable = true;    # weekly SSD TRIM (I think)
  };
}
