{ pkgs, ... }: {
  home.packages = with pkgs; [
    prismlauncher  # minecraft
    cartridges     # game launcher
    lutris         # game launcher (wine/proton stuff)

    vesktop  # (voice)chat (3rd-party discord client)

    stremio  # movie/series streaming
  ];
}
