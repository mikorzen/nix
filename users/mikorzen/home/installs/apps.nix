{ pkgs, ... }: {
  home.packages = with pkgs; [
    ## essentials
    (warp-terminal.override { waylandSupport = true; })  # terminal
    microsoft-edge  # browser
    mission-center  # system monitor
    # resources       # system monitor

    ## media tools
    # video, recording
    obs-studio     # screen recorder
    kooha          # screen recorder
    clapper        # player
    parabolic      # downloader
    video-trimmer  # trimmer/editor
    # images, pictures
    switcheroo     # manipulator
    imagemagick    # switcheroo dependency
    curtail        # compressor
    identity       # comparator
    frog           # OCR (image to text)
    # audio
    decibels       # player
    # text
    textpieces     # text dev tool
    pdfarranger    # PDF manipulation

    ## utilities
    cartridges     # game launcher
    collision      # hash checker
    commit         # commit message editor
    gnome-decoder  # QR code scanner
    fragments      # torrent client
    impression     # pendrive flasher
    junction       # application picker
    gradience      # theme gradient manager
    metadata-cleaner

    ## apps
    stremio        # movie/series streaming
    discord
    protonvpn-gui  # VPN
    parsec-bin     # remote desktop
  ];
}
