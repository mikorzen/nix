{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    # terminal
    fastfetch

    # editors
    vscode
    zed-editor

    # dev
    bun

    # fonts
    montserrat
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}