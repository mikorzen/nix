{ pkgs, ... }: {
  home.packages = with pkgs; [
    ## miscellaneous
    metadata-cleaner
    gnome-decoder  # QR code scanner
    impression     # pendrive flasher
    eyedropper     # color picker
    collision      # hash checker
    fragments      # torrent client
    
    ## essentials
    gnome-extension-manager
    mission-center  # system monitor
    gnome-tweaks
    junction        # application picker

    ## naming and categorizing stuff is hard
    protonvpn-gui  # VPN
    parsec-bin     # remote desktop
    bottles        # Wine containers
  ];
}
