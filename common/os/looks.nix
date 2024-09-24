{ pkgs, ... }: {
  fonts = {
    fontDir.enable = true;
    fontconfig.enable = true;
    packages = with pkgs; [
      (nerdfonts.override { fonts = [ "FiraCode" "Iosevka" ]; })
      montserrat
      lato
      geist-font
      commit-mono
    ];
  };

  environment.systemPackages = with pkgs; [
    # cursor themes
    bibata-cursors
    oreo-cursors-plus

    # icon themes
    papirus-icon-theme
    morewaita-icon-theme

    # gtk3 themes
    adw-gtk3
  ];
}
