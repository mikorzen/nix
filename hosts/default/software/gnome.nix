{ pkgs, ... }: {
  services = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  environment.gnome.excludePackages = with pkgs; [
    gnome-connections
    gnome-console
    gnome-contacts
    gnome-disk-utility
    gnome-maps
    gnome-music
    gnome-system-monitor
    gnome-tour
    epiphany  # web browser
    evince    # document viewer
    geary     # email reader
    totem     # video player
    yelp      # help viewer
  ];
}
