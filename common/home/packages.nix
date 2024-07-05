{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    # stuff
    discord

    # fonts
    montserrat
    lato
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}