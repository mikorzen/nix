{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    # editors
    zed-editor

    # stuff
    discord

    # fonts
    montserrat
    lato
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}