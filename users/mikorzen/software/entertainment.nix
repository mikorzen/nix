{ pkgs, ... }: {
  home.packages = with pkgs; [
    ## gaming
    cartridges     # game launcher (purely for looks)
    lutris         # game launcher (wine/proton stuff)
    prismlauncher  # minecraft
    # protonup-qt    # proton manager

    ## comms
    (discord.override {
      withOpenASAR = true;
      withVencord = true;
    })

    ## movies & shows
    microsoft-edge  # for Netflix, Max and GeForce NOW
    # stremio         # movie/series streaming | qtwebengine marked as insecure
  ];
}
