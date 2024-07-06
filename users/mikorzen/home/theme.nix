{
  imports = [
    ./theme/cursors.nix
    ./theme/font.nix
    ./theme/gtk3Theme.nix
    ./theme/iconTheme.nix
  ];

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
      };
    };
  };

  gtk = {
    enable = true;
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };
}