{ pkgs, ... }: {
  home.packages = with pkgs; [
    collision       # hash checker
    commit          # commit message editor
    gnome-decoder   # QR code scanner
    fragments       # torrent client
    impression      # pendrive flasher
    junction        # application picker
    mission-center  # system monitor
    metadata-cleaner
  ];
}
