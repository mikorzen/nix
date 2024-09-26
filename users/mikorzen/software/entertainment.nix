{ pkgs, ... }: {
  home.packages = with pkgs; [
    prismlauncher  # minecraft
    protonup-qt    # proton manager
    cartridges     # game launcher
    lutris         # game launcher (wine/proton stuff)

    vesktop  # (voice)chat (3rd-party discord client)

    microsoft-edge  # for Netflix and GeForce NOW
    stremio         # movie/series streaming
  ];
}
