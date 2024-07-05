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
    git-credential-oauth
    bun

    # stuff
    discord

    # fonts
    montserrat
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}