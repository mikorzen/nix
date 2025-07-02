{ pkgs, ... }: {
  home.packages = with pkgs; [
    ## essentials
    gnome-extension-manager
    gnome-tweaks
    junction        # application picker
    mission-center  # system monitor

    ## miscellaneous (gnome-circle)
    collision      # hash checker
    eyedropper     # color picker
    fragments      # torrent client
    gnome-decoder  # QR code scanner
    metadata-cleaner

    ## miscellaneous (3rd party)
    protonvpn-gui  # VPN
    sunshine       # remote desktop/streaming
  ];
}
