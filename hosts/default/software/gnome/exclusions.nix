{ pkgs, ... }: {
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];

  environment.gnome.excludePackages = with pkgs; [
    gnome-console
    gnome-disk-utility
    gnome-system-monitor
    gnome-connections
    gnome-contacts
    gnome-maps
    gnome-music
    gnome-tour
    epiphany  # web browser
    evince    # document viewer
    geary     # email reader
    totem     # video player
    yelp      # help viewer
  ];
}