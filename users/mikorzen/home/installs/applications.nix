{ pkgs, ... }: {
  imports = [
    ./applications/mediaTools.nix
    ./applications/miscellaneous.nix
  ];

  home.packages = with pkgs; [
    ## essentials
    (warp-terminal.override { waylandSupport = true; })  # terminal
    microsoft-edge  # browser

    ## entertainment
    cartridges  # game launcher
    stremio     # movie/series streaming
    discord     # (voice)chat

    ## utilities
    bottles        # Windows containers
    parsec-bin     # remote desktop
    protonvpn-gui  # VPN
  ];
}
