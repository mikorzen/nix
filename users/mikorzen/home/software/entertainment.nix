{ pkgs, ... }: {
  home.packages = with pkgs; [
    vesktop  # (voice)chat (3rd-party discord client)

    cartridges     # game launcher
    prismlauncher  # minecraft

    stremio  # movie/series streaming
  ];
}