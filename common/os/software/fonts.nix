{ pkgs, ... }: {
  fonts = {
    fontDir.enable = true;
    fontconfig.enable = true;
    packages = with pkgs; [
      (nerdfonts.override { fonts = [
        "FiraCode"
        "Iosevka"
      ]; })
      montserrat
      lato
      geist-font
      commit-mono
    ];
  };
}
