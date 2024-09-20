{ pkgs, ... }: {
  imports = [
    ./applications/mediaTools.nix
    ./applications/miscellaneous.nix
  ];

  home.packages = with pkgs; [
    ## essentials
    warp-terminal

    ## entertainment
    cartridges  # game launcher
    stremio     # movie/series streaming
    discord     # (voice)chat

    ## utilities
    gnome-extension-manager
    gnome-tweaks
    bottles          # Windows containers
    # parsec-bin     # remote desktop
    ## no worky
    # protonvpn-gui  # VPN
    # networkmanagerapplet  # needed for ProtonVPN
  ];
}
